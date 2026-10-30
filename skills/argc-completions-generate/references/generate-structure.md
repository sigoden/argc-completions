# Generate-structure and regenerate workflow

Generate-structure turns help/man text into JSON fragments and rebuilds only the `SPEC` block via `<SKILL_ROOT>/scripts/assemble.sh`; regenerate is the same with a cache reset. Write scope is in §2, assembly in §7, and handoff in §8.

## 1. Preflight

```sh
bash <SKILL_ROOT>/scripts/preflight.sh <root> [--output <file>] [--completion <file>]
```

It prints absolute `key=value` lines; the values used below are `existing`, `blocks`, `cache_dir`, `completion_file`, `os`, and `root_help_exists`.

- `<root>` is required here.
- It does not create `<REPO_ROOT>/cache/compile/<root>`.
- It already runs `require_pipeline_tools` and checks `command -v <root>`; both checks are already done, and the compile child alone fetches `--help`/`--version`.
- Do not inspect `<REPO_ROOT>/completions/` with `ls`/`grep`/`sed`/`find`: `preflight` reports `existing`/`completion_file`/`blocks`, and `command -v` answers tool availability.
- `existing=0` and `blocks=missing` mean no script yet: skip context extraction and pass empty context. `blocks=legacy` means no block markers; assemble can migrate once.
- Prefer `<REPO_ROOT>/completions/<os>/<root>.sh` when it already exists, otherwise the common path.

Create the cache directory after preflight (regenerate creates it in §2):

```sh
mkdir -p "$cache_dir"
```

## 2. Cache, reset, and the root help probe

Fragments and canonical help text live under `<REPO_ROOT>/cache/compile/<root>/`:

```text
<REPO_ROOT>/cache/compile/<root>/_root.json           root fragment
<REPO_ROOT>/cache/compile/<root>/_root.txt            canonical root help (cache key)
<REPO_ROOT>/cache/compile/<root>/_root.new.txt        fresh root help during the probe (removed after)
<REPO_ROOT>/cache/compile/<root>/<sub>.json           first-level fragment
<REPO_ROOT>/cache/compile/<root>/<sub>.txt            its canonical help
<REPO_ROOT>/cache/compile/<root>/<sub>/<nested>.json  nested fragment
```

That list is exhaustive: a capture or probe dump lives outside the directory, and `_root.new.txt` exists only while a root probe runs (`<SKILL_ROOT>/agents/compile.md` §1–§2).

Each command node has one fragment. A parent lists its children in `subcommands`, each with a `status` of `todo`, `succeeded`, or `failed`; `todo` blocks assembly, `failed` needs a minimal fragment and warns. This is the only supported fragment directory: only `<REPO_ROOT>/cache/compile/<root>/` is writable, and other cache subdirectories belong to other workflows. Assembly may migrate a legacy tail once, after which run `<SKILL_ROOT>/scripts/format-choices.sh <completion.sh>` before verify.

### Reset (regenerate only)

Run it after preflight, before any compile child. It prints `key=value` lines; parse `mode`, `path`, `cache_dir`, `fragment`, `help`, and `parent_fragment`.

```sh
bash <SKILL_ROOT>/scripts/reset-cache.sh <root>              # full reset
bash <SKILL_ROOT>/scripts/reset-cache.sh <root> <sub...>     # subtree reset
```

A subtree reset deletes the target and its descendants and sets the parent entry to `todo`; a full reset clears the root cache. Ignore a pre-reset `root_help_exists=1`; remove cache entries only through the script. A reset is cache-only, with no backup.

A subtree reset accepts canonical names only; an alias fails with the canonical name in the error, so re-run with it. Use a full reset when parent metadata (`description`, `aliases`) or the subcommand set changes.

The completion script is not deleted: `HINTS` and `CHOICES` are preserved and existing `choice_fn` bindings are inherited from it.

### Probe and orchestrator actions

A full `regenerate` starts empty and the root child reports `cache=new`; `hit`/`miss` means the reset failed: stop and re-run `<SKILL_ROOT>/scripts/reset-cache.sh` before assembling. Recompile every node: no `succeeded` fragment is reused, and assembly follows only after every node compiles from fresh help.

A subtree `regenerate` skips the root probe: the target is dispatched directly with `cache=n/a`; siblings keep their status and fragments. Extract context only when `existing=1`, dispatch one child, validate it, set the parent entry to `succeeded`, then process the target's `subcommands` breadth-first with the normal queue, retry, and depth limits.

The root child probes per `<SKILL_ROOT>/agents/compile.md` §2 and reports `cache` plus the subcommand summary. `<REPO_ROOT>/cache/compile/<root>/_root.txt` is the cache key: `<SKILL_ROOT>/scripts/compare-help.sh` canonicalizes both files; everything else must match byte-for-byte. Keep `_root.txt` unchanged on a hit.

Orchestrator actions:

- `hit`: reuse every valid `succeeded` fragment, enqueue `todo` nodes only, and report `failed` warnings. A hit does not migrate fragments after a schema change; run `regenerate`.
- `miss`: the fresh `_root.json` and `_root.txt` are the root input. Delete every other entry:

  ```sh
  find "$cache_dir" -mindepth 1 -maxdepth 1 \
    ! -name '_root.json' ! -name '_root.txt' ! -name '_root.new.txt' -exec rm -rf {} +
  ```

  Then enqueue every subcommand from the new root fragment.
- `new`: compile the whole tree.
- `unknown`: stop and report without assembling.

## 3. Validate fragments

Validate every fragment:

```sh
jq -e -f <SKILL_ROOT>/scripts/validate-fragment.jq --arg key '<root>' <REPO_ROOT>/cache/compile/<root>/_root.json
jq -e -f <SKILL_ROOT>/scripts/validate-fragment.jq --arg key '<root>|<sub>' <REPO_ROOT>/cache/compile/<root>/<sub>.json
```

Build the key from the fragment `path` (`<SKILL_ROOT>/references/fragment-schema.md`). A rejection mentioning `one-character short name` means two names argc cannot accept: split into one item per name. The validator rejects unknown item fields, so an older-schema fragment must be recompiled.

## 4. Extract context for a node

Run only when preflight reported `existing=1`; with `existing=0` skip the call and pass empty context. For each command path:

```sh
bash <SKILL_ROOT>/scripts/extract-cmd-context.sh <path...> --completion <completion_file>
```

A missing script prints empty output. The format is fixed:

```text
# >>> META
# @meta inherit-flag-options
# <<< META

# >>> HINTS
# - prompt for demo remote
# <<< HINTS

# >>> BINDINGS
# @option --foo[`_choice_foo`] <VALUE>  Foo description with `backticks`
# @arg v1[`_choice_val`]
# <<< BINDINGS
```

`META` is the command block's `@meta` lines; `HINTS` is the comment text after `# %%<path>`; `BINDINGS` contains only tags whose **signature** (before two or more spaces) has a backtick. Empty sections still print their markers; pass the output unchanged. A signature may also carry a `~` after the names; it is structural, and the child must keep `terminated: true` on that item.

## 5. Dispatch compile subagents

The full contract is `<SKILL_ROOT>/agents/compile.md`; use one subagent per pending path with this prompt:

```text
You are compiling one command node for the argc-completions-generate skill.
Read <SKILL_ROOT>/agents/compile.md and <SKILL_ROOT>/references/fragment-schema.md in one batch, then follow it exactly. These two files are the whole contract: load nothing else from the skill.

Command path: demo remote add
Cache directory: <REPO_ROOT>/cache/compile/demo
Fragment target: <REPO_ROOT>/cache/compile/demo/remote/add.json
Context:
<context text, or "(empty)" for a new command>
```

Replace `<SKILL_ROOT>` and `<REPO_ROOT>` with absolute paths before dispatch, so no angle-bracket placeholder reaches the child. Use `Context: (empty)` or omit the block when empty. Send only those fields; the child reads both contract files itself.

The child writes the fragment and `.txt`, returns the summary JSON, and handles exactly one node; it does not update the parent. Consume only `cache`, `status`, `warnings`, and `subcommands[]`. If subagents are unavailable, follow `<SKILL_ROOT>/agents/compile.md` inline.

For workflow `all`, dispatch the root child in the background. Read the binding references (`<SKILL_ROOT>/references/add-choice-fns.md` and the `<SKILL_ROOT>/references/compgen*.md` files) only once §8 reports `next=add-choice-fns`, not while the child runs. Keep every node's `warnings` verbatim and collect them across nodes; `<SKILL_ROOT>/references/add-choice-fns.md` §2 matches them by tag, so the binding pass runs once after the final assembly, never per node. Do not poll a compile child with `sleep`, `ls`, or `test -f` on the cache; the runtime delivers its closing message and a completion notice, and until it arrives, do nothing that depends on the fragment.

## 6. Update status and handle node failures

After each child result, validate the fragment, then update the parent:

```sh
bash <SKILL_ROOT>/scripts/update-subcommand-status.sh "$parent" <name> <status> [<name> <status>...]
```

Pass every finished node as `<name> <status>` pairs. The read, the write, and the rename happen under one lock, so concurrent updates cannot drop a status and a batch is atomic. An undeclared name (an alias is not a name) or an unknown status writes nothing and exits non-zero.

The same update applies to a subtree reset: `parent` is the target's parent fragment (for example `<REPO_ROOT>/cache/compile/<root>/remote.json` for `git remote add`).

- Retry a failed node once with the error text appended to the prompt.
- If it still fails and leaves no fragment, write the minimal failed fragment and set the parent status to `failed`:

  ```json
  {"schemaVersion": 1, "path": ["demo", "remote", "add"], "description": "", "aliases": [], "meta": [], "items": [], "subcommands": [], "source": {"kind": "none"}, "notes": "help unavailable"}
  ```
- If a fragment exists but its parent status is `todo`, validate it and mark it `succeeded`.
- Deduplicate by canonical path; aliases are not queue entries.
- Defaults: 4-6 concurrent compile subagents, depth 6, 200 nodes.

## 7. Assemble

Run assembly only when no node is `todo`:

```sh
bash <SKILL_ROOT>/scripts/assemble.sh <root> \
  --cache-dir <REPO_ROOT>/cache/compile/<root> \
  --output <REPO_ROOT>/completions/<root>.sh \
  --force
```

`--force` is required when the output exists (including a legacy script); omit it only for a new file.

Options:

```text
-c, --cache-dir <dir>         default <REPO_ROOT>/cache/compile/<root>
-o, --output <file>           default existing completion, else <REPO_ROOT>/completions/<root>.sh
    --context <file>          source script; defaults to the existing output
    --check                   compare, do not write
    --stdout                  print the full script
    --force                   overwrite an existing output
    --dump-spec               print only the generated SPEC block
    --dump-static             print only the generated STATIC block
```

Assembly validates fragments, statuses, paths, stale fragments, duplicate sibling names/aliases, `choice_fn` types, the `choices` object schema, descriptions that repeat `choices`, and root-only meta keys (`combine-shorts`, `inherit-flag-options`) placed on a subcommand fragment; renders `SPEC`; generates one `_static_*` function per item whose `choices` carry a non-empty description and writes them to `STATIC`; keeps `HINTS` and `CHOICES` from the source; omits the `STATIC` and `CHOICES` blocks when they have no content and always writes `HINTS`; migrates a legacy tail once; writes a standard header and final eval for a new file; refuses to overwrite without `--force`; checks that every function referenced by a `choice_fn`, a generated static choice, or a meta tag is defined locally; and runs `bash -n` plus `argc --argc-export`.

A described `choices` item renders `[?`_static_*`]` (completion-only, like a `choice_fn`); all-empty descriptions keep `[a|b]`. The generated name is `_static_<fragment path without the root>_<long option or arg name>`, sanitized to `[A-Za-z0-9_]`; a root-level item has no path segment. A collision between two items, or with a function already defined outside `STATIC`, fails assembly and asks for a `choice_fn` binding.

`SPEC` must contain no `_choice_*` definitions; a new script also has no non-generated completion references, an empty `HINTS` block, and no `STATIC`/`CHOICES` block at all.

## 8. Verify and hand off

```sh
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/<root>.sh --cache-dir <REPO_ROOT>/cache/compile/<root>
```

For a brand-new script with no dynamic bindings yet, also pass `--require-no-choice-fns` (or confirm no non-generated `_choice_*` references or functions exist); generated `_static_*` functions are exempt.

After a PASS, review fragments and exported parameters for `next=`; the review leaves the script unchanged. Use `argc --argc-export` with `<SKILL_ROOT>/scripts/inspect-script-params.jq` and `<SKILL_ROOT>/scripts/inspect-fragment-items.jq` (see `<SKILL_ROOT>/SKILL.md` §Inspection) for value-taking options and positionals; pipe `.subcommands[]` for nested commands and repeat for deeper nesting.

Apply the `next=` criterion in `<SKILL_ROOT>/SKILL.md` §Reporting. Add no bindings here. `next=add-choice-fns` is a handoff, not an automatic continuation: a standalone run stops here; `all` proceeds.

## 9. Failure handling

On failure, read `<SKILL_ROOT>/references/troubleshooting.md`; fix the symptom in §Generate and assemble or §Cache and regenerate, then re-run assembly and verification.
