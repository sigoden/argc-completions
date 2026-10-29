# Compgen protocol and choice-function reference

Dynamic-completion spec for the `CHOICES` block: protocol, context, paths, config parsing, split model, and debugging. Read by section; workflow lives in `<SKILL_ROOT>/references/add-choice-fns.md` (no workflow steps here). Shell snippets follow `<SKILL_ROOT>/references/setup.md`.

Companion references: `<SKILL_ROOT>/references/compgen-helpers.md` for the `_argc_util_*` helper index and signatures, `<SKILL_ROOT>/references/compgen-recipes.md` for composed functions covering common value shapes.

## Section map

| Section | Use for |
|---|---|
| §1 Candidate protocol | Output format, descriptions, colors, guards. |
| §2 Context variables | `ARGC_*`, `argc__*`, generated `$argc_<id>` values. |
| §3 Path completion | Notation and runtime path requests. |
| §4 Structured config files | YAML, TOML, XML, INI via optional `yq`. |
| §5 Control lines and the split model | `__argc_*`, delimiters, prefixed words. |
| §6 Debugging | Candidate checks, direct call, no-candidate flow. |

## 1. Candidate protocol

A choice function prints one candidate per line:

```text
value[\0][\t/color:<name>[,<style>]][\t<description>]
```

```sh
echo "value"
echo -e "value\t/color:green,bold\tBuild output"
echo -e "value\0\tdescription"        # description, no trailing space
```

- A trailing `\0` suppresses the space after the value. Put it at the end of the value field, never after the description.
- Candidates are deduplicated by value: the first non-empty description wins, and nospace is enabled if any occurrence requests it.
- Descriptions are on by default (`ARGC_COMPGEN_DESCRIPTION=1` forces them; any other value disables them; `ARGC_COMPGEN_DESCRIPTION_MAX_WIDTH` defaults to 80).
- Colors: `black`, `red`, `green`, `yellow`, `blue`, `magenta`, `cyan`, `white`, `default`, optionally `regular` or `bold`; only zsh/PowerShell render them.
- Return 0 with no output when there is nothing to offer; send diagnostics to stderr. Do not pre-filter by prefix: argc filters, so emit the full current-part candidate.
- Guard an auxiliary tool with `command -v <tool> >/dev/null || return 0`; a missing tool must not fail completion. Never guard the completion's own root command (it always exists); guard a different tool, including a fallback name.
- A candidate query must be read-only and bounded: prefer a local or cached source, cap the result count, and wrap network or slow calls in a timeout.
- A candidate whose first field starts with `__argc_` is a control line; never emit ordinary values with that prefix or the internal `__argc_fn=`/`__argc_multi=` lines (argc generates them).
- A fragment `choices` list whose entries carry descriptions is rendered by assembly as a generated `_static_*` function in `STATIC`, so those values follow the same protocol; an all-empty-description list stays a plain `[a|b]` argc choice.

## 2. Context variables

Environment:

| Variable | Meaning |
|---|---|
| `ARGC_COMPGEN` | `1` during completion. |
| `ARGC_CWORD` | Current word after argc's completion split point; `--option=value` gives `value`. |
| `ARGC_LAST_ARG` | Full last argument, including an `--option=value` prefix and quotes. |
| `ARGC_OS` | `linux`, `macos`, or `windows`. |
| `ARGC_COMPLETIONS_ROOT` | Repository root, exported by shell integrations and verify. |

Argc-generated variables work as usual: `$argc_<param>`, arrays for multi-value parameters, and `${argc_name:-}`. The id is usually the long name with `-` replaced by `_` (`-C/--directory` -> `$argc_directory`); `argc__positionals` includes the current word (possibly empty).

| Variable | Meaning |
|---|---|
| `argc__args` | All command-line arguments, including the program name. |
| `argc__positionals` | Positionals only; subcommand names excluded. |
| `argc__cmd_arg_index` | Index of the selected command name in `argc__args`. |
| `argc__cmd_fn` | Selected command function name. |
| `argc__option` | Generated variable name of the option currently being completed. |
| `argc__dash` | Number of positionals before `--`, when present. |

One function can serve several options through `argc__option` (`<SKILL_ROOT>/references/compgen-recipes.md` §*Shared function across options*).

## 3. Path completion

Prefer notation over a function:

```sh
# @option --output <file>
# @option --cwd <dir>
# @option --config <path>
# @arg path...
```

`FILE`, `PATH`, `DIR`, `FOLDER` are case-insensitive and match inside longer names (`<CONFIG_FILE>`, `<OUTPUT_DIR>`). `FILE`/`PATH` offer files and directories; `DIR`/`FOLDER` directories only. Append `:<exts>` to filter files:

```sh
# @option --config <FILE:.json,jsonc>
```

A function can request paths at runtime with `__argc_value` and `__argc_cd`; `_argc_util_comp_path` wraps the common cases (`<SKILL_ROOT>/references/compgen-helpers.md` §2).

- `path` and `file` both add file and directory candidates; `file` documents intent only.
- `dir` adds directories only; extension filters do not apply.
- `__argc_value` does not discard candidates already printed.
- `__argc_cd` changes the base directory for relative paths, not the inserted text.

## 4. Structured config files

Parse YAML, TOML, XML, or INI values with mikefarah/yq inside `_choice_*`; it is optional, so emit nothing when absent (§1 guard).

```sh
yq -r '.profiles[].name' config.yaml
yq -p toml -o yaml -r '.profiles.names[]' config.toml    # -p toml|xml|ini: format or stdin
```

## 5. Control lines and the split model

A word is split as:

```text
word     = prefix + filter
inserted = prefix + candidate + suffix
```

argc infers common splits (`--define=`, `-X`, `+`, comma/pipe-separated values). `-X` and the separator are the fragment's `prefixed`/`delimiter`; `delimiter` applies to options and args. Do not reimplement them. A function can move the split with:

| Line | Effect |
|---|---|
| `__argc_prefix=PREFIX` | Text kept before the candidate. |
| `__argc_filter=FILTER` | Text a candidate must start with. |
| `__argc_suffix=SUFFIX` | Text appended after a candidate. |
| `__argc_value=KIND` | Add path candidates (`path`, `file`, `dir`), or echo the notation when the word has no candidate source. |
| `__argc_cd=DIR` | Base directory for relative path candidates. |

Rules:

- Lines are processed in order: `__argc_filter` and `__argc_suffix` affect only later candidates, `__argc_prefix` applies to the whole set (last wins).
- A word with no candidate source is reported as `__argc_value=<NOTATION>` (for example `__argc_value=EVAL-COMMAND`) and completed as a bare value. If that appears while the fragment carries a `choice_fn`, the binding never reached the export: see `<SKILL_ROOT>/references/troubleshooting.md` §Choice functions.
- `__argc_prefix` is relative to the prefix argc already split off: for `--define=mode=d`, emit only `mode=`.
- Save `ARGC_CWORD` before changing the filter; the filter does not change it.
- Before a separator only `__argc_filter` is usually needed; after a separator set both.
- Put `\0` on a control line when the suffix must not add a trailing space:

  ```sh
  printf '__argc_suffix=:\0\n'
  ```

For example, `git add src/ma<TAB>`:

```text
__argc_prefix=src/
__argc_filter=ma
main.rs
```

The candidate is `main.rs`, not `src/main.rs`; argc inserts the prefix.

## 6. Debugging

### Candidate checks

`generic` is the raw candidate view, control lines included; it is the candidate oracle, while shell-specific modes post-process the list and cannot assert values.

Assert values with the helper: it runs `argc --argc-compgen generic`, strips NULs, keeps the value column, and drops `__argc_*` control lines, so a NUL cannot silently fail a match:

```sh
bash <SKILL_ROOT>/scripts/test-compgen.sh -x out.txt <completion.sh> <root> --output ''
bash <SKILL_ROOT>/scripts/test-compgen.sh -e '^out\.' -a '^tmp' <completion.sh> <root> <sub> --foo ''
```

It fails on a non-zero exit, a timeout (`-t`, default 5s), or an error line on stderr, and lists candidates when an assertion fails; `--list` writes values to stdout, the rest to stderr. Read the raw stream only for nospace (`\0`), a control line (`__argc_prefix`, ...), or prefix/suffix behavior (`... | sed -n '1,5p' | od -c`); an empty filtered list is not evidence that nothing was offered.

The final word is the word being completed; `''` lists all, `--` lists long options. Keep `--foo value` as two words and `--foo=value` as one (`--foo= ''` is not the equals form). A root-option label ends at the option name; extra tokens shift the test word.

### Run a function directly

There is no `argc choice-fn` subcommand in argc 1.24. Use the completion engine, or source the block and call the function inside a wrapper:

```sh
# End-to-end
argc --argc-compgen generic <completion.sh> <root> <args> ''

# Function only: source the CHOICES block, then call it
bash -c '
    script=$1; shift
    eval "$(sed -n "/^# >>> CHOICES/,/^# <<< CHOICES/p" "$script" | sed "1d;\$d")"
    run() { "$@"; }
    run "$@"
' _ <completion.sh> _choice_foo
```

`--argc-compgen` sets `ARGC_COMPGEN`, `ARGC_CWORD`, `ARGC_LAST_ARG`, and `ARGC_OS`. Do not declare `local`/`declare` at the harness top level; wrap them in a function (like `run`). The harness does not emulate argc's split, so set `ARGC_CWORD`/`ARGC_LAST_ARG` when read, and `ARGC_COMPLETIONS_ROOT` when calling `_argc_util_*`. The `sed` range needs a `CHOICES` block: a script without dynamic functions has none, so it has no functions to source either.

### Probing tag syntax

Use a scratch script and avoid the two traps that hide results:

- Define every `_choice_*` the probe references (a stub such as `_choice_probe() { :; }`); a helper call needs `_argc_utils.sh` sourced, or use a static `[a|b]`. A missing bound function makes `argc --argc-export` exit 1 with `_choice_x(line N) is missing` on stderr and a partly useful export.
- Keep streams apart: write stdout to a file and read stderr separately (`<SKILL_ROOT>/SKILL.md` §Inspection). After rewriting a scratch script (`sed`, `cat`, ...), re-read it before an edit or write tool, or a stale-read guard rejects the change.

```sh
argc --argc-export /tmp/probe.sh >/tmp/probe.export.json
jq -c '.flag_options' /tmp/probe.export.json
```

Validate a probe's shape with `<SKILL_ROOT>/scripts/validate-fragment.jq` before copying it into a fragment.

### No candidates

Isolate in four steps:

1. Tag rendered? `grep -nE '@arg|@option' <completion.sh>`
2. Engine calls it? `argc --argc-compgen generic <completion.sh> <root> <args> ''`
3. Function works? Use the direct-call harness above.
4. Helper works? Call the parser/query directly against a fixture file.

Common causes: output protocol mismatch (helper prints `_TARGET`, reader matches `T`); `local`/`declare` at the harness top level; empty `argc_directory`/`argc_file` from a guessed id; a missing tool without a `command -v` guard.

Inspect context when needed:

```sh
declare -p ARGC_CWORD ARGC_LAST_ARG argc__positionals argc__option >&2
```

If still unclear, use the symptom index in `<SKILL_ROOT>/references/troubleshooting.md`. A compgen failure (non-zero exit, printed error, or timeout) usually means a missing `command -v` guard; a missing root command can only occur in the direct-call harness.

## Sources

- `<REPO_ROOT>/utils/_argc_utils.sh`
- `<SKILL_ROOT>/references/` (this directory)
- argc [Compgen](https://github.com/sigoden/argc/blob/main/docs/compgen.md)
- argc [Variables](https://github.com/sigoden/argc/blob/main/docs/variables.md)
- argc [Comment Tags](https://github.com/sigoden/argc/blob/main/docs/comment-tags.md)
- mikefarah/yq [documentation](https://mikefarah.gitbook.io/yq/)
