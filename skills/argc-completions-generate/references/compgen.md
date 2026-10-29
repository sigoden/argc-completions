# Compgen protocol and choice-function reference

Dynamic-completion spec for the `CHOICES` block: protocol, context, split model, helpers, recipes, debugging. Read by section; workflow lives in `<SKILL_ROOT>/references/add-choice-fns.md` (no workflow steps here). Shell snippets follow `<SKILL_ROOT>/references/setup.md`.

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

## 6. Repository helpers

All 19 helpers live in `<REPO_ROOT>/utils/_argc_utils.sh` (authoritative); the index picks one, and its `####` entry has the details (`grep -n '^#### ._argc_util_comp_path' <SKILL_ROOT>/references/compgen.md`). Every sample is a complete, copy-pasteable function for the `CHOICES` block (`_choice_*` for a tag-bound entry point, `_helper_*` for one it calls): a tag binds the function name, the helper call is its body, and what it prints is the candidate list. An undefined `_choice_*` name is a data source.

Keep one guard near the top of `CHOICES`:

```sh
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi
```

### Helper index

| Helper | Use when |
|---|---|
| `_argc_util_comp_path` | Paths, directories only, or extension filters. |
| `_argc_util_comp_parts` | One segment from a flat list of complete values (`rev:path`). |
| `_argc_util_comp_multi` | One occurrence holding `a,b,c`; typed values disappear. |
| `_argc_util_comp_kv` | Fixed keys, a different value source per key (here-doc table). |
| `_argc_util_comp_tv` | Positional tag-value sequence (`ip ... dev eth0`). |
| `_argc_util_mode_kv` | Dynamic keys; splits only, you print candidates. |
| `_argc_util_mode_parts` | N parts, a different query per position (`u:name:rwx`). |
| `_argc_util_transform` | Rewrite the value, description, or nospace marker. |
| `_argc_util_transform_table` | Select columns from an aligned table with a header. |
| `_argc_util_filter` | Drop candidates whose whole value is already present. |
| `_argc_util_strip_ansi` | Remove CSI colors and backspace overstrikes before parsing. |
| `_argc_util_has_path_prefix` | Switch between path completion and a name or command source. |
| `_argc_util_comp_command` | Executable names found on `PATH`. |
| `_argc_util_comp_subcommand` | The value is another command plus its arguments. |
| `_argc_util_path_resolve` | Join or clean paths, expand `CONFIG_DIR`/`CACHE_DIR`. |
| `_argc_util_path_search_parent` | Find a project marker from the working directory upward. |
| `_argc_util_cache` | Cache a slow or remote query. |
| `_argc_util_parallel` | Merge several independent candidate sources. |
| `_argc_util_param_select_options` | Forward wrapper-level options to the delegated command. |

Rules: argc filters candidates, so never pre-filter (§1), and never split a `prefixed`/`delimiter` word yourself (§5). Close pairs: `comp_parts`/`mode_parts` (project a known list vs query each part), `comp_kv`/`mode_kv` (fixed vs runtime keys), `comp_path`/`has_path_prefix` (path only vs path-or-command switch).

### Splitting and value shapes

#### `_argc_util_comp_path [dir] [prefix=] [filter=] [suffix=] [exts=] [cd=]`

Complete paths, directories only, or files with allowed extensions. Emits `__argc_value=path[:exts]` or `dir` plus the split controls; prefer §3 notation when the tag can carry it.

```sh
# exts= keeps --config to JSON; suffix=: leaves the word open; cd= rebases the paths.
_choice_config() { _argc_util_comp_path exts=.json,jsonc; }

_choice_mount() { _argc_util_comp_path suffix=:; }

_choice_root_file() { _argc_util_comp_path "cd=$argc_root"; }
```

Notes: only the keys in the signature are read (`isdir`, `ext=`, `exts:.json` are ignored), and `suffix` skips directories.

#### `_argc_util_comp_parts <sep> [filter] [prefix]`

Use when the next segment is projected from a flat list of complete values: repository paths, `rev:path`, dotted keys. Stdin holds the values; it prints the split, offers one segment, and marks a segment ending at the separator with `\0`.

```sh
# jj file list: src/main.rs
_choice_repo_file() {
    jj file list | _argc_util_comp_parts /
}
```

Notes: sets `argc__parts_prefix/filter/values/len`; `[filter]`/`[prefix]` continue an outer split (`rev:path`). A single line prints whole when it misses the prefix; use `mode_parts` when each segment needs its own query.

#### `_argc_util_comp_multi <sep> [filter] [prefix]`

Use when one occurrence accepts `a,b,c` and typed values must disappear.

```sh
# cp --preserve=mode,ownership,...
_choice_preserve() {
    cat <<-'EOF' | _argc_util_comp_multi ,
mode	file mode bits
ownership	user and group ownership
timestamps	access and modification times
all	all attributes
EOF
}
```

Notes: removes earlier values, keeps descriptions, and marks every candidate with `\0` so typing continues; argc already splits a `delimiter`+`repeatable` word (§5), so pass `[filter]`/`[prefix]` only for a caller-made split.

#### `_argc_util_comp_kv <sep> [filter] [prefix]`

Use when keys are known but each value source differs: `key=value` lines, `;;` adding a description, a bare `key` for a flag, and a value that is a comma list, a backtick command, `__argc_value=file`, or empty (free text).

```sh
# ssh -o KEY=VALUE
_choice_ssh_option() {
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

Use when the command takes positional tags followed by values: `ip address add ... dev eth0`, `ifconfig eth0 mtu 1500`, `route add ... gw ...`.

```sh
# ip address add ... dev <TAB>
_choice_address_add() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;device name
scope=`_choice_ip_scope`;;address scope
EOF
}
```

Notes: no arguments, separator always `=`; the preceding positional picks the value and a consumed tag is hidden. `tag=cmd1;cmd2` gives one value per following token, `tag=` leaves the value free, a bare `tag` is a flag.

#### `_argc_util_mode_kv <sep> [filter]`

Use when keys are dynamic and the value depends on the key: `host:path`, `rev:path`, `pod=image`. It only splits and sets variables; the function prints candidates itself.

```sh
# scp host:path
_choice_scp_path() {
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

Use when a word has N parts and each position needs a different query: `u:name:rwx`, `container:/path`, `project:target:config`.

```sh
# u:name:rwx
_choice_acl() {
    _argc_util_mode_parts :
    case "$argc__parts_len" in
    1) printf '%s:\0\n' u g m o ;;
    2) compgen -u | _argc_util_transform suffix=: nospace ;;
    *) printf '%s\n' r w x rw rx wx rwx ;;
    esac
}
```

Notes: prefix and filter are already printed, `argc__parts_values` holds the parts including the current partial one, and `argc__parts_len` is their count (≥1). No list is consumed; each branch picks its own source.

### Candidate shaping

#### `_argc_util_transform <spec...>`

Use to rewrite the value, the description, or the nospace marker. Specs: `format=<sep>`, `prefix=<text>`, `suffix=<text>`, `nospace`, `space`, `nospaceIfEnd=<text>`, `color=<name>[,<style>]`.

```sh
# env: NAME, value as description
_choice_env_var() { env | _argc_util_transform format==; }
```

Notes: `format=` comes first and re-splits raw `value<sep>description`; `prefix`/`suffix` edit the value; `nospaceIfEnd=` sees the value before that same call rewrites it; `color` renders only in zsh/PowerShell.

#### `_argc_util_transform_table <cols> [joins]`

Use when a tool prints an aligned table with a header. `cols` is a `;`-separated list of header names, `joins` separates the selected columns, and an empty join concatenates.

```sh
# gh ruleset list: ID<TAB>NAME
_choice_ruleset() {
    gh ruleset list $(_argc_util_param_select_options --repo) | _argc_util_transform_table 'ID;NAME' '\t'
}
```

Notes: every name must occur on the same header line, which supplies the widths. A selected column that is last in the source is cut at its header width; prefer a column followed by another, or `gawk`.

#### `_argc_util_filter [-i] <words> [sep]`

Use to drop candidates whose whole value matches one of `<words>`, or with `-i` to keep only those; an empty `sep` splits `<words>` into characters.

```sh
# drop r/w/x already typed in the word
_choice_perm_remaining() { _choice_perm | _argc_util_filter "$ARGC_CWORD" | _argc_util_transform nospace; }
```

Notes: whole-value match, not a prefix; descriptions and the `\0` marker survive. Use it for an already-present set, not for ordinary prefix filtering.

#### `_argc_util_strip_ansi`

Use before parsing output with CSI color codes or backspace overstrikes.

```sh
_choice_vfox_version() { vfox list | _argc_util_strip_ansi | sed -n 's/^.. //p'; }
```

Notes: a stdin filter; keep it before `sed` or `gawk`.

### Command values

#### `_argc_util_has_path_prefix [word]`

Use to choose between path completion and a name or command source; returns 0 for `.`, `/`, `~`, and a Windows drive prefix, and the default word is `ARGC_CWORD`.

```sh
# --exec: a PATH command, or a local script path
_choice_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _argc_util_comp_command
}
```

Notes: the path branch preserves a typed path, the name branch is any domain source. The full switch is §7 *Command-valued option*.

#### `_argc_util_comp_command`

Use for executable command names, as the non-path branch of `_choice_command` above. It emits real `PATH` executables only: builtins, keywords, aliases, functions, directories, and non-executable files are skipped, a name found in several `PATH` dirs appears once, and Windows drops `.dll` while stripping `.exe`/`.com`/`.bat`/`.cmd`. Order follows `PATH`; sort when stable order matters.

Notes: it does not complete path-looking words, so always pair it with `_argc_util_has_path_prefix` and `_argc_util_comp_path` (§7 *Command-valued option*).

#### `_argc_util_comp_subcommand <index> [prepend...]`

Use when the value is another command plus its arguments. Slices `argc__positionals` from `index`, prepends the extra words, replaces the last word with `ARGC_LAST_ARG`, and asks argc for the target's completion.

```sh
# sudo CMD ... = index 0, docker exec NAME CMD ... = index 1
_choice_exec_args() { _argc_util_comp_subcommand 1; }

_choice_sudo_args() { _argc_util_comp_subcommand 0; }
```

Notes: `0` = the command is the first positional, `1` = one fixed positional precedes it; `prepend...` carries the real CLI name when the wrapper renames it, and `(cd ... && ...)` runs elsewhere. A target without an installed completion yields no candidates.

### Project context and external calls

#### `_argc_util_path_resolve [-p|-u] <parts...>`

Use to join and clean paths, or to address the platform `CONFIG_DIR`/`CACHE_DIR`; with no parts it reads stdin.

```sh
# accounts in the hosts file under CONFIG_DIR
_choice_gh_account() {
    local hosts="$(_argc_util_path_resolve CONFIG_DIR gh/hosts.yml)"
    [[ -f $hosts ]] || return 0
    gawk '/^[^ \t]/ { sub(/:$/, ""); print }' "$hosts"
}
```

Notes: sentinels expand per `ARGC_OS`, any other first part is ordinary, `-p`/`-u` convert only on Windows, `..` resolves, and too many leading `..` exits non-zero.

#### `_argc_util_path_search_parent [-p] <file...>`

Use to find a project marker from the current directory upward; returns the absolute first match, or its directory with `-p`.

```sh
# module packages, from the nearest go.mod
_choice_go_package() {
    local root="$(_argc_util_path_search_parent -p go.mod)"
    [[ -n $root ]] || return 0
    (cd "$root" && go list ./...)
}
```

Notes: only regular files match, the working directory is restored, and a miss prints nothing with status 0, so test the value.

#### `_argc_util_cache <seconds> <fn> [key]`

Use for a slow or remote query. Entries live in `<REPO_ROOT>/cache/argc-util-cache` and expire by mtime.

```sh
# keyed by the working directory
_choice_task() { _argc_util_cache 3600 _choice_task_uncached "gradle__tasks:$PWD"; }
```

Notes: the key is the command path plus the function name unless given; a `name:payload` key hashes the payload with `openssl sha1`, a plain `name` avoids that. Empty output is not reused, so guard auxiliary tools inside the uncached function.

#### `_argc_util_parallel <fn> [args] ::: <fn> [args] ...`

Use when several independent sources contribute to one value: refs, units, images.

```sh
_choice_ref() { _argc_util_parallel _choice_local_branch ::: _choice_remote_branch ::: _choice_tag; }
```

Notes: each function runs in its own process and outputs are merged. It resolves `$0`, so it works only in a script argc evaluates; order is not a contract, and each branch must be self-contained.

#### `_argc_util_param_select_options <option...>`

Use in a thin wrapper so every query sees the same configuration: `git -C`, `docker --context`, `kubectl -n`. Only wrapper-level options are available.

```sh
# tags of the repository -C points at
_choice_git_tag() { _helper_git tag --sort=-creatordate | head -n 50; }

_helper_git() { git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"; }
```

Notes: the wrapper is `_helper_*`: `CHOICES` accepts only `_choice_*` and `_helper_*`. `-C` gives `$argc_C` and `--git-dir` gives `$argc_git_dir`, so pass the spelling that generated the variable; a flag prints alone, and a forwarded value must be space-free because the caller re-splits it.

Tool-specific values have no helper; write the query inline (§7): `git for-each-ref`/`branch`/`tag`/`remote`, `docker`/`podman image ls`, `ssh -Q cipher`/`hostkeyalgorithms`, or a `comp_kv`/`comp_multi` table for HTTP/ssh-style enumerations.

## 7. Recipes

Each recipe composes §6 helpers with §1–§5 protocol. Pick a helper from the §6 *Helper index*; use `_argc_util_comp_multi` only for lists the parameter does not declare `delimiter`+`repeatable` (§5). The recipes below add parsing or a cross-word dependency.

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

Use when the key is runtime data and the value query depends on it.

### Multi-part value

```sh
_choice_unstaged_file() {
    _git status --porcelain | gawk '{
        if (substr($0, 2, 1) != " ") print substr($0, 4)
    }' | _argc_util_comp_parts /
}
```

Parse the source into complete values, then project them with `_argc_util_comp_parts` (§6); use `mode_parts` when each segment needs its own query.

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
        _argc_util_comp_subcommand 0
    fi
}
```

A terminated option stores a whole command line: copy its values into `argc__positionals` with a nameref, complete the executable while there are fewer than two words, then delegate with `_argc_util_comp_subcommand 0`. `argc__option` holds the generated variable name (`argc_command`), not the array, and `"${!argc__option}"` yields only the first element. `_choice_command` uses `_argc_util_comp_command` (§6): the wrapper executes it in another process, so only real `PATH` executables are valid, not shell builtins or aliases. A terminated positional calls the same function without the nameref branch.

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

Use when several options share a source or one is split across items; switch on `argc__option`, or read `"${!argc__option}"` for a repeatable option (§2).

## 8. Debugging

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
- Never merge streams: write stdout to a file and read stderr separately (`<SKILL_ROOT>/SKILL.md` §Inspection). After rewriting a scratch script (`sed`, `cat`, ...), re-read it before an edit or write tool, or a stale-read guard rejects the change.

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
