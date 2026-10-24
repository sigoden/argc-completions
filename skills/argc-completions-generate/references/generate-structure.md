# Generate-structure and regenerate workflow

Generate-structure turns command help/man text into JSON fragments and rebuilds only the `llm-generate` block through `<SKILL_ROOT>/scripts/assemble.sh`. Regenerate is the same pipeline with a cache reset first; both modes are covered here. Neither mode edits `llm-prompt` or existing `choice-fns` content, and neither adds candidate queries or `choice_fn` bindings; assembly may migrate a legacy function tail into `choice-fns` once; run `<SKILL_ROOT>/scripts/format-choice-fns.sh <completion.sh>` after such a migration before verify. Regenerate preserves `choice-fns` byte-for-byte and does not run the formatter otherwise; run it only when add-choice-fns edits the block. The handoff review in §8 selects add-choice-fns for a standalone run when an exported value has no static choice and an enumerable source; `all` continues into it.

## 1. Preflight

```sh
bash <SKILL_ROOT>/scripts/preflight.sh <root> [--output <file>] [--completion <file>]
```

It prints `key=value` lines; the path values are absolute:

```text
skill_root=<SKILL_ROOT>
repo_root=<REPO_ROOT>
root=git
command=/usr/bin/git
os=linux
existing=1
completion_file=<REPO_ROOT>/completions/git.sh
other_completion_file=
output_file=<REPO_ROOT>/completions/git.sh
cache_dir=<REPO_ROOT>/cache/compile/git
root_fragment=<REPO_ROOT>/cache/compile/git/_root.json
root_help=<REPO_ROOT>/cache/compile/git/_root.txt
root_help_exists=0
blocks=new
prompt_region=1
```

- Preflight does not create `<REPO_ROOT>/cache/compile/<root>`.
- Preflight already runs `require_pipeline_tools` (argc, jq, gawk, sed, grep, find) and checks `command -v <root>`. Do not repeat those checks, and do not fetch `--help`/`--version` here; the compile child owns help retrieval.
- `existing=0` and `blocks=missing` mean there is no script yet; skip context extraction and pass empty context.
- `blocks=legacy` means the existing script has no block markers; assemble can migrate it once.
- Prefer the OS-specific output (`<REPO_ROOT>/completions/<os>/<root>.sh`) when it already exists, otherwise the common path.

Create the cache directory after preflight for a normal run (regenerate creates it through the reset script in §2):

```sh
mkdir -p "$cache_dir"
```

## 2. Cache, reset, and the root help probe

Fragments and the canonical help text live under `<REPO_ROOT>/cache/compile/<root>/`:

```text
<REPO_ROOT>/cache/compile/<root>/_root.json           root fragment
<REPO_ROOT>/cache/compile/<root>/_root.txt            canonical root help/man text (cache key)
<REPO_ROOT>/cache/compile/<root>/_root.new.txt        fresh root help during the cache probe (removed after the probe)
<REPO_ROOT>/cache/compile/<root>/<sub>.json           first-level subcommand fragment
<REPO_ROOT>/cache/compile/<root>/<sub>.txt            its canonical help/man text
<REPO_ROOT>/cache/compile/<root>/<sub>/<nested>.json  nested fragment
```

Each command node has exactly one fragment. A parent fragment lists its children in `subcommands`, each with a `status` of `todo`, `succeeded`, or `failed`. `todo` blocks assembly; `failed` needs a minimal fragment and produces a warning. `<REPO_ROOT>/cache/compile/<root>` is the only supported fragment directory; use it consistently in every command.

### Reset (regenerate only)

Run the reset script after preflight and before dispatching any compile child. It prints `key=value` lines; parse `mode`, `path`, `cache_dir`, `fragment`, `help`, and `parent_fragment`.

Full root reset:

```sh
bash <SKILL_ROOT>/scripts/reset-cache.sh <root>
# mode=full
# root=<root>
# path=<root>
# cache_dir=<REPO_ROOT>/cache/compile/<root>
# fragment=<REPO_ROOT>/cache/compile/<root>/_root.json
# help=<REPO_ROOT>/cache/compile/<root>/_root.txt
# parent_fragment=
# reset=1
```

Subtree reset:

```sh
bash <SKILL_ROOT>/scripts/reset-cache.sh <root> <sub...>
# mode=subtree
# root=<root>
# path=<root> <sub...>
# cache_dir=<REPO_ROOT>/cache/compile/<root>
# fragment=<REPO_ROOT>/cache/compile/<root>/<sub>.json
# help=<REPO_ROOT>/cache/compile/<root>/<sub>.txt
# parent_fragment=<REPO_ROOT>/cache/compile/<root>/_root.json (or a nested parent)
# reset=1
```

The subtree target and its descendants are deleted and the parent entry is set to `todo`.

Ignore a pre-reset `root_help_exists=1` from preflight. Do not remove cache entries by hand; the script also clears stale descendants and keeps the deletion scoped to the target path.

A reset is cache-only and has no backup. A subtree reset accepts only canonical names. An alias fails with the canonical name in the error; re-run with that name or use a full root reset. Use a full root reset when the parent listing metadata (`description`, `aliases`) or the parent's subcommand set changes.

The completion script is not deleted. `existing` still selects context extraction, so `llm-prompt` and `choice-fns` are preserved and existing `choice_fn` bindings are inherited from the current script.

### Probe and orchestrator actions

For a full `regenerate`, the cache directory is empty by construction. The root child therefore reports `cache=new`; `hit` and `miss` cannot occur. If either appears, the reset did not take effect: stop and re-run `<SKILL_ROOT>/scripts/reset-cache.sh` instead of assembling. Do not reuse a `succeeded` fragment; assemble only after every node has been compiled from fresh help. If help retrieval fails (`cache=unknown`), stop and report; the completion script stays unchanged, but the cache must be rebuilt by a later run.

For a subtree `regenerate`, the root probe is skipped entirely. The target node is dispatched directly and reports `cache=n/a`; siblings keep their existing status and fragments. Extract context for the target only when `existing=1`, dispatch one compile child, validate the fragment, set the parent entry to `succeeded`, then process the target's `subcommands` breadth-first with the normal queue, retry, and depth limits.

The root compile child probes the cache per `<SKILL_ROOT>/agents/compile.md` §2 and reports `cache` plus the root subcommand summary. `<REPO_ROOT>/cache/compile/<root>/_root.txt` is the cache key: `<SKILL_ROOT>/scripts/compare-help.sh` canonicalizes both files, and everything else must match byte-for-byte. Do not replace `_root.txt` on a hit.

Orchestrator actions:

- `hit`: reuse every valid `succeeded` fragment. Enqueue `todo` nodes only. Keep `failed` nodes and report their warnings. A hit reuses fragments as-is, so a schema field added or removed after they were compiled is not migrated; run `regenerate` after a schema change.
- `miss`: the fresh `_root.json` and `_root.txt` are now the root input. Delete every other entry in `<REPO_ROOT>/cache/compile/<root>`:

  ```sh
  find "$cache_dir" -mindepth 1 -maxdepth 1 \
    ! -name '_root.json' ! -name '_root.txt' ! -name '_root.new.txt' -exec rm -rf {} +
  ```

  Then enqueue every subcommand from the new root fragment.
- `new`: compile the whole tree.
- `unknown`: stop and report; never run assemble.

## 3. Validate fragments

Read `<SKILL_ROOT>/references/fragment-schema.md` only when validating a fragment, repairing a schema error, writing a minimal `failed` fragment, or when a fragment item summary looks surprising.

Validate every fragment with:

```sh
# Root fragment: the key is the root command name.
jq -e -f <SKILL_ROOT>/scripts/validate-fragment.jq --arg key '<root>' <REPO_ROOT>/cache/compile/<root>/_root.json
# Child fragment: the key is the root plus every path segment, joined by "|".
jq -e -f <SKILL_ROOT>/scripts/validate-fragment.jq --arg key '<root>|<sub>' <REPO_ROOT>/cache/compile/<root>/<sub>.json
```

Build the key from the fragment `path` as defined in `<SKILL_ROOT>/references/fragment-schema.md`. A rejection that mentions `one-character short name` means the item pairs two names argc cannot accept together; split it into one item per name as described there.

The validator rejects unknown item fields, so a fragment compiled under an older schema must be recompiled.

Use `<SKILL_ROOT>/scripts/inspect-fragment-items.jq` from `<SKILL_ROOT>/SKILL.md` §Inspection as the compact view.

## 4. Extract context for a node

Run this only when preflight reported `existing=1`. With `existing=0` there is no source script: skip the call and pass empty context to every node.

For each command path, run:

```sh
bash <SKILL_ROOT>/scripts/extract-cmd-context.sh <path...> --completion <completion_file>
```

A missing script prints empty output. The format is fixed:

```text
# >>> meta
# @meta inherit-flag-options
# <<< meta

# >>> llm-prompt
# - prompt for demo remote
# <<< llm-prompt

# >>> choice-fns
# @option --foo[`_choice_foo`] <VALUE>  Foo description with `backticks`
# @arg v1[`_choice_val`]
# <<< choice-fns
```

- `meta` is the current command block's `@meta` lines.
- `llm-prompt` is the comment text after `# %%<path>`.
- `choice-fns` contains only tags whose **signature** (before two or more spaces) has a backtick; backticks in descriptions are ignored.
- Empty sections still print their markers.
- Pass this output to the compile subagent unchanged.

## 5. Dispatch compile subagents

The full contract is `<SKILL_ROOT>/agents/compile.md`; do not repeat it in the prompt. Use one subagent per pending path.

Preferred prompt (fork mode):

```text
You are compiling one command node for the argc-completions-generate skill.
Read <SKILL_ROOT>/agents/compile.md and follow it exactly.

Command path: demo remote add
Cache directory: <REPO_ROOT>/cache/compile/demo
Fragment target: <REPO_ROOT>/cache/compile/demo/remote/add.json
Context:
<context text, or "(empty)" for a new command>
```

Before dispatch, replace `<SKILL_ROOT>` and `<REPO_ROOT>` with absolute paths; never send angle-bracket placeholders to the child.

When context is empty, write `Context: (empty)` or omit the Context block.

When fork is unavailable, keep only those fields; the child reads `<SKILL_ROOT>/agents/compile.md` itself.

The child writes the fragment and `.txt` and returns the summary JSON. The compile child handles exactly one command node and does not update the parent. The orchestrator consumes only `cache`, `status`, `warnings`, and `subcommands[]` from that summary. If subagents are unavailable, perform the same steps inline following `<SKILL_ROOT>/agents/compile.md`.

For workflow `all`, dispatch the root child in the background when the agent tool supports it, then read `<SKILL_ROOT>/references/add-choice-fns.md` and `<SKILL_ROOT>/references/compgen.md` while it runs. Those references do not depend on the fragment. Keep the child's `warnings`; `<SKILL_ROOT>/references/add-choice-fns.md` §2 explains how a mixed-enumeration warning changes the binding work.

## 6. Update status and handle node failures

After each child result, validate the fragment, then update the parent:

```sh
tmp="$(mktemp)"
jq --arg name "$name" --arg status "$status" \
  '(.subcommands[] | select(.name == $name) | .status) = $status' \
  "$parent" >"$tmp" && mv "$tmp" "$parent"
```

The same update applies to a subtree reset: `parent` is the target's parent fragment (for example `<REPO_ROOT>/cache/compile/<root>/remote.json` for `git remote add`).

- Retry a failed node once with the error text appended to the prompt.
- If the child still fails and leaves no fragment, write the minimal failed fragment yourself:

  ```json
  {
    "schemaVersion": 1,
    "path": ["demo", "remote", "add"],
    "description": "",
    "aliases": [],
    "meta": [],
    "items": [],
    "subcommands": [],
    "source": {"kind": "none"},
    "notes": "help unavailable"
  }
  ```

  and set the parent status to `failed`.
- If a fragment already exists but its parent status is `todo`, validate it and mark it `succeeded`.
- Deduplicate by canonical path. Aliases are never separate queue entries.
- Defaults: 4-6 concurrent compile subagents, depth 6, 200 nodes.

## 7. Assemble

Run assembly only when no node is `todo`:

```sh
bash <SKILL_ROOT>/scripts/assemble.sh <root> \
  --cache-dir <REPO_ROOT>/cache/compile/<root> \
  --output <REPO_ROOT>/completions/<root>.sh \
  --force
```

`--force` is required when the output script already exists (including a legacy script being migrated). Omit it only when creating a brand-new file.

Options:

```text
-c, --cache-dir <dir>         default <REPO_ROOT>/cache/compile/<root>
-o, --output <file>           default existing completion, else <REPO_ROOT>/completions/<root>.sh
    --context <file>          source script; defaults to the existing output
    --check                   compare, do not write
    --stdout                  print the full script
    --force                   overwrite an existing output
    --dump-llm-generate       print only the generated block
```

What assembly does:

- validates fragments, statuses, paths, stale fragments, duplicate sibling names/aliases, `choice_fn` types, and descriptions that repeat `choices`;
- renders the complete `llm-generate` block from fragments;
- keeps `llm-prompt` and `choice-fns` from the source script;
- migrates the legacy function tail into `choice-fns` when the source has no blocks;
- writes a standard header and final eval for a new file;
- refuses to overwrite without `--force`;
- checks that every function referenced by a `choice_fn` or meta tag is defined locally;
- runs `bash -n` and `argc --argc-export` on the result.

`llm-generate` must contain no `_choice_*` definitions. A brand-new script has no completion references and empty `llm-prompt`/`choice-fns` blocks.

## 8. Verify and hand off

```sh
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/<root>.sh --cache-dir <REPO_ROOT>/cache/compile/<root>
```

For a brand-new script with no dynamic bindings yet, also pass `--require-no-choice-fns` (or verify that no `_choice_*` references or functions exist).

After a PASS, review the fragments and the exported parameters for the `next=` field; the review never changes the script. The completion-parameters summary in `<SKILL_ROOT>/SKILL.md` §Inspection lists the root command's value-taking options and positionals; pipe `.subcommands[]` through it for nested commands and repeat for deeper nesting:

```sh
argc --argc-export <REPO_ROOT>/completions/<root>.sh >/tmp/<root>.export.json
# Root parameters; add --arg cmd '<root> <sub>' for a subtree.
jq -r -f <SKILL_ROOT>/scripts/inspect-script-params.jq /tmp/<root>.export.json
jq -r -f <SKILL_ROOT>/scripts/inspect-fragment-items.jq <REPO_ROOT>/cache/compile/<root>/_root.json
```

A value-taking parameter with no static or dynamic `choice` whose value has an enumerable source — a tool-specific query (git refs, container images, ...) — reports `next=add-choice-fns`. Free text, path notation, and values with no enumerable source report `next=complete`. Do not add bindings here; the review only selects the next workflow. `next=add-choice-fns` is a handoff, not an automatic continuation: a standalone `generate-structure` run stops here, while `all` proceeds into add-choice-fns.

## 9. Failure handling

On failure, read `<SKILL_ROOT>/references/troubleshooting.md` first. Find the symptom in §Generate and assemble or §Cache and regenerate, fix the fragment or cache entry, then re-run assembly and verification.
