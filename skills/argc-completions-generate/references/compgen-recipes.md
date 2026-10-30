# Compgen recipe reference

Composed choice functions for common value shapes. Each recipe combines the helpers in `<SKILL_ROOT>/references/compgen-helpers.md` with the protocol in `<SKILL_ROOT>/references/compgen.md`; bindings and the test loop are in `<SKILL_ROOT>/references/add-choice-fns.md`, shell portability is in `<SKILL_ROOT>/references/setup.md`, and failures go to `<SKILL_ROOT>/references/troubleshooting.md`. Pick a helper from the `<SKILL_ROOT>/references/compgen-helpers.md` §1 *Helper index*; use `_argc_util_comp_multi` only for lists the parameter does not declare `delimiter`+`repeatable` (`<SKILL_ROOT>/references/compgen.md` §5). The recipes below add parsing or a cross-word dependency.

## Section map

| Recipe | Use for |
|---|---|
| *Dynamic key split* | The key is runtime data and its value source depends on it. |
| *Multi-part value* | Project a parsed list onto `rev:path`-style segments. |
| *Nested namespace* | `namespace:path`: a container, pod, host, or archive plus an inner path. |
| *Command-valued option* | The option stores a whole command line. |
| *Context-dependent candidates* | A sibling option or an earlier positional changes the value space. |
| *Project context and targets* | Candidates come from the nearest project file. |
| *Aggregated and cached sources* | Several sources or one slow query fill a value. |
| *Prefixed and path-valued words* | The prefix is part of the word (`-Xfoo`, `+toolchain`, `@path`). |
| *Shared function across options* | Several options share one source. |

## Dynamic key split

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

## Multi-part value

```sh
_choice_unstaged_file() {
    _git status --porcelain | gawk '{
        if (substr($0, 2, 1) != " ") print substr($0, 4)
    }' | _argc_util_comp_parts /
}
```

Parse the source into complete values, then project them with `_argc_util_comp_parts` (`<SKILL_ROOT>/references/compgen-helpers.md` §2); use `mode_parts` when each segment needs its own query.

## Nested namespace

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

The left side offers names with `suffix=:`, the right switches to `mode_parts /`. Keep the local path fallback, quote the remote path, guard the remote command, and cache slow lists.

## Command-valued option

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

A terminated option stores a whole command line: copy its values into `argc__positionals` with a nameref, complete the executable while there are fewer than two words, then delegate with `_argc_util_comp_subcommand 0`. `argc__option` holds the generated variable name (`argc_command`), not the array, and `"${!argc__option}"` yields only the first element. `_choice_command` uses `_argc_util_comp_command` (`<SKILL_ROOT>/references/compgen-helpers.md` §4): the wrapper executes it in another process, so only real `PATH` executables are valid, not shell builtins or aliases. A terminated positional calls the same function without the nameref branch.

## Context-dependent candidates

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

Read `$argc_<id>`, `argc__positionals` for earlier words, and `argc__dash` when `--` changes the meaning. For a mode flag, test for a non-empty value, not `1`.

## Project context and targets

```sh
_choice_script() {
    local pkg
    pkg="$(_argc_util_path_search_parent package.json)"
    [[ -n $pkg ]] || return 0
    command -v yq >/dev/null 2>&1 || return 0
    yq '(.scripts // {}) | keys | .[]' "$pkg"
}
```

Find the marker upward, then parse only; never execute build tools. For a Makefile, read the files a plain invocation would read (the `-f` file, `MAKEFILES`, or `GNUmakefile`/`makefile`/`Makefile`); collect names and descriptions in source order, skip `%`, `$`, and special targets, then print from `END`; never execute recipes.

## Aggregated and cached sources

```sh
_choice_image() {
    _argc_util_cache 60 _choice_image_uncached "docker__images:$argc_host"
}
```

Combine sources with `_argc_util_parallel` (`<SKILL_ROOT>/references/compgen-helpers.md` §5) and cache with a key that includes the directory, file, stack, or host. Guard external tools inside the uncached function.

## Prefixed and path-valued words

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

A prefixed option (`-Xfoo`), a symbol (`+toolchain`), or a path introduced by `@`/`+`. For a path, pair `prefix=` with `filter=`. A prefixed option is `prefixed: true` with `names: ["-X"]`; a symbol uses `@meta symbol +name[...]`.

## Shared function across options

```sh
_choice_value() {
    case "$argc__option" in
        argc_color) echo red green blue ;;
        argc_size)  echo small medium large ;;
    esac
}
```

Use when several options share a source or one is split across items; switch on `argc__option`, or read `"${!argc__option}"` for a repeatable option (`<SKILL_ROOT>/references/compgen.md` §2).

