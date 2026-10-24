# Verify workflow

`<SKILL_ROOT>/scripts/verify-completion.sh` validates an existing completion script and never edits it.

Read §Checks on the first pass; on failure read `<SKILL_ROOT>/references/troubleshooting.md` §Verify.

```sh
bash <SKILL_ROOT>/scripts/verify-completion.sh <completion.sh> [options]

  -c, --cache-dir <dir>        Compare llm-generate exactly with cache fragments
      --cmd <name>             Override the command name derived from the path
      --require-no-choice-fns  New script: reject completion references, definitions, and Fn choices
      --skip-compgen           Do not run argc --argc-compgen
      --no-strict              Do not treat warnings as failures
  -v, --verbose                Print the exact compgen commands and other diagnostics
```

The command name is derived from the completion path:

- `<REPO_ROOT>/completions/git.sh` -> `git`
- `<REPO_ROOT>/completions/cargo/audit.sh` -> `cargo audit`
- `<REPO_ROOT>/completions/linux/foo.sh` -> `foo`
- an arbitrary temp path -> its basename without `.sh`

`--cmd` is only an override for unusual layouts. Prefer the derived name.

## Checks

1. **File and syntax**: the file exists, starts with a bash shebang, and passes `bash -n`.
2. **Help output**: `bash <completion.sh> --help` runs from the repository root with `ARGC_COMPLETIONS_ROOT` set. It must exit 0 and produce non-empty output. Some argc versions print help to stderr, so either stream counts.
3. **Blocks**: `llm-generate`, `llm-prompt`, and `choice-fns` occur exactly once, in that order, and are closed.
   - `llm-prompt` contains only comment/blank lines.
   - `llm-generate` contains no `_choice_*` definitions.
   - `choice-fns` contains no structural tags (`@cmd`, `@option`, etc.).
   - `choice-fns` is canonical: only top-level `_choice_*`/`_helper_*` functions, sorted by name with `LC_ALL=C`, with the source guard/preamble first. Verify runs `<SKILL_ROOT>/scripts/format-choice-fns.sh --check`; a non-canonical block is a failure. Fix it with `<SKILL_ROOT>/scripts/format-choice-fns.sh <completion.sh>` and re-run verify.
   - A script with no markers at all is treated as legacy. It passes without a cache directory; passing `--cache-dir` is a failure.
4. **Comment tags**: only `@describe`, `@cmd`, `@alias`, `@arg`, `@option`, `@flag`, `@meta`, and `@env` are allowed. Command block start/end counts and nesting are checked when `# {{`/`# }}` markers exist.
5. **Completion functions**: only the tag **signature** (before two or more spaces) is inspected for backticks; backticks in descriptions are ignored. Every referenced function must be defined before the final eval. Duplicate definitions and definitions after the eval fail. `_argc_util_*` is allowed when the script sources `<REPO_ROOT>/utils/_argc_utils.sh`. A `choice_fn` must name a function defined in the script; bind a local `_choice_*` wrapper rather than a tag or a bare helper. A leading `?` on a binding is ignored when resolving the function name; verify does not check the marker.
6. **Export**: `argc --argc-export` succeeds and returns an object with `name`, `flag_options`, `positionals`, and `subcommands`.
7. **Fragment bindings** (with `--cache-dir`): every fragment item must survive argc's tag parsing. Each `names[]` has to appear in the export entry's `short_name`/`long_name`, an arg's `name` has to appear as a positional `id`, and an item with `choice_fn` must export `.choice.type == "Fn"`. A fragment whose path is absent from the export (a `failed` node) prints a `NOTE` and is skipped. This is the check that catches a `names` pair argc silently reduced to one name.
8. **Block fidelity**: with `--cache-dir`, run `<SKILL_ROOT>/scripts/assemble.sh <root> --cache-dir <dir> --dump-llm-generate` and compare the result byte-for-byte with the script's `llm-generate` block. This proves the block is derived from fragments only.
9. **No-choice mode**: with `--require-no-choice-fns`, reject choice references, `_choice_*` definitions, and exported `Fn` choices. Use it for a freshly generated script that has no dynamic bindings.
10. **Compgen smoke**: run `argc --argc-compgen` for root options, root positionals, and each first-level subcommand (up to 100). For options with `Fn` choices, complete the option's value (up to 30, 5s timeout per call); options marked `assigned`/`prefixed` are skipped because they need the equals or attached-prefix form. This check asserts exit status and stderr only; it does not verify candidate content.
11. **Summary**: print `PASS`/`FAIL` for each check and a final `RESULT: PASS` or `RESULT: FAIL`. Any failure exits 1. Warnings also fail by default.

Examples:

```sh
# Script with fragments and dynamic bindings
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/foo.sh --cache-dir <REPO_ROOT>/cache/compile/foo

# Fresh script with no dynamic bindings: add --require-no-choice-fns
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/foo.sh \
  --cache-dir <REPO_ROOT>/cache/compile/foo --require-no-choice-fns

# Legacy repository script
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/bat.sh --skip-compgen
```

## Notes

- `--skip-compgen` is appropriate when choices call external services or the command is not installed. Block, tag, export, and cache checks still run.
- Run `<SKILL_ROOT>/scripts/assemble.sh` before `--cache-dir` verification. Assembly refuses `todo` nodes by design.
- A block-fidelity or `fragment bindings` failure means the fragments and the script disagree, not that the script was edited by hand: fix the fragment (`names` order, one item per name, `choice_fn`) and re-assemble.
- The compgen smoke only proves the engine ran; keep at least one candidate-level check per new function (`<SKILL_ROOT>/references/add-choice-fns.md` §5). Use `-v` for the exact command and `<SKILL_ROOT>/references/compgen.md` §8 for word forms.
