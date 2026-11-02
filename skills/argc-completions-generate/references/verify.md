# Verify workflow

`<SKILL_ROOT>/scripts/verify-completion.sh` validates an existing completion script and never edits it. Run it with `--help` for all options; on failure read `<SKILL_ROOT>/references/troubleshooting.md` §Verify.

```sh
bash <SKILL_ROOT>/scripts/verify-completion.sh <completion.sh> [--cache-dir <dir>] [--cmd <name>] [--require-no-choice-fns] [--skip-compgen] [--no-strict] [-v]
```

The command name comes from the path: `<REPO_ROOT>/completions/git.sh` -> `git`, `<REPO_ROOT>/completions/cargo/audit.sh` -> `cargo audit`, `<REPO_ROOT>/completions/linux/foo.sh` -> `foo`, and an arbitrary temp path -> its basename without `.sh`. Use `--cmd` only for unusual layouts.

## Checks

The script prints `PASS`/`FAIL` per check and names the failing rule; use this table to choose the fix.

Acceptance details: `HINTS` is comment/blank lines only and `SPEC` contains no `_choice_*` definitions; only the tag signature (before two or more spaces) counts for backticks, and description backticks are ignored; root-only keys (`combine-shorts`, `inherit-flag-options`) must sit in the root block, before the first `# {{` marker; a `choice_fn` must name a function defined in the script, so bind a local `_choice_*` wrapper rather than a tag or bare helper; `_argc_util_*` is allowed when the script sources `<REPO_ROOT>/utils/_argc_utils.sh`.

| Check | Fix |
|---|---|
| File and syntax | Fix the shebang or the `bash -n` failure. |
| Help output | Make `bash <completion.sh> --help` exit 0 and print output. |
| Blocks | Add missing markers by hand, re-run assembly, or drop an empty `STATIC`/`CHOICES` pair. |
| Block content | Re-run assembly for `SPEC`/`STATIC`; fix `HINTS` by hand or `CHOICES` with `<SKILL_ROOT>/scripts/format-choices.sh`. The `_static_` prefix is reserved for `STATIC` functions. |
| Comment tags | Re-assemble; never hand-sort tags. |
| Completion functions | Define every referenced function in `CHOICES`; no duplicates or definitions after the final eval. |
| Export | Fix tags until `argc --argc-export` returns `name`, `flag_options`, `positionals`, and `subcommands`. |
| Fragment bindings | Fix a dropped `names[]`, `choice_fn`, or `terminated` in the fragment. |
| Block fidelity | Re-run assembly; a hand edit to `SPEC` or `STATIC` fails. |
| Cache hygiene | Remove `.txt` or other non-`.json` files; recompile a fragment with an invalid `hash` or `source.command`. |
| No-choice mode | Remove non-generated choice references and definitions. |
| Compgen smoke | Fix the function, or use `--skip-compgen` for external services. |
| Provenance | Model a positional enumeration as items; a child whose `source.command` equals its parent's needs a shared-help `source.section`. |
| Summary | Fix the first failure and re-run; warnings fail unless `--no-strict`. |

Examples:

```sh
# Script with fragments and dynamic bindings
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/foo.sh --cache-dir <REPO_ROOT>/cache/compile/foo

# Fresh script with no dynamic bindings
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/foo.sh \
  --cache-dir <REPO_ROOT>/cache/compile/foo --require-no-choice-fns
```
