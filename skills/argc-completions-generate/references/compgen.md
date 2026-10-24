# Compgen protocol and choice-function reference

This is the specification for dynamic completion in the `choice-fns` block: candidate protocol, context variables, control lines, repository helpers, recipes, and debugging. It is read by section. The workflow — ownership, inventory, binding decisions, fragment edits, assembly, and testing — is in `<SKILL_ROOT>/references/add-choice-fns.md`. Do not add workflow steps here.

Shell snippets follow the portability rules in `<SKILL_ROOT>/references/setup.md`.

## Section map

| Section | Use for |
|---|---|
| §1 Candidate protocol | Output format, descriptions, colors, guards, and why functions do not pre-filter. |
| §2 Context variables | `ARGC_*`, `argc__*`, and generated `$argc_<id>` values. |
| §3 Path completion | Notation (`<file>`, `<dir>`) and runtime path requests; prefer notation. |
| §4 Structured config files | Reading YAML, TOML, XML, or INI with the optional `yq`. |
| §5 Control lines and the split model | `__argc_prefix/filter/suffix/value/cd`, delimiters, and prefixed words. |
| §6 Repository helpers | `_argc_util_*` signatures, behavior, and usage notes. |
| §7 Recipes | Complete functions for common value shapes. |
| §8 Debugging | Raw candidates, the direct-call harness, and the no-candidate flow. |

## 1. Candidate protocol

A choice function prints one candidate per line:

```text
value[\0][\t/color:<name>[,<style>]][\t<description>]
```

```sh
echo "value"
echo -e "value\0"                     # no trailing space
echo -e "value\tdescription"          # description
echo -e "value\0\tdescription"        # description, no trailing space
echo -e "value\t/color:green,bold\tBuild output"
```

- A trailing `\0` suppresses the space after the value. Put it at the end of the value field, never after the description.
- Candidate values are deduplicated by value. The first non-empty description wins; nospace is enabled if any occurrence requests it.
- Descriptions are enabled by default. `ARGC_COMPGEN_DESCRIPTION=1` forces them on; any other value disables them. `ARGC_COMPGEN_DESCRIPTION_MAX_WIDTH` defaults to 80.
- Colors: `black`, `red`, `green`, `yellow`, `blue`, `magenta`, `cyan`, `white`, `default`, optionally followed by `regular` or `bold`. Bash/fish/nushell ignore them; zsh/PowerShell render them.
- Return 0 with no output when there is nothing to offer. Do not print diagnostics to stdout; use stderr.
- Do not filter by prefix yourself; argc filters the candidates it receives. Emit the full candidate for the current part and let argc match it.
- Guard an auxiliary external tool with `command -v <tool> >/dev/null || return 0`; a missing tool must not fail completion. Never guard the completion's own root command: the script is evaluated only while that command exists, and preflight/verify already check it. Guard a different executable, including a fallback name for the root command.
- A candidate whose first field starts with `__argc_` is a control line, not a value. Do not emit ordinary values with that prefix.
- Never print the internal `__argc_fn=` or `__argc_multi=` lines; argc generates those from the declaration.

## 2. Context variables

Environment:

| Variable | Meaning |
|---|---|
| `ARGC_COMPGEN` | `1` during completion. |
| `ARGC_CWORD` | The current word after argc's completion split point. For `--option=value` it is `value`. |
| `ARGC_LAST_ARG` | The full last argument, including an `--option=value` prefix and quotes. |
| `ARGC_OS` | `linux`, `macos`, or `windows`. |
| `ARGC_COMPLETIONS_ROOT` | Repository root, exported by shell integrations and verify. |

Argc-generated parameter variables are available as usual: `$argc_<param>`, arrays for multi-value parameters, and `${argc_name:-}` for optional values. The name is the option id, usually the long name with `-` replaced by `_`: `-C/--directory` gives `$argc_directory`, `-f/--file` gives `$argc_file`. During completion, `argc__positionals` includes the current word (possibly empty). Other useful built-ins:

| Variable | Meaning |
|---|---|
| `argc__args` | All command-line arguments, including the program name. |
| `argc__positionals` | Positional arguments only; subcommand names are excluded. |
| `argc__cmd_arg_index` | Index of the selected command name in `argc__args`. |
| `argc__cmd_fn` | Selected command function name. |
| `argc__option` | Generated variable name of the option currently being completed. |
| `argc__dash` | Number of positionals before `--`, when present. |

Use `argc__option` when one function serves several options; §7 has an example.

## 3. Path completion

Prefer notation over a function:

```sh
# @option --output <file>
# @option --cwd <dir>
# @option --config <path>
# @arg path...
```

`FILE`, `PATH`, `DIR`, and `FOLDER` are case-insensitive and also match inside longer names (`<CONFIG_FILE>`, `<OUTPUT_DIR>`). `FILE`/`PATH` offer files and directories; `DIR`/`FOLDER` offer directories only. Append `:<exts>` to filter files:

```sh
# @option --config <FILE:.json,jsonc>
```

A choice function can request paths at runtime:

```sh
_choice_config() {
    printf '__argc_value=file:.toml\n'
}

_choice_dir() {
    printf '__argc_value=dir\n'
}

_choice_relative() {
    printf '__argc_cd=%s\n' "${argc_root:-.}"
    printf '__argc_value=path\n'
}
```

- `__argc_value=path` and `file` both add file and directory candidates. `file` only documents intent; it does not exclude directories.
- `__argc_value=dir` adds directories only; extension filters do not apply.
- `__argc_value` does not discard candidates already printed.
- `__argc_cd` changes the base directory for relative paths, not the inserted text.
- Use `_argc_util_comp_path` for the common cases:

  ```sh
  _argc_util_comp_path
  _argc_util_comp_path dir
  _argc_util_comp_path exts=.json,jsonc
  _argc_util_comp_path prefix=--file= suffix=:
  _argc_util_comp_path "cd=$argc_root"
  ```

## 4. Structured config files

When a choice needs values from YAML, TOML, XML, or INI data, prefer mikefarah/yq inside the `_choice_*` function. `yq` is optional, not a pipeline dependency. Guard it and return no candidates when it is unavailable:

```sh
command -v yq >/dev/null 2>&1 || return 0

yq -r '.profiles[].name' config.yaml
yq -p toml -o yaml -r '.profiles.names[]' config.toml
yq -p xml -o yaml -r '.root.item[]."+@name"' config.xml
yq -p ini -o yaml -r '.section.key' config.ini
```

- Use `-p <format>` when the input format is not clear from the extension or when reading stdin.
- If `yq` is unavailable, emit no candidates instead of failing the completion.

## 5. Control lines and the split model

A word is split as:

```text
word     = prefix + filter
inserted = prefix + candidate + suffix
```

argc infers common splits (`--define=`, `-X`, `+`, comma/pipe-separated values). The `-X` option family and the separator are declared in the fragment as `prefixed` and `delimiter`; `delimiter` applies to options and args. Do not reimplement those splits in the choice function. A function can move the split with:

| Line | Effect |
|---|---|
| `__argc_prefix=PREFIX` | Text kept before the candidate. |
| `__argc_filter=FILTER` | Text a candidate must start with. |
| `__argc_suffix=SUFFIX` | Text appended after a candidate. |
| `__argc_value=KIND` | Add path candidates (`path`, `file`, `dir`), or echo the notation when the word has no candidate source. |
| `__argc_cd=DIR` | Base directory for relative path candidates. |

Rules:

- Control lines are processed in order. `__argc_filter` and `__argc_suffix` affect only candidates printed after them. `__argc_prefix` applies to the whole set; the last value wins.
- A word with no candidate source is reported as `__argc_value=<NOTATION>` (for example `__argc_value=EVAL-COMMAND`) and completed as a bare value. Seeing that line for an option whose fragment carries a `choice_fn` means the binding never reached the export, so read `<SKILL_ROOT>/references/troubleshooting.md` §Choice functions instead of guessing from the notation.
- `__argc_prefix` is relative to the prefix argc already split off. For `--define=mode=d`, argc has already consumed `--define=`, so emit only `mode=`.
- Save `ARGC_CWORD` before changing the filter; changing `__argc_filter` does not change `ARGC_CWORD`.
- Before a separator, the prefix is usually correct and only `__argc_filter` is needed. After a separator, set both.
- Put `\0` on a control line when the suffix should not add a trailing space:

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

Prefer these helpers over reimplementing the protocol. All 18 live in `<REPO_ROOT>/utils/_argc_utils.sh`; the source is authoritative, so read a function only when this index is not enough (`grep -n '^_argc_util_' <REPO_ROOT>/utils/_argc_utils.sh`).

The examples show the call shape; snippets that call an `_argc_util_*` helper assume the source guard below. A `_choice_*` called but not defined in a snippet is a thin data source.

- `comp_*` splits the word and emits its candidates (or a path request); `mode_*` splits only and leaves candidates to the caller.
- argc filters against `__argc_filter`; do not pre-filter a list to the typed prefix.
- A word that the fragment declares `prefixed` or `delimiter` is already split by argc; do not split it again.

Keep one guard near the top of `choice-fns` when a function calls an `_argc_util_*` helper:

```sh
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi
```

These helpers are grouped by role; read the group heading and the first line of a subsection for the exact fit. The close pairs are `comp_parts`/`mode_parts` (project a known list vs query each part), `comp_kv`/`mode_kv` (fixed keys vs runtime keys), and `comp_path`/`has_path_prefix` (path only vs path-or-name switch).

### Word splitting

#### `_argc_util_comp_path [dir] [prefix=] [filter=] [suffix=] [exts=] [cd=]`

Use for a filesystem path, directories only, or extension filters. It emits `__argc_value=path[:exts]` or `dir` plus the split controls; prefer the §3 notation when the tag can carry it.

```sh
_choice_config() { _argc_util_comp_path exts=.json,.jsonc; }
_choice_mount()  { _argc_util_comp_path suffix=:; }
_choice_cert()   { _argc_util_comp_path prefix=@ filter="${ARGC_CWORD:1}"; }
```

Notes: only the exact names `dir`, `exts=`, `prefix=`, `filter=`, `suffix=`, and `cd=` are recognized; `isdir`, `ext=`, and `exts:.json` are silently ignored. `suffix` is not applied to directories.

#### `_argc_util_comp_parts <sep> [filter] [prefix]`

Use when the next segment can be projected from a flat list of complete values: repository paths, `rev:path`, dotted keys. It prints the split, offers one segment, and marks a segment ending at the separator with `\0`.

```sh
_choice_path() {
    jj file list | _argc_util_comp_parts /
}
```

Notes: it sets `argc__parts_prefix`, `argc__parts_filter`, `argc__parts_values`, and `argc__parts_len`. Pass `[filter]` and `[prefix]` to continue an outer `mode_kv` split such as `rev:path`. A single input line is printed whole even when it misses the typed prefix; use `mode_parts` when each segment needs its own query.

#### `_argc_util_comp_multi <sep> [filter] [prefix]`

Use when one occurrence accepts `a,b,c` and values already typed must disappear. It sets the split, removes the values before the current part, and marks every candidate with `\0` so typing can continue.

```sh
_choice_type() {
    cat <<-'EOF' | _argc_util_comp_multi ,
b	block (buffered) special
c	character (unbuffered) special
d	directory
EOF
}
```

Notes: descriptions survive. If the fragment declares `delimiter` and `repeatable`, argc already splits the word; pass `[filter]` and `[prefix]` only when continuing a split the caller made.

#### `_argc_util_comp_kv <sep> [filter] [prefix]`

Use when the keys are known and each key has its own value source. The input is a here-doc of `key=value` lines; `;;` adds a description, a bare `key` is a flag, and a value may be a comma list, a backtick command, `__argc_value=file`, or empty for free text.

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

Notes: `*=...` is the fallback for an unknown key; without it an unknown key prints nothing. `[filter]` and `[prefix]` continue an outer split; pass `"$argc__kv_filter" "$argc__kv_prefix"` when the value is nested in an already split word. The helper prints every value of the matched key; argc filters.

#### `_argc_util_comp_tv`

Use when the command takes positional tags followed by their values: `ip address add ... dev eth0`, `ifconfig eth0 mtu 1500`, `route add ... gw ...`. The preceding positional selects the value; consumed tags are hidden.

```sh
_choice_address_add() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;device name
local=;;local address
scope=`_choice_ip_scope`;;address scope
EOF
}
```

Notes: the helper takes no arguments; the separator is always `=`. `tag=cmd1;cmd2` gives one value per following token; `tag=` leaves the value free. A consumed tag is hidden unless it is the word currently being typed.

#### `_argc_util_comp_subcommand <index> [prepend...]`

Use when the value is another command plus its arguments. It slices `argc__positionals` from `index`, prepends the extra words, replaces the last word with `ARGC_LAST_ARG`, and asks argc for the target's completion.

```sh
_choice_args()  { _argc_util_comp_subcommand 0; }        # sudo CMD ...
_choice_exec()  { _argc_util_comp_subcommand 1; }        # docker exec NAME CMD ...
_choice_git()   { _argc_util_comp_subcommand 0 git; }    # tig ...
_choice_workspace_args() {
    (cd "$location" && _argc_util_comp_subcommand 1 yarn) # yarn workspace NAME ...
}
```

Notes: `0` means the command is the first positional; `1` means one fixed positional precedes it (root, container, workspace). Delegation uses the target's installed completion; without it there are no candidates. Wrap in `(cd ... && ...)` for another directory.

#### `_argc_util_mode_kv <sep> [filter]`

Use when the keys are dynamic and the value depends on the key: `host:path`, `rev:path`, `pod=image`. It only splits and sets variables; print the candidates yourself.

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

Notes: before the separator `argc__kv_key` and `argc__kv_prefix` are empty and `argc__kv_filter` is the whole word; after it the left part, separator, and right part are split. Use `comp_kv` when keys are a fixed table.

#### `_argc_util_mode_parts <sep> [filter] [prefix]`

Use when a word has N parts and each position needs a different query: `u:name:rwx`, `container:/path`, `project:target:config`. It splits and sets `argc__parts_len` and `argc__parts_values`; print candidates for the current part.

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

Notes: `argc__parts_values` holds the split parts including the current partial part, and `argc__parts_len` is their count (at least 1); `argc__parts_prefix` and `argc__parts_filter` are already printed. No data list is consumed, so each branch chooses its own source.

### Candidate shaping

#### `_argc_util_transform <spec...>`

Use to rewrite the value, description, or nospace marker. Specs are `nospace`, `space`, `nospaceIfEnd=<text>`, `prefix=<text>`, `suffix=<text>`, `format=<sep>`, and `color=<name>[,<style>]`.

```sh
env | _argc_util_transform format==
env | _argc_util_transform format== | _argc_util_comp_multi ,
docker exec "$argc__kv_key" ls -1p "$dir" | _argc_util_transform nospaceIfEnd=/
```

Notes: `format=` must be first; it re-splits raw `value<sep>description`. `prefix` and `suffix` edit the value only, and `color` is rendered only by zsh and PowerShell. `nospace` and `space` set and clear `\0`; `nospaceIfEnd` adds it only when the value ends with the text.

#### `_argc_util_transform_table <cols> [joins]`

Use when a tool prints an aligned table with a header. `cols` is a `;`-separated list of header names; `joins` separates the selected columns, and an empty join concatenates.

```sh
_choice_ruleset() {
    gh ruleset list $(_argc_util_param_select_options --repo) |
        _argc_util_transform_table 'ID;NAME' '\t'
}
```

Notes: every name must occur in the same header line, and the widths come from it. A selected column that is last in the source table is cut at its header width; prefer a column followed by another source column, or use `gawk`.

#### `_argc_util_filter [-i] <words> [sep]`

Use to remove candidates whose value exactly matches one of `<words>`, or with `-i` to keep only those. `<words>` is split on `sep`; an empty `sep` splits into characters.

```sh
_choice_mode() {
    _choice_perm | _argc_util_filter "$ARGC_CWORD" | _argc_util_transform nospace
}
```

Notes: matching is on the whole value, not a prefix; use it for an "already present" set, not for ordinary prefix filtering.

#### `_argc_util_strip_ansi`

Use before parsing output with CSI color codes or backspace overstrikes.

```sh
_choice_version() {
    vfox list | _argc_util_strip_ansi | sed -n 's/^.. //p'
}
```

Keep it before `sed` or `gawk`. It is a filter on stdin.

#### `_argc_util_has_path_prefix [word]`

Use to choose between path completion and a name or command source. It returns 0 for `.`, `/`, `~`, and a Windows drive prefix; the default word is `ARGC_CWORD`.

```sh
_choice_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    compgen -c
}
```

Notes: a bare relative `dir/file` does not count; test the word yourself if that form must be accepted. Pair it with `_argc_util_comp_path`.

### Context and external sources

#### `_argc_util_path_resolve [-p|-u] <parts...>`

Use to join and clean paths, or to address the platform `CONFIG_DIR` and `CACHE_DIR`. With no parts it reads stdin.

```sh
host_yml="$(_argc_util_path_resolve CONFIG_DIR gh/hosts.yml)"
manifest="$(_argc_util_path_resolve -p "$workspace_root" Cargo.toml)"
bin_dir="$(_argc_util_path_resolve -u "$(npm root)" .bin)"
```

Notes: the two sentinels expand per `ARGC_OS`; any other first part is an ordinary component. `-p` and `-u` convert only on Windows. `..` is resolved; too many leading `..` exits non-zero.

#### `_argc_util_path_search_parent [-p] <file...>`

Use to find a project marker from the current directory upward. It returns the absolute first match, or its directory with `-p`.

```sh
pkg_json="$(_argc_util_path_search_parent package.json)"
root_dir="$(_argc_util_path_search_parent -p go.mod)"
```

Notes: not found means empty output and status 0, so test the value. It only looks for files (`-f`), restores the working directory, and returns a real path.

#### `_argc_util_cache <seconds> <fn> [key]`

Use for a slow, remote, or registry query. The cache lives in `<REPO_ROOT>/cache/argc-util-cache`, expires by modification time, and is keyed by the command path (program and selected subcommands) plus the function name unless a key is given.

```sh
_choice_task() {
    _argc_util_cache 3600 _choice_task_uncached "gradle__tasks:$PWD"
}
```

Notes: put everything that changes the result into the key. A `name:payload` key hashes the payload with `openssl sha1`; a plain `name` avoids that dependency. Empty output is not reused. Guard auxiliary tools inside the uncached function.

#### `_argc_util_parallel <fn> [args] ::: <fn> [args] ...`

Use when several independent sources contribute to one value: refs, units, images. Each function runs in its own process and the outputs are merged.

```sh
_choice_ref() {
    _argc_util_parallel _choice_local_branch ::: _choice_remote_branch ::: _choice_tag
}
```

Notes: use it only in a script argc evaluates; it resolves `$0`. Output order is not a contract. Each branch must be self-contained.

#### `_argc_util_param_select_options <option...>`

Use in a thin wrapper so every query sees the same configuration: `git -C`, `docker --context`, `kubectl -n`. It prints an option and its value when the generated `$argc_<name>` variable is set; a flag prints only the option.

```sh
_git() {
    git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"
}

_kubectl() {
    kubectl $(_argc_util_param_select_options --namespace) "$@"
}
```

Notes: `-C` becomes `$argc_C` and `--git-dir` becomes `$argc_git_dir`; pass the spelling that generated the variable (a short option with a long name uses the long-name id). Only options declared at the wrapper's level are available. The caller re-splits the output, so keep forwarded values space-free.

Tool-specific values have no repository helper; write the query inline (recipes in §7):

- git refs, branches, tags, and remotes: `git for-each-ref`, `git branch`, `git tag`, `git remote`;
- container images and platforms: `docker image ls`, `podman image ls`;
- HTTP methods, headers, encodings, and cache directives: static tables with `_argc_util_comp_kv` or `_argc_util_comp_multi`;
- ssh options and algorithm lists: a static `key=value` table plus `ssh -Q cipher` and `ssh -Q hostkeyalgorithms`.

## 7. Recipes

Each recipe maps a value shape to the smallest working function. Helper arguments and pitfalls are in §6; the protocol and split model are in §1–§5. Do not re-split a word that the fragment declares `prefixed` or `delimiter`.

### Fixed key=value table

```sh
_choice_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
AddKeysToAgent=yes,ask,confirm,no;;agent forwarding
CertificateFile=__argc_value=file;;certificate
HostKeyAlgorithms=`_choice_hostkeyalgorithms`;;algorithms
Port=;;free text
EOF
}
```

Use when the keys are known and the value source varies per key. A bare key is a flag, `*=...` covers unknown keys, and `__argc_value=...` delegates to path completion. Pass the outer filter and prefix as the second and third arguments when the value is nested in an already split word.

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

Use when the key comes from runtime data and the value query depends on it. `mode_kv` only splits; the two branches are the key side and the value side. The value side may call any helper.

### Tag-value sequence

```sh
_choice_address_add() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;device name
local=;;local address
scope=`_choice_ip_scope`;;address scope
EOF
}
```

Use when the syntax is positional tags, not options. The positional before the current word selects the value, and consumed tags are hidden. `tag=cmd1;cmd2` handles a tag that consumes several tokens.

### Multi-part value

```sh
_choice_unstaged_file() {
    _git status --porcelain | gawk '{
        if (substr($0, 2, 1) != " ") print substr($0, 4)
    }' | _argc_util_comp_parts /
}
```

Use when the next segment is a projection of a flat list: repository paths, `rev:path`, dotted keys. `comp_parts` consumes the list and offers one segment; switch to `mode_parts` when each segment needs its own query.

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

Use for `namespace:path` values: a container, pod, host, or archive followed by a path inside it. The left side offers names with `suffix=:`; the right side switches to `mode_parts /` and lists the remote directory. Keep the local path fallback because the command also accepts a local path. Quote the remote path, guard the remote command, and cache the member list when it is slow.

### Multi-value list

```sh
_choice_type() {
    cat <<-'EOF' | _argc_util_comp_multi ,
b	block (buffered) special
c	character (unbuffered) special
d	directory
EOF
}
```

Use for one occurrence that holds `a,b,c`. Already typed values disappear and every candidate keeps the line open. If the fragment declares `delimiter` and `repeatable`, argc already splits the word; reserve this recipe for lists not declared on the parameter.

### Delegate to a command

```sh
_choice_args() { _argc_util_comp_subcommand 0; }        # sudo CMD ...
_choice_docker_exec() { _argc_util_comp_subcommand 1; }  # docker exec NAME CMD ...
_choice_git()  { _argc_util_comp_subcommand 0 git; }    # tig ...
```

Use for wrappers, aliases, and commands that take another command after a fixed positional. Index `0` when the command is the first positional, `1` when a fixed positional precedes it. Prepend the real CLI when the wrapper renames it, and wrap in `(cd dir && ...)` when it must run elsewhere. The target's completion must be installed.

### Command-valued option

```sh
# @option -exec~[`_choice_exec`] <command>

_choice_exec() {
    if [[ -n "${argc__option:-}" ]]; then
        local -n exec_values="$argc__option"
        argc__positionals=("${exec_values[@]}")
    fi
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        compgen -c
    else
        _argc_util_comp_subcommand 0
    fi
}
```

A repeatable option can store a whole command line (`find -exec`, `-execdir`). Copy the option's accumulated values into `argc__positionals`, complete the executable while it has fewer than two words, and delegate the rest with `_argc_util_comp_subcommand 0`. `argc__option` is the generated variable name; `"${!argc__option}"` expands that array. Filter `compgen -c` or use a tool query when the accepted commands are narrower.

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

Use when a sibling option changes the value space or an earlier positional selects the object. Read `$argc_<id>`; use `argc__positionals` for earlier words and `argc__dash` when `--` changes the meaning. For a mode flag, test for a non-empty value, not for `1`.

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

Use when the candidates come from the nearest project file. Find the marker upward, then parse only; do not execute build tools from a completion. For a Makefile, read the files a plain invocation would read (the `-f` file, `MAKEFILES`, or `GNUmakefile`/`makefile`/`Makefile`); parse targets in two passes: collect names and descriptions in source order, skip `%`, `$`, and special targets, then print from `END`. Do not execute recipes.

### Aggregated and cached sources

```sh
_choice_ref() {
    _argc_util_parallel _choice_local_branch ::: _choice_remote_branch ::: _choice_tag
}

_choice_image() {
    _argc_util_cache 60 _choice_image_uncached "docker__images:$argc_host"
}
```

Use when one value has several independent sources or the query is slow. Run sources concurrently with `parallel`, and cache the slow query with a key that includes the directory, file, stack, or host. Guard external tools inside the uncached function.

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

Use when the prefix is part of the word: a prefixed option (`-Xfoo`), a symbol (`+toolchain`), or a path introduced by `@` or `+`. `ARGC_CWORD` is the text after the prefix and `ARGC_LAST_ARG` is the whole word. For a path, pair `prefix=` with `filter=` so the prefix is reinserted. A prefixed option is `prefixed: true` with `names: ["-X"]` in the fragment; a symbol uses `@meta symbol +name[...]`.

### Shared function across options

```sh
_choice_value() {
    case "$argc__option" in
        argc_color) echo red green blue ;;
        argc_size)  echo small medium large ;;
    esac
}
```

Use when several options share a source or one option is split across items. `argc__option` is the generated variable name of the option being completed; switch on it. For a repeatable option, read the array with `"${!argc__option}"`. The naming rule is in §2.

### Table output

```sh
_choice_ruleset() {
    gh ruleset list $(_argc_util_param_select_options --repo) |
        _argc_util_transform_table 'ID;NAME' '\t'
}
```

Use when the tool prints an aligned table with a header. Select columns by header name; joins separate the selected columns. A column that is last in the source table is cut at its header width, so prefer a column followed by another source column; otherwise parse with `gawk`.

## 8. Debugging

### Raw candidates

`generic` keeps control lines, keeps the trailing `\0`, and does not expand paths. `bash`/`zsh` post-process candidates and hide the NUL, so use `generic` when verifying nospace or control lines:

```sh
argc --argc-compgen generic <completion.sh> <root> --foo ''
argc --argc-compgen bash <completion.sh> <root> --foo ''
argc --argc-compgen zsh <completion.sh> <root> ''
```

The final word is the word being completed. Use `''` to list all candidates or `--` to list long options. Keep `--foo value` as two shell words and `--foo=value` as one; `--foo= ''` is not the equals form. A root-option label ends at the option name, so an extra token means the test word is shifted.

### Run a function directly

There is no `argc choice-fn` subcommand in argc 1.24. Use the completion engine, or source the block and call the function inside a wrapper:

```sh
# End-to-end
argc --argc-compgen bash <completion.sh> <root> <args> ''

# Function only: source the choice-fns block, then call it
bash -c '
    script=$1; shift
    eval "$(sed -n "/^# >>> choice-fns/,/^# <<< choice-fns/p" "$script" | sed "1d;\$d")"
    run() { "$@"; }
    run "$@"
' _ <completion.sh> _choice_foo
```

`--argc-compgen` sets `ARGC_COMPGEN`, `ARGC_CWORD`, `ARGC_LAST_ARG`, and `ARGC_OS`. Do not declare `local` or `declare` at the top level of the harness; wrap them in a function (like `run` above), or bash reports `local: can only be used in a function`. The function-only harness does not emulate argc's word split, so set `ARGC_CWORD` and `ARGC_LAST_ARG` explicitly when the function reads them. When the function calls `_argc_util_*` helpers, set `ARGC_COMPLETIONS_ROOT` to the repository root in the harness environment; otherwise the source guard skips the library.

### Probing tag syntax

When a tag question can only be answered by running argc, use a scratch script and keep the probe free of the two traps that hide results:

- Define every `_choice_*` the probe references (a stub such as `_choice_probe() { :; }`); when a wrapper calls an `_argc_util_*` helper, source `_argc_utils.sh` for runtime, or use a static `[a|b]`. A missing bound function makes `argc --argc-export` exit 1 with `_choice_x(line N) is missing` on stderr and a partially useful export.
- Never merge streams: write stdout to a file and read stderr separately (`<SKILL_ROOT>/SKILL.md` §Inspection).

```sh
argc --argc-export /tmp/probe.sh >/tmp/probe.export.json
jq -c '.flag_options' /tmp/probe.export.json
```

A probe that answers a tag question is throwaway; do not copy its shape into a fragment without validating it with `<SKILL_ROOT>/scripts/validate-fragment.jq`.

### No candidates

Isolate the failure in four steps:

1. Tag rendered? `grep -nE '@arg|@option' <completion.sh>`
2. Engine calls it? `argc --argc-compgen bash <completion.sh> <root> <args> ''`
3. Function works? Use the direct-call harness under *Run a function directly*.
4. Helper works? Call the parser/query directly against a fixture file.

Common causes:

- output protocol mismatch: the helper prints `_TARGET`, but the reader matches `T`;
- `local`/`declare` at the top level of the test harness;
- empty `argc_directory`/`argc_file` because the option id was guessed;
- missing external tool (add a `command -v` guard for auxiliary tools only).

Inspect context variables inside a function when needed:

```sh
declare -p ARGC_CWORD ARGC_LAST_ARG argc__positionals argc__option >&2
```

If the cause is still unclear, use the symptom index in `<SKILL_ROOT>/references/troubleshooting.md`.

### Compgen failure

A compgen failure means the function exited non-zero, printed an error, or timed out. A missing auxiliary tool means the function lacks a `command -v` guard; a missing root command can only occur in the direct-call harness, never in real completion.

## Sources

- `<REPO_ROOT>/utils/_argc_utils.sh`
- `<SKILL_ROOT>/references/` (this directory)
- argc [Compgen](https://github.com/sigoden/argc/blob/main/docs/compgen.md)
- argc [Variables](https://github.com/sigoden/argc/blob/main/docs/variables.md)
- argc [Comment Tags](https://github.com/sigoden/argc/blob/main/docs/comment-tags.md)
- mikefarah/yq [documentation](https://mikefarah.gitbook.io/yq/)
