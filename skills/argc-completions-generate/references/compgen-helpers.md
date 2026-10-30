# Compgen helper reference

`_argc_util_*` helpers from `<REPO_ROOT>/utils/_argc_utils.sh`: one flat section per helper in library order — signature, when to use it, one copy-pasteable sample, and notes. The candidate protocol, context variables, and split model are in `<SKILL_ROOT>/references/compgen.md`; composed recipes are in `<SKILL_ROOT>/references/compgen-recipes.md`; the workflow is `<SKILL_ROOT>/references/add-choice-fns.md`. Shell portability is in `<SKILL_ROOT>/references/setup.md`; failures go to `<SKILL_ROOT>/references/troubleshooting.md`. The §*Section map* below is mandatory before writing a `_choice_*`/`_helper_*` body: read it, then the matching section.

All 19 helpers live in `<REPO_ROOT>/utils/_argc_utils.sh` (authoritative); the Section map picks one, and its section has the details (`grep -n '^## `_argc_util_comp_path' <SKILL_ROOT>/references/compgen-helpers.md`). Every sample is a complete, copy-pasteable function for the `CHOICES` block (`_choice_*` for a tag-bound entry point, `_helper_*` for one it calls): a tag binds the function name, the helper call is its body, and what it prints is the candidate list. An undefined `_choice_*` name is a data source.

## Section map

| Helper | Use for |
|---|---|
| `_argc_util_comp_path` | Paths, directories only, or extension filters. |
| `_argc_util_comp_kv` | Fixed keys, a different value source per key (here-doc table). |
| `_argc_util_comp_tv` | Positional tag-value sequence (`ip ... dev eth0`). |
| `_argc_util_comp_parts` | One segment from a flat list of complete values (`rev:path`). |
| `_argc_util_comp_multi` | One occurrence holding `a,b,c`; typed values disappear. |
| `_argc_util_mode_kv` | Dynamic keys; splits only, you print candidates. |
| `_argc_util_mode_parts` | N parts, a different query per position (`u:name:rwx`). |
| `_argc_util_has_path_prefix` | Switch between path completion and a name or command source. |
| `_argc_util_parallel` | Merge several independent candidate sources. |
| `_argc_util_param_select_options` | Forward wrapper-level options to the delegated command. |
| `_argc_util_path_resolve` | Join or clean paths, expand `CONFIG_DIR`/`CACHE_DIR`. |
| `_argc_util_path_search_parent` | Find a project marker from the working directory upward. |
| `_argc_util_transform` | Rewrite the value, description, or nospace marker. |
| `_argc_util_transform_table` | Select columns from an aligned table with a header. |
| `_argc_util_filter` | Drop candidates whose whole value is already present. |
| `_argc_util_cache` | Cache a slow or remote query. |
| `_argc_util_strip_ansi` | Remove CSI colors and backspace overstrikes before parsing. |
| `_argc_util_comp_command` | Executable names found on `PATH`. |
| `_argc_util_comp_subcommand` | The value is another command plus its arguments. |

Close pairs: `comp_parts`/`mode_parts` (project a known list vs query each part), `comp_kv`/`mode_kv` (fixed vs runtime keys), `comp_path`/`has_path_prefix` (path only vs path-or-command switch).

## Source guard

Keep one guard near the top of `CHOICES`:

```sh
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi
```

## `_argc_util_comp_path [dir] [prefix=] [filter=] [suffix=] [exts=] [cd=]`

Complete paths, directories only, or files with allowed extensions. Emits `__argc_value=path[:exts]` or `dir` plus the split controls.

```sh
# exts= keeps --config to JSON; suffix=: leaves the word open; cd= rebases the paths.
_choice_config() { _argc_util_comp_path exts=.json,jsonc; }

_choice_mount() { _argc_util_comp_path suffix=:; }

_choice_root_file() { _argc_util_comp_path "cd=$argc_root"; }
```

Notes: only the keys in the signature are read (`isdir`, `ext=`, `exts:.json` are ignored), and `suffix` skips directories.

## `_argc_util_comp_kv <sep> [filter] [prefix]`

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

## `_argc_util_comp_tv`

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

## `_argc_util_comp_parts <sep> [filter] [prefix]`

Use when the next segment is projected from a flat list of complete values: repository paths, `rev:path`, dotted keys. Stdin holds the values; it prints the split, offers one segment, and marks a segment ending at the separator with `\0`.

```sh
# jj file list: src/main.rs
_choice_repo_file() {
    jj file list | _argc_util_comp_parts /
}
```

Notes: sets `argc__parts_prefix/filter/values/len`; `[filter]`/`[prefix]` continue an outer split (`rev:path`). A single line prints whole when it misses the prefix; use `mode_parts` when each segment needs its own query.

## `_argc_util_comp_multi <sep> [filter] [prefix]`

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

Notes: removes earlier values, keeps descriptions, and marks every candidate with `\0` so typing continues; pass `[filter]`/`[prefix]` only for a caller-made split.

## `_argc_util_mode_kv <sep> [filter]`

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

## `_argc_util_mode_parts <sep> [filter] [prefix]`

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

## `_argc_util_has_path_prefix [word]`

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

Notes: the path branch preserves a typed path, the name branch is any domain source. The full switch is `<SKILL_ROOT>/references/compgen-recipes.md` §*Command in a terminated option*.

## `_argc_util_parallel <fn> [args] ::: <fn> [args] ...`

Use when several independent sources contribute to one value: refs, units, images.

```sh
_choice_ref() { _argc_util_parallel _choice_local_branch ::: _choice_remote_branch ::: _choice_tag; }
```

Notes: each function runs in its own process and outputs are merged. It resolves `$0`, so it works only in a script argc evaluates; order is not a contract, and each branch must be self-contained.

## `_argc_util_param_select_options <option...>`

Use in a thin wrapper so every query sees the same configuration: `git -C`, `docker --context`, `kubectl -n`. Only wrapper-level options are available.

```sh
# tags of the repository -C points at
_choice_git_tag() { _helper_git tag --sort=-creatordate | head -n 50; }

_helper_git() { git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"; }
```

Notes: `-C` gives `$argc_C` and `--git-dir` gives `$argc_git_dir`, so pass the spelling that generated the variable; a flag prints alone, and a forwarded value must be space-free because the caller re-splits it.

## `_argc_util_path_resolve [-p|-u] <parts...>`

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

## `_argc_util_path_search_parent [-p] <file...>`

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

## `_argc_util_transform <spec...>`

Use to rewrite the value, the description, or the nospace marker. Specs: `format=<sep>`, `prefix=<text>`, `suffix=<text>`, `nospace`, `space`, `nospaceIfEnd=<text>`, `color=<name>[,<style>]`.

```sh
# env: NAME, value as description
_choice_env_var() { env | _argc_util_transform format==; }
```

Notes: `format=` comes first and re-splits raw `value<sep>description`; `prefix`/`suffix` edit the value; `nospaceIfEnd=` sees the value before that same call rewrites it; `color` renders only in zsh/PowerShell.

## `_argc_util_transform_table <cols> [joins]`

Use when a tool prints an aligned table with a header. `cols` is a `;`-separated list of header names, `joins` separates the selected columns, and an empty join concatenates.

```sh
# gh ruleset list: ID<TAB>NAME
_choice_ruleset() {
    gh ruleset list $(_argc_util_param_select_options --repo) | _argc_util_transform_table 'ID;NAME' '\t'
}
```

Notes: every name must occur on the same header line, which supplies the widths. A selected column that is last in the source is cut at its header width; prefer a column followed by another, or `gawk`.

## `_argc_util_filter [-i] <words> [sep]`

Use to drop candidates whose whole value matches one of `<words>`, or with `-i` to keep only those; an empty `sep` splits `<words>` into characters.

```sh
# drop r/w/x already typed in the word
_choice_perm_remaining() { _choice_perm | _argc_util_filter "$ARGC_CWORD" | _argc_util_transform nospace; }
```

Notes: whole-value match, not a prefix; descriptions and the `\0` marker survive. Use it for an already-present set, not for ordinary prefix filtering.

## `_argc_util_cache <seconds> <fn> [key]`

Use for a slow or remote query. Entries live in `<REPO_ROOT>/cache/argc-util-cache` and expire by mtime.

```sh
# keyed by the working directory
_choice_task() { _argc_util_cache 3600 _choice_task_uncached "gradle__tasks:$PWD"; }
```

Notes: the key is the command path plus the function name unless given; a `name:payload` key hashes the payload with `openssl sha1`, a plain `name` avoids that. Empty output is not reused, so guard auxiliary tools inside the uncached function.

## `_argc_util_strip_ansi`

Use before parsing output with CSI color codes or backspace overstrikes.

```sh
_choice_vfox_version() { vfox list | _argc_util_strip_ansi | sed -n 's/^.. //p'; }
```

Notes: a stdin filter; keep it before `sed` or `gawk`.

## `_argc_util_comp_command`

Use for executable command names, as the non-path branch of `_choice_command` above. It emits real `PATH` executables only: builtins, keywords, aliases, functions, directories, and non-executable files are skipped, a name found in several `PATH` dirs appears once, and Windows drops `.dll` while stripping `.exe`/`.com`/`.bat`/`.cmd`. Order follows `PATH`; sort when stable order matters.

```sh
# --exec: only PATH executables, no script paths
_choice_exe() { _argc_util_comp_command; }
```

Notes: it does not complete path-looking words.

## `_argc_util_comp_subcommand <index> [prepend...]`

Use when the value is another command plus its arguments. Slices `argc__positionals` from `index`, prepends the extra words, replaces the last word with `ARGC_LAST_ARG`, and asks argc for the target's completion.

```sh
# sudo CMD ... = index 0, docker exec NAME CMD ... = index 1
_choice_exec_args() { _argc_util_comp_subcommand 1; }

_choice_sudo_args() { _argc_util_comp_subcommand 0; }
```

Notes: `0` = the command is the first positional, `1` = one fixed positional precedes it; `prepend...` carries the real CLI name when the wrapper renames it, and `(cd ... && ...)` runs elsewhere. A target without an installed completion yields no candidates.

## Tool-specific values

Tool-specific values have no helper; write the query inline (`<SKILL_ROOT>/references/compgen-recipes.md`): `git for-each-ref`/`branch`/`tag`/`remote`, `docker`/`podman image ls`, `ssh -Q cipher`/`hostkeyalgorithms`, or a `comp_kv`/`comp_multi` table for HTTP/ssh-style enumerations.
