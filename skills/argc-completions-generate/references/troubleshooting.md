# Troubleshooting

Read after a check fails; procedures are in the workflow references, and the choice-function isolation flow is in `<SKILL_ROOT>/references/compgen.md` §6.

## Symptom index

| Symptom | Section |
|---|---|
| Missing fragment, `todo` node, stale fragment, schema/export error | Generate and assemble |
| `SPEC` differs, missing/duplicate function, wrong candidates | Choice functions |
| Block, tag, help, or compgen failure after assembly | Verify |
| No candidates from a choice function | `<SKILL_ROOT>/references/compgen.md` §6 |
| Reset, cache probe, or parent metadata problem | Cache and regenerate |

## Generate and assemble

| Symptom | Cause | Fix |
|---|---|---|
| `root fragment not found` | Cache missing or root compile failed | Re-run the root node |
| `unprocessed subcommands (status=todo)` | Queue unfinished | Finish pending paths |
| `subcommand not declared` on a status update | The name is an alias, or the parent was recompiled | Re-run against the current parent with canonical names (`<SKILL_ROOT>/references/generate-structure.md` §6) |
| `timed out waiting for lock` | A crashed writer left its lock file | Remove the lock file named in the error; locks live under `$TMPDIR`, never in the cache (`<SKILL_ROOT>/references/generate-structure.md` §6) |
| `missing fragments for subcommands` | Parent `succeeded`, file absent | Compile the child or mark `failed` with a minimal fragment |
| `fragments are not declared by their parent` | Stale file | Remove it or restore the parent entry |
| `invalid fragment` | Schema/type error | Read the jq error and fix the fragment |
| `choices entries must be objects {value, description}` | Legacy string choices | Convert each entry to `{"value": ..., "description": ...}` (`<SKILL_ROOT>/references/fragment-schema.md`) |
| `invalid choices: each entry must be ...` | Empty or duplicate `value`, or a `value`/`description` with `|`, `]`, TAB, newline, backtick, or a control character | Fix the entry so `value` is unique, non-empty, and trimmed; keep descriptions single-line (`<SKILL_ROOT>/references/fragment-schema.md`) |
| `static choice function name collision` | Two items sanitize to one `_static_*` name, or the name is already defined outside `STATIC` | Bind a `choice_fn` for one item (or rename the colliding function); never hand-edit `STATIC` |
| `invalid fragment ... description repeats choices: (a, b)` | Description repeats a static enumeration | Remove the matching `[...]`/`(...)`/`{...}` group; keep `(default: ...)` and `choices`, then re-run the validator (`<SKILL_ROOT>/references/fragment-schema.md`) |
| `invalid items` after adding prefix/delimiter | Invariant not met | Apply the `prefixed`/`delimiter` rules (`<SKILL_ROOT>/references/fragment-schema.md`) |
| `invalid items` after adding `terminated` | Combined with `repeatable`/`prefixed`/`delimiter`, used on a flag, or a name ends in `~` | Keep `repeatable: false`, `prefixed: false`, `delimiter: null`; only the first name `-~`/`+~` of a two-name item may end in `~` (`<SKILL_ROOT>/references/fragment-schema.md`) |
| `~` missing after regenerate | Compile dropped the terminated flag | Set `"terminated": true` on the fragment item (or re-run the node with context), assemble, verify |
| Notation modifier missing after regenerate | Compile collapsed a multi-value tail into one notation | Keep the final notation with `*`/`+`/`?`; a command-valued option keeps `["<script>", "<args*>"]` (`<SKILL_ROOT>/agents/compile.md` §Notation modifiers) |
| `invalid items` after a notation modifier | Modifier on a non-final option notation, on an arg, or an empty `<*>` | Use `*`/`+`/`?` inside the final option notation only; args use `required`/`repeatable` (`<SKILL_ROOT>/references/fragment-schema.md`) |
| `argc --argc-eval` rejects `cmd -l script` although the option has `<args*>` | argc 1.24.0 appends `~` before computing the notation modifier (`ARGS*~`), so `num_args` becomes `[2, MAX]` | Keep the documented `<args*>`; generation, export, and completion still work; report upstream if it affects command execution |
| `items[N]: with two names the first must be a one-character short name` | Pair in help order or a multi-character single-dash name first | Reorder to `-x`/`+x`, or split into one item per name, then re-run the validator (`<SKILL_ROOT>/references/fragment-schema.md`) |
| `missing choice function definitions` | Stale `choice_fn` or context not passed | Add the wrapper to `CHOICES` or clear `choice_fn` |
| `argc --argc-export` error with a line | Malformed tag or function | Fix the fragment and re-assemble |
| `argc --argc-export` reports a jq parse error | stderr merged into jq (`2>&1 \| jq`) | Write stdout to a file and read stderr separately (`<SKILL_ROOT>/SKILL.md` §Inspection) |
| A file editor rejects the script as changed since it was read | Formatting or assembly rewrote the whole script | Re-read before editing, or batch `CHOICES` edits before the first assemble |

## Choice functions

| Symptom | Cause | Fix |
|---|---|---|
| `SPEC differs from fragments` | Hand edit, stale assemble, or fragment edited without assembling | Update the fragment and run `<SKILL_ROOT>/scripts/assemble.sh`; never patch the block |
| `undefined choice functions` | Missing or outside `CHOICES` | Add it before the final eval, or set `choice_fn` to null |
| `duplicate choice function definitions` | Appended twice | Keep one definition |
| `CHOICES format: CHOICES block not found ...` | Completion functions were written without a block | Insert `# >>> CHOICES` / `# <<< CHOICES` before the final eval, or re-assemble a legacy script |
| `CHOICES format: would format` | Unsorted, or a name outside `_choice_*`/`_helper_*` | Run `<SKILL_ROOT>/scripts/format-choices.sh <completion.sh>`, re-assemble, verify |
| `cannot rename ... both map to` | Two names normalize to one `_helper_*` | Rename one manually, re-run the formatter |
| `cannot rename ... used as a shell variable` | Function name is also a variable | Rename the function or variable, re-run the formatter |
| `... is referenced outside CHOICES` | A `choice_fn` in `SPEC` still uses the old name | Update the fragment, re-assemble, then format |
| Function prints nothing | Guard returned early, wrong cwd, or missing tool | Use the isolation flow in `<SKILL_ROOT>/references/compgen.md` §6 |
| Redundant `command -v <root>` guard | A completion runs only while its root exists | Remove it; guard only another tool (`<SKILL_ROOT>/references/compgen.md` §1) |
| Compgen times out | Network/slow query per keystroke | Re-run under a short timeout; add caching, a cap, or drop the binding |
| Compgen passes but candidates are wrong | Shifted word position or no candidate-level check | Test the option word (`--foo ''`); assert values with the `<SKILL_ROOT>/references/compgen.md` §6 `generic` pipeline |
| Candidates look missing or different in a shell mode | Shell modes exercise the integration and post-process the candidate list | Check `generic` with the `<SKILL_ROOT>/references/compgen.md` §6 pipeline; do not edit `CHOICES` from a shell-mode result |
| `grep -x` finds no candidate | Candidate lines carry a NUL, color, and description fields | Use the `<SKILL_ROOT>/references/compgen.md` §6 pipeline (`tr -d '\000'`, `cut -f1`) |
| Static choices disappeared | A binding replaced them | Restore `choices`, or keep the dynamic source |
| `choice_fn` rejected | Not string/null, or contains backticks | Use a local function name such as `_choice_name`, not the tag form |
| `compgen` prints `__argc_value=<NOTATION>` or nothing for a value with `choice_fn` | Bad `names` order or a multi-character single-dash name first | Fix `names`, split per name, confirm `.choice.type == "Fn"` |

## Verify

| Symptom | Cause | Fix |
|---|---|---|
| `missing final argc eval` | Eval removed/moved | Check with `grep -n 'argc --argc-eval' file`; restore `command eval "$(argc --argc-eval "$0" "$@")"` after the blocks |
| `help output failed` | Syntax/tag error or missing function | Run `bash file --help` and fix the reported line |
| `help output is empty` | Missing eval or early exit | Inspect the tail; restore the eval |
| `block markers must appear exactly once for SPEC/HINTS and at most once for STATIC/CHOICES` | Partial/duplicated markers | `grep -n '^# [<>]\{3\} ' file`; remove extras or regenerate |
| `empty STATIC block` / `empty CHOICES block` | An empty marker pair left by an older assemble | Re-run `<SKILL_ROOT>/scripts/assemble.sh <root> --force`; empty optional blocks are omitted |
| `block order must be ...` | Blocks reordered | Order `SPEC` -> `HINTS` -> [`STATIC`] -> [`CHOICES`]; `STATIC` and `CHOICES` are optional but keep that order |
| `HINTS contains non-comment lines` | Shell code in the prompt | Prefix prompt lines with `#` |
| `CHOICES must not contain structural tags` | Tags pasted into the dynamic block | Move tags to fragments and re-assemble |
| `SPEC must not define completion functions` | `_choice_*` pasted into the generated block | Compare with `<SKILL_ROOT>/scripts/assemble.sh --dump-spec`; move it to `CHOICES` |
| `unknown comment tags` | Typo or unsupported tag | Fix or remove the tag |
| `command block marker count mismatch` | Unclosed `# {{`/`# }}` | Close the block and re-assemble |
| `command block nesting mismatch` | Wrong parent path or depth | Fix the fragment path or re-assemble |
| `choice functions defined after final eval` | Appended after the eval | `tail -n 40 file`; move it before the eval |
| `fragment bindings: N item(s) dropped by argc` | A `names` pair argc cannot parse, or a binding missed the export | Read the `NOTE  binding:` lines; fix `names`/split, re-assemble |
| `terminated mismatch` | Fragment says `terminated: true` but the export does not (or the reverse) | Fix the fragment/context, re-assemble, verify |
| Compgen after a terminator inside a terminated value completes the command's own args | argc `~` consumes to end of line and does not stop at the terminator | Expected: the rest of the line belongs to the option; keep terminator handling out of the fragment |
| `cmd -<TAB>` lists nothing while `cmd --<TAB>` lists long options | A terminated parameter makes a lone `-` a value | Expected argc behavior; keep `terminated` and report the limitation |
| `cache-dir requires a script with ... blocks` | Legacy script plus `--cache-dir` | Check `grep '^# >>>' file`; run assembly once, then verify with the cache |
| `STATIC differs from fragments` | Hand-edited `STATIC`, stale assemble, or a described `choices` edit without assembling | Re-run `<SKILL_ROOT>/scripts/assemble.sh`; `STATIC` is generated, never patch it |
| `reserved _static_ function defined outside STATIC` | A `_static_*` function was written in `CHOICES` or elsewhere | Move the logic to a `_choice_<param>` function and bind `choice_fn`; the prefix is reserved for assembly |
| `dropped static choices` | A described `choices` item lost its generated function in the export | Re-assemble; if it persists, check the item's `names` shape |
| compgen `command not found` | An auxiliary tool is missing | Guard it with `command -v` and return 0, or use `--skip-compgen` |
| `exported name differs` (NOTE) | Plugin/OS script name differs from the path | Compare the `argc --argc-export` name; informational unless compgen uses the wrong name |
| Shell has no completion but verify passes | Shell/path/OS mismatch | Check `ARGC_COMPLETIONS_ROOT`, `ARGC_COMPLETIONS_PATH`, `argc_scripts`, the OS directory, and a reload; re-run `<REPO_ROOT>/scripts/init-shell.sh <shell>` |

## Cache and regenerate

| Symptom | Cause | Fix |
|---|---|---|
| Full reset still reports `cache=hit`/`miss` | Reset did not take effect | Stop; re-run `<SKILL_ROOT>/scripts/reset-cache.sh <root>`; do not assemble |
| `cache=unknown` after a reset | Help retrieval failed | Stop and report; the script is unchanged and the cache must be rebuilt |
| Subtree reset rejects an alias | Canonical names only | Re-run with the canonical name from the error, or do a full reset |
| Subtree reset rejects a path | Not declared by the parent | Use a declared canonical path |
| Sibling fragments disappeared after a subtree reset | Wrong target or an accidental full reset | Recompile the subtree with the canonical path |
| Parent metadata stale after a subtree reset | A subtree reset does not refetch the parent | Run a full `regenerate <root>` when names, aliases, or the subcommand set change |
| `HINTS`/`CHOICES` disappeared after regenerate | The script was deleted or replaced | Restore it; regenerate must preserve both blocks and bindings |
