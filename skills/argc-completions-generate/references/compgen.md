# Compgen protocol and choice-function reference

Dynamic-completion spec for the `choice-fns` block: protocol, context, split model, helpers, recipes, debugging. Read by section; workflow lives in `<SKILL_ROOT>/references/add-choice-fns.md` (no workflow steps here). Shell snippets follow `<SKILL_ROOT>/references/setup.md`.

## Section map

| Section | Use for |
|---|---|
| §1 Candidate protocol | Output format, descriptions, colors, guards. |
| §2 Context variables | `ARGC_*`, `argc__*`, generated `$argc_<id>` values. |
| §3 Path completion | Notation and runtime path requests. |
| §4 Structured config files | YAML, TOML, XML, INI via optional `yq`. |
| §5 Control lines and the split model | `__argc_*`, delimiters, prefixed words. |
| §6 Repository helpers | `_argc_util_*` signatures and notes. |
| §7 Recipes | Composed functions for common value shapes. |
| §8 Debugging | Candidate checks, direct call, no-candidate flow. |

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

One function can serve several options through `argc__option` (§7 *Shared function across options*).

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

A function can request paths at runtime with `__argc_value` and `__argc_cd`; `_argc_util_comp_path` wraps the common cases (§6).

- `path` and `file` both add file and directory candidates; `file` documents intent only.
- `dir` adds directories only; extension filters do not apply.
- `__argc_value` does not discard candidates already printed.
- `__argc_cd` changes the base directory for relative paths, not the inserted text.

## 4. Structured config files

Parse YAML, TOML, XML, or INI values with mikefarah/yq inside `_choice_*`; it is optional, so emit nothing when absent (§1 guard).

```sh
command -v yq >/dev/null 2>&1 || return 0

yq -r '.profiles[].name' config.yaml
yq -p toml -o yaml -r '.profiles.names[]' config.toml
yq -p xml -o yaml -r '.root.item[]."+@name"' config.xml
yq -p ini -o yaml -r '.section.key' config.ini
```

Use `-p <format>` when the input format is not clear from the extension or when reading stdin.

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

## 6. Repository helpers

All 19 helpers live in `<REPO_ROOT>/utils/_argc_utils.sh` (authoritative); read one only when this index is not enough (`grep -n '^_argc_util_' <REPO_ROOT>/utils/_argc_utils.sh`). Examples assume the guard; an undefined `_choice_*` is a data source.

- `comp_*` helpers resolve a word to candidates: `comp_path`, `comp_parts`, `comp_multi`, `comp_kv`, and `comp_tv` split it first, `comp_command` lists `PATH` executables, and `comp_command_args` delegates a command line. `mode_*` splits only and leaves candidates to the caller.
- argc filters candidates; never pre-filter to the typed prefix (§1).
- Do not split a word the fragment declares `prefixed` or `delimiter` (§5).

Keep one guard near the top of `choice-fns`:

```sh
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi
```

The close pairs are `comp_parts`/`mode_parts` (project a known list vs query each part), `comp_kv`/`mode_kv` (fixed keys vs runtime keys), and `comp_path`/`has_path_prefix` (path only vs path-or-name switch). A command-or-path word adds `comp_command` on the name side.

### Word splitting and command values

#### `_argc_util_comp_path [dir] [prefix=] [filter=] [suffix=] [exts=] [cd=]`

Use for paths, directories only, or extension filters; emits `__argc_value=path[:exts]` or `dir` plus the split controls. Prefer §3 notation when the tag can carry it.

```sh
_argc_util_comp_path
_argc_util_comp_path dir
_argc_util_comp_path exts=.json,jsonc
_argc_util_comp_path prefix=--file= suffix=:
_argc_util_comp_path "cd=$argc_root"

_choice_config() { _argc_util_comp_path exts=.json,.jsonc; }
_choice_mount()  { _argc_util_comp_path suffix=:; }
_choice_cert()   { _argc_util_comp_path prefix=@ filter="${ARGC_CWORD:1}"; }
```

Notes: only `dir`, `exts=`, `prefix=`, `filter=`, `suffix=`, and `cd=` are read; `isdir`, `ext=`, and `exts:.json` are ignored, and `suffix` skips directories.

#### `_argc_util_comp_parts <sep> [filter] [prefix]`

Use when the next segment is projected from a flat list of complete values: repository paths, `rev:path`, dotted keys. Prints the split, offers one segment, and marks a segment ending at the separator with `\0`.

```sh
_choice_path() {
    jj file list | _argc_util_comp_parts /
}
```

Notes: sets `argc__parts_prefix/filter/values/len`; `[filter]`/`[prefix]` continue an outer split (`rev:path`). A single line prints whole when it misses the prefix; use `mode_parts` when each segment needs its own query.

#### `_argc_util_comp_multi <sep> [filter] [prefix]`

Use when one occurrence accepts `a,b,c` and typed values must disappear; sets the split, removes earlier values, and marks every candidate with `\0` so typing continues.

```sh
_choice_type() {
    cat <<-'EOF' | _argc_util_comp_multi ,
b	block (buffered) special
c	character (unbuffered) special
d	directory
EOF
}
```

Notes: descriptions survive; argc already splits a `delimiter`+`repeatable` word (§5), so pass `[filter]`/`[prefix]` only to continue a caller-made split.

#### `_argc_util_comp_kv <sep> [filter] [prefix]`

Use when keys are known but each value source differs. The here-doc holds `key=value` lines: `;;` adds a description, a bare `key` is a flag, and a value may be a comma list, a backtick command, `__argc_value=file`, or empty (free text).

```sh
_choice_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
AddKeysToAgent=yes,ask,confirm,no;;agent forwarding
CertificateFile=__argc_value=file;;certificate file
HostKeyAlgorithms=`_choice_hostkeyalgorithms`;;algorithms
Port=;;free text
EOF
}
```

Notes: `*=...` is the unknown-key fallback; without it nothing prints. Pass `"$argc__kv_filter" "$argc__kv_prefix"` to continue an outer split.

#### `_argc_util_comp_tv`

Use when the command takes positional tags followed by values: `ip address add ... dev eth0`, `ifconfig eth0 mtu 1500`, `route add ... gw ...`. The preceding positional selects the value; consumed tags are hidden.

```sh
_choice_address_add() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;device name
local=;;local address
scope=`_choice_ip_scope`;;address scope
EOF
}
```

Notes: takes no arguments; the separator is always `=`. `tag=cmd1;cmd2` gives one value per following token, `tag=` leaves it free, and a consumed tag hides unless it is the word being typed.

#### `_argc_util_mode_kv <sep> [filter]`

Use when keys are dynamic and the value depends on the key: `host:path`, `rev:path`, `pod=image`. It only splits and sets variables; print candidates yourself.

```sh
_choice_path() {                 # scp host:path
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        compgen -A hostname | _argc_util_transform suffix=: nospace
        _argc_util_comp_path
    else
        ssh -o 'Batchmode yes' "$argc__kv_key" command ls -a1dp "$argc__kv_filter*" 2>/dev/null \
            | _argc_util_comp_parts / "$argc__kv_filter" "$argc__kv_prefix"
    fi
}
```

Notes: before the separator `argc__kv_key`/`argc__kv_prefix` are empty and `argc__kv_filter` is the word; after it the word is split. Fixed keys mean `comp_kv`.

#### `_argc_util_mode_parts <sep> [filter] [prefix]`

Use when a word has N parts and each position needs a different query: `u:name:rwx`, `container:/path`, `project:target:config`. Splits and sets `argc__parts_len`/`argc__parts_values`; print candidates for the current part.

```sh
_choice_acl() {
    _argc_util_mode_parts ':'
    if [[ "$argc__parts_len" -lt 2 ]]; then
        printf '%s:\0\n' u g m o
    elif [[ "$argc__parts_len" -eq 2 ]]; then
        if [[ "${argc__parts_values[0]}" == u ]]; then
            compgen -u | _argc_util_transform suffix=: nospace
        else
            compgen -g | _argc_util_transform suffix=: nospace
        fi
    else
        printf '%s\n' r w x rw rx wx rwx
    fi
}
```

Notes: `argc__parts_values` holds the split parts including the current partial one, `argc__parts_len` their count (≥1); prefix and filter are already printed. No list is consumed; each branch picks its own source.

### Candidate shaping

#### `_argc_util_transform <spec...>`

Use to rewrite the value, description, or nospace marker. Specs: `nospace`, `space`, `nospaceIfEnd=<text>`, `prefix=<text>`, `suffix=<text>`, `format=<sep>`, `color=<name>[,<style>]`.

```sh
env | _argc_util_transform format==
env | _argc_util_transform format== | _argc_util_comp_multi ,
docker exec "$argc__kv_key" ls -1p "$dir" | _argc_util_transform nospaceIfEnd=/
```

Notes: `format=` first, re-splitting raw `value<sep>description`; `prefix`/`suffix` edit the value; `color` renders only in zsh/PowerShell; `nospace`/`space` set/clear `\0`; `nospaceIfEnd` adds it only when the value ends with that text.

#### `_argc_util_transform_table <cols> [joins]`

Use when a tool prints an aligned table with a header. `cols` is a `;`-separated list of header names; `joins` separates the selected columns, and an empty join concatenates.

```sh
_choice_ruleset() {
    gh ruleset list $(_argc_util_param_select_options --repo) |
        _argc_util_transform_table 'ID;NAME' '\t'
}
```

Notes: every name must occur in the same header line, which supplies the widths. A selected column that is last in the source table is cut at its header width; prefer a column followed by another, or `gawk`.

#### `_argc_util_filter [-i] <words> [sep]`

Use to remove candidates whose value exactly matches one of `<words>`, or with `-i` to keep only those. `<words>` is split on `sep`; an empty `sep` splits into characters.

```sh
_choice_mode() {
    _choice_perm | _argc_util_filter "$ARGC_CWORD" | _argc_util_transform nospace
}
```

Notes: matches the whole value, not a prefix; use for an already-present set, not ordinary prefix filtering.

#### `_argc_util_strip_ansi`

Use before parsing output with CSI color codes or backspace overstrikes.

```sh
_choice_version() {
    vfox list | _argc_util_strip_ansi | sed -n 's/^.. //p'
}
```

Notes: a stdin filter; keep it before `sed` or `gawk`.

#### `_argc_util_has_path_prefix [word]`

Use to choose between path completion and a name or command source; it returns 0 for `.`, `/`, `~`, and a Windows drive prefix, and the default word is `ARGC_CWORD`.

```sh
_choice_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _argc_util_comp_command
}
```

Notes: the path branch preserves a typed path; the name branch can be any domain source, with `_argc_util_comp_command` for executables (§6).

#### `_argc_util_comp_command`

Use for executable command names. It scans `PATH` and emits real executables only: directories and non-executable files are skipped, and a name found in several `PATH` dirs appears once. On Windows it drops `.dll` and strips `.exe`, `.com`, `.bat`, and `.cmd`.

```sh
_choice_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return 0
    fi
    _argc_util_comp_command
}
```

Notes: builtins, keywords, aliases, and functions are not candidates; only `PATH` executables are. This helper does not complete path-looking words, so pair it with `_argc_util_has_path_prefix` and `_argc_util_comp_path` (§7 *Command-valued option*). The order follows `PATH`; sort when stable order matters.

#### `_argc_util_comp_command_args <index> [prepend...]`

Use when the value is another command plus its arguments. Slices `argc__positionals` from `index`, prepends the extra words, replaces the last word with `ARGC_LAST_ARG`, and asks argc for the target's completion.

```sh
_choice_args()  { _argc_util_comp_command_args 0; }        # sudo CMD ...
_choice_exec()  { _argc_util_comp_command_args 1; }        # docker exec NAME CMD ...
_choice_git()   { _argc_util_comp_command_args 0 git; }    # tig ...
_choice_workspace_args() {
    (cd "$location" && _argc_util_comp_command_args 1 yarn) # yarn workspace NAME ...
}
```

Notes: `0` = the command is the first positional, `1` = one fixed positional precedes it. Delegation uses the target's installed completion (absent: no candidates). Prepend the real CLI when the wrapper renames it; wrap in `(cd ... && ...)` to run elsewhere.


### Context and external sources

#### `_argc_util_path_resolve [-p|-u] <parts...>`

Use to join and clean paths, or to address the platform `CONFIG_DIR`/`CACHE_DIR`. With no parts it reads stdin.

```sh
host_yml="$(_argc_util_path_resolve CONFIG_DIR gh/hosts.yml)"
manifest="$(_argc_util_path_resolve -p "$workspace_root" Cargo.toml)"
bin_dir="$(_argc_util_path_resolve -u "$(npm root)" .bin)"
```

Notes: sentinels expand per `ARGC_OS`, any other first part is ordinary; `-p`/`-u` convert only on Windows; `..` resolves, and too many leading `..` exits non-zero.

#### `_argc_util_path_search_parent [-p] <file...>`

Use to find a project marker from the current directory upward. Returns the absolute first match, or its directory with `-p`.

```sh
pkg_json="$(_argc_util_path_search_parent package.json)"
root_dir="$(_argc_util_path_search_parent -p go.mod)"
```

Notes: not found means empty output and status 0, so test the value. It only looks for files (`-f`), restores the working directory, and returns a real path.

#### `_argc_util_cache <seconds> <fn> [key]`

Use for a slow or remote query. The cache lives in `<REPO_ROOT>/cache/argc-util-cache`, expires by mtime, and is keyed by the command path plus the function name unless a key is given.

```sh
_choice_task() {
    _argc_util_cache 3600 _choice_task_uncached "gradle__tasks:$PWD"
}
```

Notes: key everything that changes the result: a `name:payload` key hashes the payload with `openssl sha1`, a plain `name` avoids that. Empty output is not reused; guard auxiliary tools inside the uncached function.

#### `_argc_util_parallel <fn> [args] ::: <fn> [args] ...`

Use when several independent sources contribute to one value: refs, units, images. Each function runs in its own process; outputs are merged.

```sh
_choice_ref() {
    _argc_util_parallel _choice_local_branch ::: _choice_remote_branch ::: _choice_tag
}
```

Notes: use only in a script argc evaluates (it resolves `$0`); output order is not a contract, and each branch must be self-contained.

#### `_argc_util_param_select_options <option...>`

Use in a thin wrapper so every query sees the same configuration: `git -C`, `docker --context`, `kubectl -n`. Prints an option and its value when the generated `$argc_<name>` variable is set; a flag prints only the option.

```sh
_git() {
    git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"
}

_kubectl() {
    kubectl $(_argc_util_param_select_options --namespace) "$@"
}
```

Notes: `-C` gives `$argc_C`, `--git-dir` gives `$argc_git_dir`; pass the spelling that generated the variable. Only wrapper-level options are available, and forwarded values must be space-free (the caller re-splits them).

Tool-specific values have no helper; write the query inline (§7): `git for-each-ref`/`branch`/`tag`/`remote`; `docker`/`podman image ls`; `_argc_util_comp_kv`/`_argc_util_comp_multi` tables for HTTP/ssh-style enumerations; `ssh -Q cipher`/`hostkeyalgorithms`.

## 7. Recipes

Each recipe maps a value shape to the smallest function (§6 helpers, §1–§5 protocol).

Helper-backed shapes keep their code in §6:

| Shape | Helper |
|---|---|
| Fixed key=value table with a varying value source | `_argc_util_comp_kv` |
| Positional tag-value sequence | `_argc_util_comp_tv` |
| One occurrence holding `a,b,c` | `_argc_util_comp_multi` |
| Executable command names | `_argc_util_comp_command` |
| Delegating to another command | `_argc_util_comp_command_args` |
| Aligned table with a header | `_argc_util_transform_table` |

Use `_argc_util_comp_multi` only for lists the parameter does not declare `delimiter`+`repeatable` (§5).

The recipes below compose helpers or add parsing.

### Dynamic key split

```sh
_choice_env() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        compgen -e | _argc_util_transform suffix== nospace
    else
        compgen -v
    fi
}
```

Use when the key is runtime data and the value query depends on it; one branch handles the key side, the other the value side.

### Multi-part value

```sh
_choice_unstaged_file() {
    _git status --porcelain | gawk '{
        if (substr($0, 2, 1) != " ") print substr($0, 4)
    }' | _argc_util_comp_parts /
}
```

Parse the source into complete values, then project them with `_argc_util_comp_parts` (§6); switch to `mode_parts` when each segment needs its own query.

### Nested namespace

```sh
_choice_cp() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        if _argc_util_has_path_prefix; then
            printf '__argc_value=path\n'
            return
        fi
        _choice_container | _argc_util_transform suffix=: nospace
    else
        _argc_util_mode_parts / "$argc__kv_filter" "$argc__kv_prefix"
        if [[ -z "$argc__kv_filter" ]]; then
            printf '/\0\n'
            return
        fi
        docker exec "$argc__kv_key" ls -1p "$argc__parts_local_prefix" |
            _argc_util_transform nospaceIfEnd=/
    fi
}
```

Use for `namespace:path` (a container, pod, host, or archive plus an inner path): the left side offers names with `suffix=:`, the right switches to `mode_parts /`. Keep the local path fallback, quote the remote path, guard the remote command, and cache slow lists.

### Command-valued option

```sh
# @option --command~[`_choice_command_args`] <COMMAND>

_choice_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return 0
    fi
    _argc_util_comp_command
}

_choice_command_args() {
    if [[ -n "${argc__option:-}" ]]; then
        local -n values="$argc__option"
        argc__positionals=("${values[@]}")
    fi
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        _choice_command
    else
        _argc_util_comp_command_args 0
    fi
}
```

A terminated option stores a whole command line: copy its values into `argc__positionals` with a nameref, complete the executable while there are fewer than two words, then delegate with `_argc_util_comp_command_args 0`. `argc__option` holds the generated variable name (`argc_command`), not the array, and `"${!argc__option}"` yields only the first element. Call `_choice_command` (§6) for the executable: the wrapper executes it in another process, so only real `PATH` executables are valid, not shell builtins or aliases. A terminated positional calls the same function without the nameref branch.

### Context-dependent candidates

```sh
_choice_files() {
    if [[ -n $argc_delete || -n $argc_list || -n $argc_x ]]; then
        if [[ -n "$argc_file" ]]; then
            _argc_util_cache 3600 _choice_ls_tar_file "tar:$argc_file" | _argc_util_comp_parts /
            return
        fi
    fi
    _argc_util_comp_path
}
```

Use when a sibling option or an earlier positional changes the value space: read `$argc_<id>`, `argc__positionals` for earlier words, and `argc__dash` when `--` changes the meaning. For a mode flag, test for a non-empty value, not `1`.

### Project context and targets

```sh
_choice_script() {
    local pkg
    pkg="$(_argc_util_path_search_parent package.json)"
    [[ -n $pkg ]] || return 0
    command -v yq >/dev/null 2>&1 || return 0
    yq '(.scripts // {}) | keys | .[]' "$pkg"
}
```

Use when candidates come from the nearest project file: find the marker upward, then parse only; never execute build tools. For a Makefile, read the files a plain invocation would read (the `-f` file, `MAKEFILES`, or `GNUmakefile`/`makefile`/`Makefile`); collect names and descriptions in source order, skip `%`, `$`, and special targets, then print from `END`; never execute recipes.

### Aggregated and cached sources

```sh
_choice_image() {
    _argc_util_cache 60 _choice_image_uncached "docker__images:$argc_host"
}
```

Use when one value has several independent sources or a slow query: combine sources with `_argc_util_parallel` (§6) and cache with a key that includes the directory, file, stack, or host. Guard external tools inside the uncached function.

### Prefixed and path-valued words

```sh
# @option -X-*[`_choice_jvm_option`]
_choice_jvm_option() {
    printf 'batch\tDisable background compilation\n'
    printf 'bootclasspath=\0\tSet the boot class path\n'
}
```

```sh
# @meta symbol +toolchain[`_choice_toolchain`]
_choice_toolchain() {
    printf '%s\n' stable beta nightly
}

# path prefixed with +
_choice_appendable_file() {
    if [[ "$ARGC_CWORD" == +* ]]; then
        _argc_util_comp_path prefix=+ filter="${ARGC_CWORD:1}"
    else
        _argc_util_comp_path
    fi
}
```

Use when the prefix is part of the word: a prefixed option (`-Xfoo`), a symbol (`+toolchain`), or a path introduced by `@`/`+`. `ARGC_CWORD` is the text after the prefix, `ARGC_LAST_ARG` the whole word; for a path, pair `prefix=` with `filter=`. A prefixed option is `prefixed: true` with `names: ["-X"]`; a symbol uses `@meta symbol +name[...]`.

### Shared function across options

```sh
_choice_value() {
    case "$argc__option" in
        argc_color) echo red green blue ;;
        argc_size)  echo small medium large ;;
    esac
}
```

Use when several options share a source or one option is split across items. `argc__option` is the generated variable name; switch on it, or read `"${!argc__option}"` for a repeatable option (§2).

## 8. Debugging

### Candidate checks

`generic` is the raw candidate view: one line per candidate, control lines included, with the optional `\0`, color, and description fields. It is the candidate oracle; the shell-specific modes exercise the shell integration and post-process the list, so they cannot assert candidate values.

Build the value list before comparing:

```sh
argc --argc-compgen generic <completion.sh> <root> <args> \
    | tr -d '\000' \
    | cut -f1 \
    | grep -v '^__argc_'
```

- `cut -f1` keeps the value; `tr -d '\000'` must come before `grep` (a NUL makes grep read the stream as binary, so `grep -x value` does not match).
- Filter `__argc_*` control lines for value assertions; keep them when checking a control line (`__argc_prefix`, `__argc_filter`, ...).
- For nospace (`\0`), control-line, or prefix/filter checks, read the raw stream without `tr`/`cut` (for example `... | sed -n '1,5p' | od -c`).
- No candidates means the filtered list is empty. A shell that displays nothing is not evidence; check `generic`.

The final word is the word being completed; `''` lists all, `--` lists long options. Keep `--foo value` as two words and `--foo=value` as one (`--foo= ''` is not the equals form). A root-option label ends at the option name; extra tokens shift the test word.

### Run a function directly

There is no `argc choice-fn` subcommand in argc 1.24. Use the completion engine, or source the block and call the function inside a wrapper:

```sh
# End-to-end
argc --argc-compgen generic <completion.sh> <root> <args> ''

# Function only: source the choice-fns block, then call it
bash -c '
    script=$1; shift
    eval "$(sed -n "/^# >>> choice-fns/,/^# <<< choice-fns/p" "$script" | sed "1d;\$d")"
    run() { "$@"; }
    run "$@"
' _ <completion.sh> _choice_foo
```

`--argc-compgen` sets `ARGC_COMPGEN`, `ARGC_CWORD`, `ARGC_LAST_ARG`, and `ARGC_OS`. Do not declare `local`/`declare` at the harness top level; wrap them in a function (like `run`). The harness does not emulate argc's split, so set `ARGC_CWORD`/`ARGC_LAST_ARG` when read, and `ARGC_COMPLETIONS_ROOT` when calling `_argc_util_*`.

### Probing tag syntax

Use a scratch script and avoid the two traps that hide results:

- Define every `_choice_*` the probe references (a stub such as `_choice_probe() { :; }`); a helper call needs `_argc_utils.sh` sourced, or use a static `[a|b]`. A missing bound function makes `argc --argc-export` exit 1 with `_choice_x(line N) is missing` on stderr and a partly useful export.
- Never merge streams: write stdout to a file and read stderr separately (`<SKILL_ROOT>/SKILL.md` §Inspection).
- After rewriting a scratch script with another command (`sed`, `cat`, ...), re-read it before using an edit or write tool; otherwise a stale-read guard may reject the change.

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

If still unclear, use the symptom index in `<SKILL_ROOT>/references/troubleshooting.md`.

### Compgen failure

A compgen failure means the function exited non-zero, printed an error, or timed out: add the missing `command -v` guard; a missing root command can only occur in the direct-call harness.

## Sources

- `<REPO_ROOT>/utils/_argc_utils.sh`
- `<SKILL_ROOT>/references/` (this directory)
- argc [Compgen](https://github.com/sigoden/argc/blob/main/docs/compgen.md)
- argc [Variables](https://github.com/sigoden/argc/blob/main/docs/variables.md)
- argc [Comment Tags](https://github.com/sigoden/argc/blob/main/docs/comment-tags.md)
- mikefarah/yq [documentation](https://mikefarah.gitbook.io/yq/)
