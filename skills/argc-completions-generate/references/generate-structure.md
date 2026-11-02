# Generate-structure workflow

Generate-structure turns help/man text into JSON fragments and rebuilds only the `SPEC` block via `<SKILL_ROOT>/scripts/assemble.sh`. It reuses the existing compile queue: before each node is dispatched, one `<SKILL_ROOT>/scripts/check-fragment.sh` call decides whether the fragment is still valid. Write scope is in §2, dispatch detection in §3, assembly in §8, and handoff in §9.

## 1. Preflight

```sh
bash <SKILL_ROOT>/scripts/preflight.sh [<root>] [--output <file>] [--completion <file>]
```

It prints absolute `key=value` lines; the values used below are `existing`, `blocks`, `cache_dir`, `completion_file`, `os`, `cache_exists`, `root_fragment_exists`, and `cache_version`.

- Pass `<root>` for workflow preflight; without it, only the two roots are printed.
- It does not create `<REPO_ROOT>/cache/compile/<root>`; create it after preflight with `mkdir -p "$cache_dir"`.
- It already runs `require_pipeline_tools` and checks `command -v <root>`; both checks are already done, and the compile child alone fetches `--help`/`--version`.
- Do not inspect `<REPO_ROOT>/completions/` or `<REPO_ROOT>/cache/compile/` with `ls`/`tree`: both directories grow without bound, and `preflight` reports `existing`/`completion_file`/`blocks`/`cache_dir`/`root_fragment`/`cache_exists`/`root_fragment_exists`/`cache_version`, and `command -v` answers tool availability.
- `existing=0` and `blocks=missing` mean no script yet: skip context extraction and pass empty context. `blocks=unmarked` means the existing script has no block markers: only the block layout is supported, so stop and tell the user the script needs the markers added by hand (or deleted for a first generation), because assembly preserves `HINTS`/`CHOICES` only inside their blocks.
- Prefer `<REPO_ROOT>/completions/<os>/<root>.sh` when it already exists, otherwise the common path.
- `root_fragment_exists=0` means this is a first generation, including `cache_exists=0` and an empty cache recreated by `<SKILL_ROOT>/scripts/delete-cache.sh`. In that case skip §3 entirely and compile the root plus every returned child without calling `<SKILL_ROOT>/scripts/check-fragment.sh`; there is no fragment to check and `missing` would be the answer for every node. `root_fragment_exists=1` with `cache_version=1` means the root fragment exists and the per-node check applies. A fragment without `hash` is invalid under the current schema and is recompiled, not migrated.

## 2. Cache layout, hashes, and regeneration

Fragments live under `<REPO_ROOT>/cache/compile/<root>/` and nothing else belongs there:

```text
<REPO_ROOT>/cache/compile/<root>/_root.json           root fragment
<REPO_ROOT>/cache/compile/<root>/<sub>.json           first-level fragment
<REPO_ROOT>/cache/compile/<root>/<sub>/<nested>.json  nested fragment
```

That list is exhaustive. Help text, canonical text, and parent-page comparison files live in a temporary directory outside the cache and are deleted after use; `_root.new.txt` and every other `.txt` are no longer written. The compile child writes only its fragment, and a `.txt` left in the cache is a hygiene failure in verify.

Every fragment carries a top-level `hash`, defined in `<SKILL_ROOT>/references/fragment-schema.md`: `help`/`man` store a 64-character lowercase SHA-256, `none` stores `""`. `<SKILL_ROOT>/scripts/fragment-hash.sh` is the only writer; `SKILL_CACHE_VERSION` in `<SKILL_ROOT>/scripts/lib.sh` is the global invalidation switch, bumped when the schema, hash framing, or help canonicalization changes.

### Cache-first rule

Never dispatch a compile subagent for a node that `<SKILL_ROOT>/scripts/check-fragment.sh` reports as `hit`, `unverified`, or `failed`; the §3 table is the action mapping. A help command that fails or times out leaves the old fragment in place as `unverified`.

### Regenerate intent

There is no regenerate workflow and no root probe. When the user asks to regenerate, rebuild, re-crawl, refresh, or start from scratch:

1. Warn that the whole `<root>` cache will be deleted, that every node will be recompiled (time and tokens), that manual fragment corrections are lost, and that `<REPO_ROOT>/completions/<root>.sh` survives with its `HINTS`/`CHOICES` and the existing notation, `choice_fn`, and terminated preferences recovered from `SPEC`.
2. Ask for confirmation. If the user declines, stop without changing anything.
3. On confirmation, run:

```sh
bash <SKILL_ROOT>/scripts/delete-cache.sh <root>
```

`<SKILL_ROOT>/scripts/delete-cache.sh` accepts only a full root, never a subpath or `..`, and recreates the cache directory empty. A named subpath (`regenerate git add`) still deletes the entire `git` cache; subtree-only deletion is not supported and the user must be told so. After deletion, re-run preflight if the completion path is unclear, then continue with the first-generation flow from §3 onward.

## 3. Check each node before dispatch

Skip this entire section for a first generation (`root_fragment_exists=0`): there is no cache to check, so dispatch every node directly from §5. For an existing cache, the queue is the recursion mechanism; there is no separate tree scanner. For each pending canonical path, run:

```sh
bash <SKILL_ROOT>/scripts/check-fragment.sh "$root" "${subs[@]}" \
  --cache-dir "$cache_dir" [--completion "$completion_file"]
```

It prints one line such as:

```text
path=git add status=hit hash=<64-hex>
path=git remote status=invalid reason=hash-mismatch
path=foo status=missing
path=demo status=failed hash=
path=bar status=unverified reason=help-unavailable
```

| Status | Action |
|---|---|
| `hit` | Do not dispatch. Read the existing fragment's `subcommands` and enqueue all of them. |
| `unverified` | Do not dispatch. Reuse the fragment, keep a warning, and enqueue all declared subcommands. |
| `failed` | Do not dispatch. Reuse the minimal `source.kind: none` fragment, keep a warning, and enqueue its declared subcommands. |
| `invalid` | Dispatch a compile child. `reason=hash-mismatch` is a proven cache miss; `reason=schema` means the fragment must be recompiled under the new schema. |
| `missing` | Dispatch a compile child. |

- Queue deduplication uses the canonical path; an alias is never a queue entry. Statuses are not a queue signal, so a stale `todo` never causes a recompile and a stale `succeeded` never skips a check; `<SKILL_ROOT>/scripts/finalize-cache.sh` recomputes every status from the fragments on disk.
- Every child is checked independently. There is no cross-node help-output cache; a shared page such as `man tmux` may be executed once per node that needs it.
- The hash comparison is the only invalidation signal: because `DIFF` is part of the hash, a manual `SPEC` edit to notation, `choice_fn`, or `terminated` is an ordinary `hash-mismatch`, not a separate signal; failure to obtain help is `unverified`, not a reason to recompile.
- Never migrate an old fragment: a missing `hash`, a missing `source.command`, or a non-empty hash on `source.kind: none` is `invalid` and is recompiled from scratch.

## 4. Extract context for a node

Run only when preflight reported `existing=1`; with `existing=0` skip the call and pass empty context. For each command path:

```sh
bash <SKILL_ROOT>/scripts/extract-cmd-context.sh <path...> \
  --completion <completion_file> --cache-dir <cache_dir>
```

A missing script prints empty output. The format is fixed:

```text
# >>> META
# @meta inherit-flag-options
# <<< META

# >>> HINTS
# - prompt common to every demo command
# %%demo
# - prompt for demo
# %%demo remote
# - prompt for demo remote
# <<< HINTS

# >>> DIFF
# @option --foo
#   notation: <VALUE> => <LEVEL>
#   choice_fn: _choice_old => _choice_new
# @arg v1
#   choice_fn: (none) => _choice_val
# <<< DIFF
```

`META` is the command block's `@meta` lines; `HINTS` is the prompt text visible to that path, and `DIFF` compares the command block's `@option`/`@arg` tags with the baseline fragment and reports only notation, `choice_fn`, and terminated changes. Lines before the first `# %%` marker are common to every command in the root; a `# %%<path>` section is visible only for that exact path, with no inheritance. Paths compare with collapsed whitespace, a marker without a path matches nothing, and only the resolved lines (common + this path's section) reach the child, so a typo'd marker is caught by verify rather than silently dropped. The left side is the fragment, the right side is the current script, and the right side is what the child applies to the new fragment. When a baseline fragment exists, items added, removed, or renamed by the new help produce no row: their structure comes from the new help. A missing baseline lists every script item instead, and the child applies a row only when the new help still produces that key. `[?`_static_*`]` is assembly-generated and is not a `choice_fn` change; static `[a|b]` choices are not diffed.

`<SKILL_ROOT>/scripts/extract-cmd-context.sh` reads the baseline fragment from `--fragment` when given, otherwise from `--cache-dir`. A missing fragment is an empty baseline, so a full regenerate recovers every notation/`choice_fn`/terminated preference from `SPEC` as `(none) => ...`. Pass `--no-meta` to emit only `HINTS` and `DIFF`; that output is the cache hash body. Because the resolved `HINTS` text is part of it, editing a common line invalidates every node in that root, while editing one `# %%<path>` section invalidates only that node. Empty sections still print their markers; pass the output unchanged. A `~` in a tag is structural and reaches `DIFF` as a `terminated` row. For these three fields the script is the desired state: after editing a fragment directly, run assembly before the next generate-structure, otherwise the `DIFF` sends the fragment back to the script's values. A bare `<SKILL_ROOT>/scripts/assemble.sh` run does not read this context, so a direct `SPEC` edit is captured only through generate-structure (or `all`).

## 5. Dispatch compile subagents

The full contract is `<SKILL_ROOT>/agents/compile.md`; use one subagent per pending path with this prompt:

```text
You are compiling one command node for the argc-completions-generate skill.
Read <SKILL_ROOT>/agents/compile.md and <SKILL_ROOT>/references/fragment-schema.md in one batch, then follow it exactly. These two files are the whole contract: load nothing else from the skill.

Command path: demo remote add
Cache directory: <REPO_ROOT>/cache/compile/demo
Fragment target: <REPO_ROOT>/cache/compile/demo/remote/add.json
Completion script: <REPO_ROOT>/completions/demo.sh
Parent help command: demo remote --help
Context:
<context text, or "(empty)" for a new command>
```

Replace `<SKILL_ROOT>` and `<REPO_ROOT>` with absolute paths before dispatch, so no angle-bracket placeholder reaches the child. Use `Completion script: (none)` when preflight reports `existing=0`, and `Parent help command: (none)` for the root or when the parent fragment has no `source.command`. Use `Context: (empty)` or omit the block when empty. Send only those fields; the child reads both contract files itself.

The child writes the fragment, returns the summary JSON, and handles exactly one node; it does not update the parent and does not write `.txt`. Consume only `status`, `warnings`, `source`, and `subcommands[]`. If subagents are unavailable, follow `<SKILL_ROOT>/agents/compile.md` inline.

For workflow `all`, dispatch the root child in the background. Read the binding references (`<SKILL_ROOT>/references/add-choice-fns.md` and the `<SKILL_ROOT>/references/compgen*.md` files) only once §9 reports `next=add-choice-fns`, not while the child runs. Keep every node's `warnings` verbatim and collect them across nodes; `<SKILL_ROOT>/references/add-choice-fns.md` §2 matches them by tag, so the binding pass runs once after the final assembly, never per node. Do not poll a compile child with `sleep`, `ls`, or `test -f` on the cache; the runtime delivers its closing message and a completion notice, and until it arrives, do nothing that depends on the fragment.

## 6. Queue, recursion, and node failures

Start by enqueueing the root path. Process the queue breadth-first with 4-6 concurrent compile subagents, depth 6, and a 200-node limit; these defaults are unchanged.

After each child result, validate the fragment and enqueue its declared children. Parent `subcommands[].status` is derived data: only `<SKILL_ROOT>/scripts/finalize-cache.sh` writes it, from each child fragment's `source.kind`, and a run interrupted before finalize simply carries stale statuses that the next finalize recomputes. Never edit a status by hand.

After the fragment is validated, enqueue **every** path in its `subcommands`, not only the ones whose status is `todo`. On a first generation (`root_fragment_exists=0`), dispatch every enqueued child directly, with no `<SKILL_ROOT>/scripts/check-fragment.sh` call. For an existing cache, each child gets its own check:

- A hit or unverified parent enqueues every declared child as well, so an unchanged tree is still checked node by node.
- A recompiled parent enqueues the children from the new fragment. Children that already exist and whose hash matches are reused; new children are checked; an undeclared old fragment is not enqueued and is removed by finalize.
- A removed child is not enqueued, and finalize prunes its fragment. Adding the same child back later compiles it again unless its fragment was preserved outside finalize.
- Deduplicate by canonical path; aliases are not queue entries.

Failure handling:

- Retry a failed node once with the error text appended to the prompt.
- A node that warns `shared-help-missing` is `succeeded` with `items: []`: keep it, do not retry, and report it as `succeeded`, never as `failed` (`<SKILL_ROOT>/agents/compile.md` §3.13). Its `shared-help` warning is informational and needs no action.
- If it still fails and leaves no fragment, write the minimal failed fragment with an empty hash:

  ```json
  {"schemaVersion": 1, "path": ["demo", "remote", "add"], "description": "", "aliases": [], "meta": [], "items": [], "subcommands": [], "source": {"kind": "none"}, "hash": "", "notes": "help unavailable"}
  ```

  Its `source.kind: none` makes `<SKILL_ROOT>/scripts/finalize-cache.sh` derive the parent status `failed`; do not write the status yourself.
- If a fragment exists but its parent entry still says `todo`, validate the fragment and continue; `<SKILL_ROOT>/scripts/finalize-cache.sh` recomputes the status from `source.kind` at the end of the run.
- A `source.kind: none` fragment is reported as `failed` and is not retried automatically; only a confirmed full-root cache deletion (or removing that fragment) recompiles it.

## 7. Finalize and prune

After the queue is empty and before assembly, run:

```sh
bash <SKILL_ROOT>/scripts/finalize-cache.sh <root> --cache-dir "$cache_dir"
```

It validates every declared fragment first, refusing to change anything if one is invalid. It then syncs each child's `description`/`aliases` from its parent entry, recomputes the parent status from `source.kind`, and prunes undeclared fragments and empty directories. It prints `synced=<n> removed=<n>`; assembly continues only when no node is `todo`. Old `.txt` files are not migrated and are rejected by verify.

## 8. Assemble

Run assembly only when no node is `todo`:

```sh
bash <SKILL_ROOT>/scripts/assemble.sh <root> \
  --cache-dir <REPO_ROOT>/cache/compile/<root> \
  --output <REPO_ROOT>/completions/<root>.sh \
  --force
```

Usage: `<SKILL_ROOT>/scripts/assemble.sh <root> [-c <dir>] [-o <file>] [--force] [--check|--stdout|--dump-spec|--dump-static] [--context <file>]`. `--force` is required when the output exists; omit it only for a new file. An existing output without block markers is rejected: assembly preserves nothing outside the blocks, so add the markers (or delete the script) first. Run `--help` for defaults.

Assembly validates fragments, statuses, paths, duplicates, `choice_fn`/`choices`, descriptions, and root-only meta with actionable errors. It renders `SPEC`, generates `STATIC`, preserves `HINTS`/`CHOICES`, writes a standard header and final eval for a new file, refuses to overwrite without `--force`, checks every referenced function is defined locally, and runs `bash -n` plus `argc --argc-export`.

A described `choices` item renders `[?`_static_*`]` (completion-only, like a `choice_fn`); all-empty descriptions keep `[a|b]`. The generated name is `_static_<fragment path without the root>_<long option or arg name>`, sanitized to `[A-Za-z0-9_]`; a root-level item has no path segment. A collision between two items, or with a function already defined outside `STATIC`, fails assembly and asks for a `choice_fn` binding.

Within each command block the tag order is `@describe`/`@cmd` -> `@alias` -> `@meta` -> `@flag`/`@option` -> `@arg`. Assembly owns the output order: a fragment keeps the help order, assembly renders every flag/option first (in that order) and every arg after them (also in that order), so a fragment that lists an arg among the options still renders the canonical order, and a `_static_*` function moves with its item.

`SPEC` must contain no `_choice_*` definitions; a new script also has no non-generated completion references, an empty `HINTS` block, and no `STATIC`/`CHOICES` block at all. The fragment `hash` is ignored by assembly.

## 9. Verify and hand off

```sh
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/<root>.sh --cache-dir <REPO_ROOT>/cache/compile/<root>
```

For a brand-new script with no dynamic bindings yet, also pass `--require-no-choice-fns` (or confirm no non-generated `_choice_*` references or functions exist); generated `_static_*` functions are exempt.

After a PASS, review fragments and exported parameters for `next=`; the review leaves the script unchanged. Use `argc --argc-export` with `<SKILL_ROOT>/scripts/inspect-script-params.jq` and `<SKILL_ROOT>/scripts/inspect-fragment-items.jq` (see `<SKILL_ROOT>/SKILL.md` §Inspection) for value-taking options and positionals; pipe `.subcommands[]` for nested commands and repeat for deeper nesting.

Apply the `next=` criterion in `<SKILL_ROOT>/SKILL.md` §Reporting. Add no bindings here. `next=add-choice-fns` is a handoff, not an automatic continuation: a standalone run stops here; `all` proceeds.

## 10. Failure handling

On failure, read `<SKILL_ROOT>/references/troubleshooting.md`; fix the symptom in §Generate and assemble or §Cache and hash validation, then re-run finalize, assembly, and verification.
