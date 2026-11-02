# Compgen recipe reference

Composed choice functions for value shapes that a single helper does not cover. Helper signatures and notes are in `<REPO_ROOT>/utils/_argc_utils.sh`, the candidate protocol is in `<SKILL_ROOT>/references/compgen.md`, binding and the test loop are in `<SKILL_ROOT>/references/add-choice-fns.md`, shell portability is in `<SKILL_ROOT>/references/setup.md`, and failures go to `<SKILL_ROOT>/references/troubleshooting.md`. Read both §*Section map*s before writing a `_choice_*`/`_helper_*` body, then the matching helper section and recipe. The samples are adapted from `<REPO_ROOT>/completions/`; long functions are excerpted where noted.

## Section map

| Recipe | Use when | Example |
|---|---|---|
| *Command plus terminated args* | The command is a separate positional and its arguments are a terminated positional. | `nohup CMD ARG...` |
| *Command in a terminated option* | The option holds an executable plus its arguments. | `find . -exec ARGS...` |
| *Command in a terminated positional* | One positional holds the command and its arguments. | `xargs ARGS...` |
| *Key-Value Mode* | One word is split into a key and a value, each with its own candidate source. | `scp host:path` |
| *Multi-Parts Mode* | One word is split into positions, each with its own candidate source. | `rg --colors path:fg:red` |
| *Candidates gated by another word* | An earlier positional or a sibling option decides which candidates apply. | `unzip app.zip FILE` |
| *Values from the nearest project file* | Candidates come from the first project file found above `PWD`. | `node --run RECIPE` |
| *Word with a literal prefix* | The word starts with `@`, `!`, or `+` before the completable part. | `curl -H @file` |
| *Shared function across options* | Several options share one function, and the option selects the query. | `aichat -m/-s/-a` |

## Command plus terminated args

**Use when:** The command is a separate positional and its arguments are a terminated positional.

**Example:** `nohup CMD ARG...`

```sh
# @arg command[`_choice_command`] <COMMAND>
# @arg args~[`_choice_command_args`] <ARG>
```

```sh
_choice_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return 0
    fi
    _argc_util_comp_command
}

_choice_command_args() {
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        _choice_command
    else
        _argc_util_comp_subcommand 0
    fi
}
```

`nohup.sh` binds this shape. The command arg uses `_choice_command` from the previous section; `args` reads `argc__positionals` directly.


## Command in a terminated option

**Use when:** The option holds an executable plus its arguments.

**Example:** `find . -exec ARGS...`

```sh
# @option --exec~[`_choice_exec`] <COMMAND>
```

```sh
_choice_exec() {
    if [[ -n "$argc__option" ]]; then
        local -n ref="$argc__option"
        argc__positionals=( "${ref[@]}" )
        unset -n ref
    fi
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        _choice_command
    else
        _argc_util_comp_subcommand 0
    fi
}
```

`find.sh` and `fd.sh` bind this shape. The option stores an array: `argc__option` names it, so copy it into `argc__positionals` before delegating; `_choice_command` completes the executable.

## Command in a terminated positional

**Use when:** One positional holds the command and its arguments.

**Example:** `xargs ARGS...`

```sh
# @arg args~[`_choice_command_args`] <COMMAND>
```

`xargs.sh` binds this shape. It uses the same `_choice_command_args` body; only the binding differs.

## Key-Value Mode

**Use when:** One word is split into a key and a value, each with its own candidate source.

**Example:** `scp host:path`

```sh
# @arg source+[`_choice_scp_path`] <path>

_choice_scp_path() {
    # An scp:// URI is left as free text; splitting on ':' would treat the scheme as a host.
    if [[ "$ARGC_CWORD" == *://* ]]; then
        return 0
    fi
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _argc_util_comp_path
        _choice_scp_host | _argc_util_transform suffix=: nospace
    else
        local target="$argc__kv_key"
        local filter="$argc__kv_filter"
        ssh -o BatchMode=yes -o ConnectTimeout=3 "$target" command ls -a1dp "$filter*" 2>/dev/null \
            | _argc_util_comp_parts / "$filter" "$argc__kv_prefix"
    fi
}
```

Keep the local-path branch and the URI guard. The host list comes from ssh config, `known_hosts`, and `/etc/hosts`, merged and cached by config path (`scp.sh:48`).

## Multi-Parts Mode

**Use when:** One word is split into positions, each with its own candidate source.

**Example:** `rg --colors path:fg:red`

```sh
# @option --colors*[`_choice_color_spec`] <COLOR_SPEC>

_choice_color_spec() {
    _argc_util_mode_parts :
    case "$argc__parts_len" in
        1) printf '%s\n' path line column match highlight ;;
        2) printf '%s\n' fg bg style none ;;
        *)
            case "${argc__parts_values[1]}" in
                fg|bg) printf '%s\n' black red green yellow blue magenta cyan white ;;
                style) printf '%s\n' bold nobold intense nointense underline nounderline italic noitalic ;;
            esac
            ;;
    esac
}
```

The first position selects the third: `fg` and `bg` take colors, `style` takes styles.

## Candidates gated by another word

**Use when:** An earlier positional or a sibling option decides which candidates apply.

**Example:** `unzip app.zip FILE`

```sh
# @arg list*[`_choice_archive_member`] <pattern>

_choice_archive_member() {
    local archive=${argc_archive:-}
    [[ -n $archive ]] || return 0
    [[ $archive == -* ]] && archive=./$archive
    if [[ ! -f $archive ]]; then
        if [[ -f $archive.zip ]]; then
            archive=$archive.zip
        else
            return 0
        fi
    fi
    unzip -Z1 "$archive" 2>/dev/null | _argc_util_comp_parts /
}
```

The archive comes from the `archive` positional; resolve a leading `-` and a missing `.zip` before listing. For a source that switches on an earlier positional, see `7z.sh:102`.

## Values from the nearest project file

**Use when:** Candidates come from the first project file found above `PWD`.

**Example:** `node --run RECIPE`

```sh
# @option --run[`_choice_run`] <VALUE>

_choice_run() {
    local pkg
    pkg="$(_argc_util_path_search_parent package.json)"
    [[ -n $pkg ]] || return 0
    jq -b -r '(.scripts // {}) | keys[]' "$pkg" 2>/dev/null
}
```

Parse only; never execute the project's tools. `node.sh` and `tsx.sh` query the same scripts, and `make.sh:193` parses the makefiles a plain invocation would read instead of executing them.

## Word with a literal prefix

**Use when:** The word starts with `@`, `!`, or `+` before the completable part.

**Example:** `curl -H @file`

```sh
# @option -H --header[`_choice_header`] <header/@file>

_choice_header() {
    if [[ "$ARGC_CWORD" == @* ]]; then
        _argc_util_comp_path prefix=@ filter="${ARGC_CWORD:1}"
        return
    fi
    # ... static header list ...
}
```

Excerpt: the rest of `_choice_header` is a static header table. Pair `prefix=` with `filter=` so the `@` is reinserted; `fd.sh` uses the same split for `!user`. A symbol such as `+toolchain` is declared in SPEC with `@meta symbol`, not split here.

## Shared function across options

**Use when:** Several options share one function, and the option selects the query.

**Example:** `aichat -m/-s/-a`

```sh
# @option -m --model[`_choice_aichat_list`] <MODEL>
# @option -r --role[`_choice_aichat_list`] <ROLE>

_choice_aichat_list() {
    local list_arg
    case "${argc__option:-}" in
    argc_model) list_arg=--list-models ;;
    argc_role) list_arg=--list-roles ;;
    argc_session) list_arg=--list-sessions ;;
    argc_agent) list_arg=--list-agents ;;
    argc_rag) list_arg=--list-rags ;;
    argc_macro) list_arg=--list-macros ;;
    *) return 0 ;;
    esac
    aichat "$list_arg" 2>/dev/null | sed -e 's/^%\(.*\)%$/\1/'
}
```

`argc__option` names the option being completed; map it to the matching query. Return 0 for anything else; the root command needs no `command -v` probe (`<SKILL_ROOT>/references/compgen.md` §1).
