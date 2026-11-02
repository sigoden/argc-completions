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
3. **Blocks**: `SPEC` and `HINTS` occur once in that order and are closed; `STATIC` and `CHOICES` occur at most once, in that order, and only when non-empty — an empty marker pair fails with `empty STATIC block` / `empty CHOICES block`, so re-run assemble to drop it. A missing `STATIC` or `CHOICES` block is treated as empty.
   - `HINTS`: comment/blank lines only.
   - `SPEC`: no `_choice_*` definitions.
   - `STATIC`: no structural tags; only generated `_static_*` functions; nothing outside `STATIC` may use that reserved prefix.
   - `CHOICES`: absent when the script has no dynamic functions; when present, no structural tags and canonical (only top-level `_choice_*`/`_helper_*`, sorted with `LC_ALL=C`, guard first). Verify runs `<SKILL_ROOT>/scripts/format-choices.sh --check` (a no-op for a missing block); fix with `<SKILL_ROOT>/scripts/format-choices.sh <completion.sh>` and re-run.
   - No markers means the script cannot be verified: only the block layout is supported, and the run fails with `no block markers`.
4. **Comment tags**: only `@describe`/`@cmd`, `@alias`, `@meta`, `@option`/`@flag`, `@arg`; check block start/end counts and nesting when `# {{`/`# }}` markers exist. Root-only keys (`combine-shorts`, `inherit-flag-options`) must sit in the root block, before the first `# {{` marker, because argc reads them from the script root alone. Any regression fails with `tag order` and `file:line: @tag after @prev`, and the fix is re-assembling, never hand-sorting the script.
5. **Completion functions**: only the tag **signature** (before two or more spaces) counts for backticks; description backticks are ignored. Every referenced function must be defined before the final eval; duplicates and definitions after the eval fail. `_argc_util_*` is allowed when the script sources `<REPO_ROOT>/utils/_argc_utils.sh`. A `choice_fn` must name a function defined in the script; bind a local `_choice_*` wrapper rather than a tag or a bare helper.
6. **Export**: `argc --argc-export` succeeds and returns an object with `name`, `flag_options`, `positionals`, and `subcommands`.
7. **Fragment bindings** (with `--cache-dir`): every fragment item must survive tag parsing. Each `names[]` appears in the export entry's `short_name`/`long_name`; an arg's `name` appears as a positional `id`; an item with `choice_fn`, or with any non-empty choice `description`, exports `.choice.type == "Fn"`; an item with `terminated: true` exports `.terminated == true` (a `terminated mismatch` fails). A fragment path absent from the export (a `failed` node) prints a `NOTE` and is skipped. This is the check that catches a `names` pair argc silently reduced to one name.
8. **Block fidelity** (with `--cache-dir`): `<SKILL_ROOT>/scripts/assemble.sh <root> --cache-dir <dir> --dump-spec` and `--dump-static` must match the script's `SPEC` and `STATIC` blocks byte-for-byte (an absent `STATIC` block compares as empty), proving both derive from fragments only; a hand edit fails here.
9. **Cache hygiene** (with `--cache-dir`): every file must be a fragment (`.json`). Any `.txt` (including `_root.new.txt`, a raw capture, or a legacy help file) fails, as does any unknown file. Each fragment must carry `source.kind` `help`/`man`/`none`, a `hash` that is 64 lowercase hex for `help`/`man` and `""` for `none`, and a safe `source.command` for `help`/`man` (no `source.command` for `none`). Old caches are not migrated; recompile the node or run the user's cleanup script.
10. **No-choice mode** (`--require-no-choice-fns`): reject choice references, `_choice_*` definitions, and exported `Fn` choices that are not generated `STATIC` functions; use it for a fresh script with no dynamic bindings.
11. **Compgen smoke**: run `argc --argc-compgen generic` for root options, root positionals, and each first-level subcommand (up to 100); for options with `Fn` choices, complete the value (up to 30, 5s timeout); skip `assigned`/`prefixed` options (they need the equals/attached form). It asserts exit status and stderr only, not candidate content; `generic` skips shell post-processing and path expansion, so shell-side formatting is out of scope. Use `--skip-compgen` when a choice calls an external service or an uninstalled command; the other checks still run.
12. **Provenance** (with `--cache-dir`): a child fragment whose `source.command` equals its parent's, without a `source.section`, is a positional enumeration modeled as a subcommand and fails (`fragment provenance`). A shared-help node is exempt because it records the parent command together with `source.section`.

13. **Summary**: print `PASS`/`FAIL` per check and `RESULT: PASS`/`RESULT: FAIL`; any failure exits 1, and warnings fail by default.

Examples:

```sh
# Script with fragments and dynamic bindings
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/foo.sh --cache-dir <REPO_ROOT>/cache/compile/foo

# Fresh script with no dynamic bindings
bash <SKILL_ROOT>/scripts/verify-completion.sh <REPO_ROOT>/completions/foo.sh \
  --cache-dir <REPO_ROOT>/cache/compile/foo --require-no-choice-fns
```
