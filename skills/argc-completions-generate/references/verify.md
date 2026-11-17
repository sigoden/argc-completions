# Verify workflow

`<SKILL_ROOT>/scripts/verify-completion.sh` validates an existing completion script and never edits it. Each check prints `PASS`/`FAIL` and names the failing rule; the script exits 0 only when every check passes. Run it with `--help` for all options; on failure read `<SKILL_ROOT>/references/troubleshooting.md` §Verify.

```sh
bash <SKILL_ROOT>/scripts/verify-completion.sh <completion.sh> [--cache-dir <dir>] [--cmd <name>] [--require-no-choice-fns] [--skip-compgen] [--no-strict] [-v]
```

The command name comes from the path: `<REPO_ROOT>/completions/git.sh` -> `git`, `<REPO_ROOT>/completions/cargo/audit.sh` -> `cargo audit`, `<REPO_ROOT>/completions/linux/foo.sh` -> `foo`, and an arbitrary temp path -> its basename without `.sh`. Use `--cmd` only for unusual layouts. Verify the path preflight resolved and do not move the file to suit the naming: a completion under a platform directory keeps that location, and the derived name already drops the `linux/`, `macos/`, or `windows/` segment.

A bridge completion is recognized by a structural tag that binds `_choice_bridge_<name>` (a copy of `<REPO_ROOT>/bridges/<name>.sh`). It only forwards words to the framework hook, so the help probe is skipped; an explicit `--cache-dir` is reported and ignored because a bridge copy never generates fragments.

## Checks

The table maps each check to its action or to the section that owns the rule; it does not restate the rule.

Acceptance details: `HINTS` holds comment/blank lines only; the root block carries exactly one non-empty `@describe`; `SPEC` defines no `_choice_*` functions; backticks count in the tag signature only (before two or more spaces), never in a description; a `# %%<path>` marker must name a canonical command path (the root name or a `# {{ ...` block path, no aliases) and appear exactly once, while a marker without a path fails; `_argc_util_*` is allowed when the script sources `<REPO_ROOT>/utils/_argc_utils.sh`.

| Check | Action or authority |
|---|---|
| File and syntax | Fix the shebang or the `bash -n` failure. |
| Help output | Make `bash <completion.sh> --help` exit 0 and print output; a bridge or `_choice_delegate` completion is exempt. |
| Blocks | Add missing markers by hand, re-run assembly, or drop an empty `STATIC`/`CHOICES` pair. |
| Block content | Re-run assembly for `SPEC`/`STATIC`; fix `HINTS` by hand or `CHOICES` with `<SKILL_ROOT>/scripts/format-choices.sh`. The `_static_` prefix is reserved for `STATIC` functions. |
| `HINTS markers` | `<SKILL_ROOT>/references/troubleshooting.md` §Verify; the marker syntax is `<SKILL_ROOT>/SKILL.md` §Pipeline contract. |
| Comment tags | `@meta` belongs to the root block, before the first `# {{` marker; a child block must not carry it. Re-assemble, never hand-sort tags. |
| Root description | Set `description` in the root fragment and re-assemble; a root fragment with `source.kind: none` only warns, and a bridge completion is exempt. |
| Completion functions | `<SKILL_ROOT>/references/add-choice-fns.md` §4; every referenced function must be defined in `CHOICES`, once. |
| Export | Fix tags until `argc --argc-export` returns `name`, `flag_options`, `positionals`, and `subcommands`. |
| Fragment bindings | `<SKILL_ROOT>/references/fragment-schema.md`; fix a dropped `names[]`, `choice_fn`, or `terminated` there, then re-assemble. |
| Block fidelity | Re-run assembly; a hand edit to `SPEC` or `STATIC` fails. |
| Cache hygiene | `<SKILL_ROOT>/references/generate-structure.md` §2; remove `.txt` or other non-`.json` files, recompile a fragment with an invalid `hash` or `source.command`. |
| No-choice mode | Remove non-generated choice references and definitions. |
| Compgen smoke | `<SKILL_ROOT>/references/compgen.md` §6; fix the function, or use `--skip-compgen` for external services. |
| Provenance | `<SKILL_ROOT>/references/fragment-schema.md`; model a positional enumeration as items, and give a child whose `source.command` equals its parent's a shared-help `source.section`. |
| Summary | Fix the first failure and re-run; warnings fail unless `--no-strict`. |
