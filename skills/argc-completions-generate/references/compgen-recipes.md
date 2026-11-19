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
| *Value slots of one option* | One option consumes several values, each with its own candidate source. | `prog --pair <LEFT> <RIGHT>` |
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

## Value slots of one option

**Use when:** One option consumes several values, and each value slot has its own candidate source.

**Example:** `prog --pair <LEFT> <RIGHT>`

```sh
# @option --pair[?`_choice_pair`] <LEFT> <RIGHT>

_choice_pair() {
    case "${#argc_pair[@]}" in
    1) printf '%s\n' abc def ijk ;;
    2) printf '%s\n' xyz nop ;;
    esac
}
```

Both notations share one `choice_fn`; the generated array includes the current word, so the non-repeatable slot is `${#argc_pair[@]}`. When a later slot's candidates depend on an earlier value, pass the stored element to a query helper, for example `2) _helper_pair_right "${argc_pair[0]}" ;;`; the current word is the array's last element, so the array can be one element longer than the values already typed. A free-form final notation (`rule-specification`, `expression`, `args`) is a slot with no source: return 0 there instead of reusing the previous slot's candidates.

`argc_pair` accumulates across occurrences: for a repeatable fixed arity use `slot=$(( (${#argc_pair[@]} - 1) % 2 + 1 ))`; when the final notation is optional, set `start` to the index of the option's last spelling in `argc__args` and use `slot=$(( ${#argc__args[@]} - start - 1 ))`.

Keep the binding completion-only (`[?`...`]`); a validating binding cannot express a different list per slot. Use separate words (`--pair left right`): `--pair=left right` does not fill the second slot, and a value starting with `-` is read as an option. `prefixed` and `delimiter` allow at most one notation; use *Multi-Parts Mode* or *Key-Value Mode* for one word with several parts.

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
