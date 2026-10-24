# Troubleshooting

Read this file only after a check fails. It maps each symptom to the smallest fix; the procedures live in the workflow references, and the detailed choice-function isolation flow is in `<SKILL_ROOT>/references/compgen.md` §8.

## Symptom index

| Symptom | Section |
|---|---|
| Missing fragment, `todo` node, stale fragment, invalid schema, export error | Generate and assemble |
| `llm-generate` differs, choice function missing/duplicate, wrong candidates | Choice functions |
| Block, tag, help, or compgen failure after assembly | Verify |
| A choice function returns no candidates | `<SKILL_ROOT>/references/compgen.md` §8 |
| Reset, cache probe, or parent metadata problem | Cache and regenerate |

## Generate and assemble

| Symptom | Cause | Fix |
|---|---|---|
| `root fragment not found` | Cache missing or root compile failed | Re-run the root node |
| `unprocessed subcommands (status=todo)` | Queue not finished | Finish pending paths |
| `missing fragments for subcommands` | Parent says `succeeded`, file absent | Compile the child or mark `failed` with a minimal fragment |
| `fragments are not declared by their parent` | Stale file | Remove it or restore the parent entry |
| `invalid fragment` | Schema/type error | Read the jq error; fix the fragment |
| `invalid fragment ... description repeats choices: (a, b)` | The description repeats a static enumeration | Remove the matching `[...]`, `(...)`, or `{...}` group, keep `(default: ...)` and `choices`, then re-run the validator (`<SKILL_ROOT>/references/fragment-schema.md`) |
| `invalid items` after adding prefix/delimiter fields | Prefix/delimiter invariants not met | Apply the `prefixed`/`delimiter` rules in `<SKILL_ROOT>/references/fragment-schema.md` |
| `items[N]: with two names the first must be a one-character short name` | The pair is in help order, or a multi-character single-dash name came first | Reorder to `-x`/`+x` first, or split into one item per name, then re-run the validator (`<SKILL_ROOT>/references/fragment-schema.md`) |
| `missing choice function definitions` | Stale `choice_fn` or context not passed | Add the wrapper to `choice-fns` or clear `choice_fn` |
| `argc --argc-export` error with a line | Malformed tag or function | Fix the fragment and re-assemble |
| `argc --argc-export` reports a jq parse error | stderr was merged into jq (`2>&1 \| jq`) | Write stdout to a file and read stderr separately (`<SKILL_ROOT>/SKILL.md` §Inspection) |

## Choice functions

| Symptom | Cause | Fix |
|---|---|---|
| `llm-generate differs from fragments` | Hand edit, stale assemble, or fragment edited without assembling | Update the fragment, run `<SKILL_ROOT>/scripts/assemble.sh`, never patch the block |
| `undefined choice functions` | Function missing or outside `choice-fns` | Add it before the final eval, or set `choice_fn` to null |
| `duplicate choice function definitions` | Same function appended twice | Keep one definition |
| `choice-fns format: would format` | Definitions are unsorted or use a non-`_choice_*`/`_helper_*` name | Run `<SKILL_ROOT>/scripts/format-choice-fns.sh <completion.sh>`, then re-assemble and verify |
| `cannot rename ... both map to` | Two names normalize to the same `_helper_*` name | Rename one manually, then re-run the formatter |
| `cannot rename ... used as a shell variable` | The function name is also a variable (`local foo`, `$foo`, `foo=`...) | Rename the function manually or rename the variable, then re-run the formatter |
| `... is referenced outside choice-fns` | A `choice_fn` binding in `llm-generate` still uses the old name | Update the fragment `choice_fn` first, re-assemble, then format |
| Function prints nothing | Auxiliary-tool guard returned early, wrong cwd, or external tool missing | Use the isolation flow in `<SKILL_ROOT>/references/compgen.md` §8 |
| Redundant `command -v <root>` guard | A completion script runs only while its root command exists | Remove it; guard only a different tool that may be missing (`<SKILL_ROOT>/SKILL.md` §Hard rules) |
| Compgen times out | Network/slow query per keystroke | Re-run under a short timeout (for example `timeout 5 ...` where available); add caching, a result cap, or remove the binding |
| Compgen passes but candidates are wrong | Shifted word position, or candidate-level check missing | Test the option word (`--foo ''`) and use `--argc-compgen generic` for NUL/control lines |
| Static choices disappeared | Binding replaced them unintentionally | Restore `choices`, or accept the dynamic source and keep `choice_fn` |
| `choice_fn` rejected | Not a string/null or contains backticks | Use a local function name such as `_choice_name` (a leading `?` is an optional hint, not part of the name), not the tag form |
| `compgen` prints `__argc_value=<NOTATION>` or nothing for a value whose fragment has a `choice_fn` | The tag lost the binding: a multi-character single-dash name came first, or the names are not in argc order | Check `names` order, split the item into one item per name, then confirm the export entry has `.choice.type == "Fn"` |

## Verify

| Symptom | Likely cause | Check | Fix |
|---|---|---|---|
| `missing final argc eval` | Eval line removed or moved | `grep -n 'argc --argc-eval' file` | Restore `command eval "$(argc --argc-eval "$0" "$@")"` after the blocks |
| `help output failed` | Syntax/tag error or missing functions | `bash file --help` directly | Fix the reported line |
| `help output is empty` | Missing eval or early exit | Inspect the tail | Restore the eval |
| `block markers must appear exactly once` | Partial/duplicated markers | `grep -n '^# [<>]\{3\} ' file` | Remove extras or regenerate the layout |
| `block order must be ...` | Blocks reordered by hand | Inspect markers | Move them into `llm-generate` -> `llm-prompt` -> `choice-fns` |
| `llm-prompt contains non-comment lines` | Prompt body contains shell code | Inspect the block | Prefix prompt lines with `#` |
| `choice-fns must not contain structural tags` | Tags pasted into the dynamic block | Inspect the block | Move tags to fragments and re-assemble |
| `llm-generate must not define completion functions` | A `_choice_*` function was pasted into the generated block | Compare with `<SKILL_ROOT>/scripts/assemble.sh --dump-llm-generate` | Move the choice function to `choice-fns` |
| `unknown comment tags` | Typo or unsupported tag | Inspect the line | Fix the tag or remove it |
| `command block marker count mismatch` | Unclosed `# {{`/`# }}` | Inspect markers | Close the block; re-assemble |
| `command block nesting mismatch` | Wrong parent path or depth | Inspect the marker paths | Fix the fragment path or re-assemble |
| `choice functions defined after final eval` | Function appended after the eval | `tail -n 40 file` | Move it before the eval |
| `fragment bindings: N item(s) dropped by argc` | A `names` pair argc cannot parse, or a binding that never reached the export | Read the `NOTE  binding:` lines above the failure | Fix `names` order or split the item, re-assemble, re-verify |
| `cache-dir requires a script with ... blocks` | Legacy script plus `--cache-dir` | `grep '^# >>>' file` | Run assembly once to migrate, then verify with the cache |
| compgen `command not found` | Choice function calls an auxiliary tool that is not installed | Check `command -v` for the auxiliary tool only | Guard it and return 0, or use `--skip-compgen` |
| `exported name differs` (NOTE) | Plugin/OS script name differs from the path | Compare `argc --argc-export` name | Informational; no action unless compgen uses the wrong name |
| Shell has no completion but verify passes | Shell/path/OS mismatch | Check `ARGC_COMPLETIONS_ROOT`, `ARGC_COMPLETIONS_PATH`, `argc_scripts`, OS directory, shell reload | Reload the shell; re-run `<REPO_ROOT>/scripts/init-shell.sh <shell>` if needed |

## Cache and regenerate

| Symptom | Cause | Fix |
|---|---|---|
| Full reset still reports `cache=hit` or `cache=miss` | Reset did not take effect | Stop and re-run `<SKILL_ROOT>/scripts/reset-cache.sh <root>`; do not assemble |
| `cache=unknown` after a reset | Help retrieval failed | Stop and report; the completion script stays unchanged, but the cache must be rebuilt by a later run |
| Subtree reset rejects an alias | Only canonical names are accepted | Re-run with the canonical name printed in the error, or use a full root reset |
| Subtree reset rejects a path | The subcommand is not declared by its parent | Use a declared canonical path |
| Sibling fragments disappeared after a subtree reset | Wrong target path or an accidental full reset | Recompile the missing subtree; use `<SKILL_ROOT>/scripts/reset-cache.sh <root> <sub...>` with the canonical path |
| Parent listing metadata stale after a subtree reset | Subtree reset does not refetch the parent | Run a full `regenerate <root>` when names, aliases, or the parent's subcommand set changed |
| `llm-prompt` or `choice-fns` disappeared after regenerate | The completion script was deleted or replaced | Restore the script; regenerate must preserve both blocks and existing `choice_fn` bindings |
