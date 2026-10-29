# Verify workflow

`<SKILL_ROOT>/scripts/verify-completion.sh` validates an existing completion script and never edits it. Read §Checks on the first pass; on failure read `<SKILL_ROOT>/references/troubleshooting.md` §Verify.

```sh
bash <SKILL_ROOT>/scripts/verify-completion.sh <completion.sh> [options]

  -c, --cache-dir <dir>        Compare SPEC and STATIC exactly with cache fragments
      --cmd <name>             Override the command name derived from the path
      --require-no-choice-fns  New script: reject non-generated completion references, definitions, and Fn choices
      --skip-compgen           Do not run argc --argc-compgen
      --no-strict              Do not treat warnings as failures
  -v, --verbose                Print exact compgen commands and diagnostics
```

The command name comes from the path: `<REPO_ROOT>/completions/git.sh` -> `git`, `<REPO_ROOT>/completions/cargo/audit.sh` -> `cargo audit`, `<REPO_ROOT>/completions/linux/foo.sh` -> `foo`, and an arbitrary temp path -> its basename without `.sh`. Use `--cmd` only for unusual layouts.

## Checks

1. **File and syntax**: exists, bash shebang, passes `bash -n`.
2. **Help output**: `bash <completion.sh> --help` runs from the repository root with `ARGC_COMPLETIONS_ROOT` set, exits 0, and prints something (either stream).
3. **Blocks**: `SPEC`, `HINTS`, `STATIC`, `CHOICES` occur once in that order and are closed; `STATIC` may be absent (older scripts) and is then treated as empty.
   - `HINTS`: comment/blank lines only.
   - `SPEC`: no `_choice_*` definitions.
   - `STATIC`: no structural tags; only generated `_static_*` functions; nothing outside `STATIC` may use that reserved prefix.
   - `CHOICES`: no structural tags; canonical (only top-level `_choice_*`/`_helper_*`, sorted with `LC_ALL=C`, guard first). Verify runs `<SKILL_ROOT>/scripts/format-choices.sh --check`; fix with `<SKILL_ROOT>/scripts/format-choices.sh <completion.sh>` and re-run.
   - No markers means legacy: verify passes without `--cache-dir`; passing it fails.
4. **Comment tags**: only `@describe`, `@cmd`, `@alias`, `@arg`, `@option`, `@flag`, `@meta`, `@env`; check block start/end counts and nesting when `# {{`/`# }}` markers exist.
5. **Completion functions**: only the tag **signature** (before two or more spaces) counts for backticks; description backticks are ignored. Every referenced function must be defined before the final eval; duplicates and definitions after the eval fail. `_argc_util_*` is allowed when the script sources `<REPO_ROOT>/utils/_argc_utils.sh`. A `choice_fn` must name a function defined in the script; bind a local `_choice_*` wrapper rather than a tag or a bare helper.
6. **Export**: `argc --argc-export` succeeds and returns an object with `name`, `flag_options`, `positionals`, and `subcommands`.
7. **Fragment bindings** (with `--cache-dir`): every fragment item must survive tag parsing. Each `names[]` appears in the export entry's `short_name`/`long_name`; an arg's `name` appears as a positional `id`; an item with `choice_fn`, or with any non-empty choice `description`, exports `.choice.type == "Fn"`; an item with `terminated: true` exports `.terminated == true` (a `terminated mismatch` fails). A fragment path absent from the export (a `failed` node) prints a `NOTE` and is skipped. This is the check that catches a `names` pair argc silently reduced to one name.
8. **Block fidelity** (with `--cache-dir`): `<SKILL_ROOT>/scripts/assemble.sh <root> --cache-dir <dir> --dump-spec` and `--dump-static` must match the script's `SPEC` and `STATIC` blocks byte-for-byte, proving both derive from fragments only; a hand edit fails here.
9. **Cache hygiene** (with `--cache-dir`): every file is a fragment (`.json`) or its same-named help (`.txt`). A `.txt` without the matching `.json` is a stray (a raw capture reads as a node help file), `_root.new.txt` is a probe leftover, and a `.json` whose `source.kind` is not `none` must have its `.txt`.
10. **No-choice mode** (`--require-no-choice-fns`): reject choice references, `_choice_*` definitions, and exported `Fn` choices that are not generated `STATIC` functions; use it for a fresh script with no dynamic bindings.
11. **Compgen smoke**: run `argc --argc-compgen` for root options, root positionals, and each first-level subcommand (up to 100); for options with `Fn` choices, complete the value (up to 30, 5s timeout); skip `assigned`/`prefixed` options (they need the equals/attached form). It asserts exit status and stderr only, not candidate content.
12. **Summary**: print `PASS`/`FAIL` per check and `RESULT: PASS`/`RESULT: FAIL`; any failure exits 1, and warnings fail by default.

Examples:

```sh
# Script with fragments and dynamic bindings
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/foo.sh --cache-dir <REPO_ROOT>/cache/compile/foo

# Fresh script with no dynamic bindings
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/foo.sh \
  --cache-dir <REPO_ROOT>/cache/compile/foo --require-no-choice-fns
```

## Notes

- `--skip-compgen` fits choices that call external services or an uninstalled command; other checks still run.
- Assemble before `--cache-dir` verification; assembly refuses `todo` nodes.
- A block-fidelity or fragment-bindings failure means fragments and script disagree: fix the fragment and re-assemble.
- Compgen smoke only proves the engine ran; keep a candidate-level check per new function (`<SKILL_ROOT>/references/add-choice-fns.md` §5). Use `-v` and `<SKILL_ROOT>/references/compgen.md` §8 for word forms.
