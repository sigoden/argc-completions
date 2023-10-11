#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --no-out-link                            Do not create a symlink to the output path.
# @flag --dry-run                                Show what store paths would be built or downloaded.
# @option -o --out-link <outlink>                Change the name of the symlink to the output path created from result to outlink.
# @flag --help                                   Prints out a summary of the command syntax and exits.
# @flag --version                                Prints out the Nix version number on standard output and exits.
# @option -v --verbose[`_module_nix_verbose`]    Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                                  Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format[`_module_nix_log_format`] <format>  This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output                     By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>                 Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                                  Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time                        Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                                Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going                          Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed                         Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                               Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode                          When this option is used, no attempt is made to open the Nix database.
# @option --arg*[`_module_nix_arg_name`] <name> <value>  This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr*[`_module_nix_arg_name`] <name> <value>  This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr[`_module_nix_attr`] <attrPath>  Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                                Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                              Add an entry to the Nix expression search path.
# @option --option <name> <value>                Set the Nix configuration option name to value.
# @flag --repair                                 Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg paths*[`_module_nix_path`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_nix_arg_name() {
    if [[ "${argc__args[-2]}" != @(--arg|--argstr) ]]; then
        return
    fi

    local func opt
    if [[ -n "$argc_expr" ]]; then
        func="${argc__positionals[0]}"
    else
        local file="$(_module_nix_get_file)"
        func="${file:+"import $file"}"
    fi
    if [[ -z "$func" ]]; then
        return
    fi
    names=($(_module_nix_eval_stdin 2>&1 <<NIX_FILE
             if builtins.typeOf ($func) == "lambda" then
                builtins.attrNames (builtins.functionArgs ($func))
             else
                 ""
NIX_FILE
    ))
    if [[ $? -gt 0 ]]; then
        return 1
    fi
    printf "%s\n" "${names[@]}"
}

_module_nix_attr() {
    local defexpr func
    if [[ -n "$argc_expr" ]]; then
        func="${argc__positionals[0]}"
    else
        local file="$(_module_nix_get_file)"
        if [[ -n "$file" ]]; then
            func="import $file"
        fi
    fi
    if [[ -n "$func" ]]; then
        local i len args=""
        len="${#argc_arg[@]}"
        for ((i=0; i<$len; i+=2)); do
            args+="${argc_arg[$i]} = ${argc_arg[$((i+1))]};"
        done
        len="${#argc_argstr[@]}"
        for ((i=0; i<$len; i+=2)); do
            args+="${argc_arg[$i]} = \"${argc_arg[$((i+1))]}\";"
        done
        defexpr="$func $args"
    else
        local cmd_name="$(_module_nix_cmd_name)"
        if [[ "$cmd_name" == nix-env ]]; then
            defexpr=$(_module_nix_gen_defexpr ~/.nix-defexpr)

        elif [[ "$cmd_name" == nix ]]; then
            local channels
            IFS=':' read -ra channels <<< "$NIX_PATH"
            channels+=( ${argc_I[@]} )

            declare -A names
            for channel in "${channels[@]}"; do
                name="${channel%%=*}"
                nix_path="${channel#*=}"
                if [[ "$name" != "$channel" ]]; then
                    names["$name"]=1
                fi
            done

            defexpr=$'{ '
            for name in "${!names[@]}"; do
                [[ "$name" == nixos-config ]] && continue
                defexpr+="$name = import <${name}>; "
            done
            defexpr+=' }'
        fi
    fi
    if [[ -n "$defexpr" ]]; then
        _module_nix_gen_attr "$defexpr"
    fi
}

_module_nix_cmd_name() {
    if [[ -z "$nix_cmd_name" ]]; then
        nix_cmd_name="$(basename ${argc__args[0]})"
        nix_cmd_name="${nix_cmd_name%%.*}"
    fi
    echo "$nix_cmd_name"
}

_module_nix_eval_stdin() {
    local i override
    if [[ -n "$argc_I" ]]; then
        override=$(IFS=':'; echo "${argc_I[*]}")
    fi
    override+=${override:+:}${NIX_PATH}

    while [[ "$override" == *@(=|:)channel:* ]]; do
        local channel=${override#*channel:}
        channel="channel:"${channel%%:*}
        local url="https://nixos.org/channels/"${channel:8}"/nixexprs.tar.xz"
        override=${override/"$channel"/"$url"}
    done

    while [[ "$override" == *https://* ]]; do
        local url=${override#*https://}
        url="https://"${url%%:*}
        local cache=$(_module_nix_resolve_url "$url")
        override=${override/"$url"/"$cache"}
    done

    NIX_PATH=$override nix-instantiate --eval - 2> /dev/null | tr '"[]' ' '
}

_module_nix_gen_attr() {
    local cur="$ARGC_CWORD"
    if [[ $cur == .* ]]; then
        return
    fi

    local defexpr="$1"

    _argc_util_comp_parts .
    
    local -a paths=(${argc__parts_prefix//./ })
    paths=(${paths[*]/%/\"})
    paths=(${paths[*]/#/\"})

    local -a result
    result=($(_module_nix_eval_stdin <<NIX_FILE
        let
          autocall = setOrLambda:
              if builtins.isFunction setOrLambda then
                 setOrLambda {}
              else
                 setOrLambda;

          top = autocall ($defexpr);
          names = [ ${paths[*]} ];

          # Returns attr.name calling it if it's a function
          reducer = set: name:
              autocall (builtins.getAttr name set);
          result = builtins.foldl' reducer top names; #'
        in
          if builtins.isAttrs result then
            builtins.attrNames result
          else
            ""
NIX_FILE
    ))
    if [[ $? -gt 0 ]]; then
        return 1
    fi

    if [[ -z "$argc__parts_prefix" ]]; then
        printf "%s\n" "${result[@]}" | _argc_util_transform suffix=. nospace
    else
        printf "%s\n" "${result[@]}"
    fi
}

_module_nix_gen_defexpr() {
    shopt -s nullglob
    declare -A result
    local -a initialQueue=("$1/channels" "$1/channels_root" $(echo "$1"/*))
    local -a queue=("${initialQueue[@]}")

    while [[ ${#queue[@]} -gt 0 ]]; do
        local current="${queue[0]}"
        queue=(${queue[@]:1})

        if [[ -e "$current/default.nix" ]]; then
            local name
            name="$(basename "$current")"

            if [[ -z "${result[$name]}" ]]; then
                result["$name"]=$current
            fi
        else
            queue=($(echo "$current"/*) "${queue[@]}")
        fi
    done

    local nix_expr="{ "
    for name in "${!result[@]}"; do
        local expr_path="${result[$name]}"
        nix_expr+="$name = import $expr_path;"
        nix_expr+=" "
    done
    nix_expr+="}"

    echo "$nix_expr"
}

_module_nix_get_file() {
    local file
    local cmd_name="$(_module_nix_cmd_name)"
    if [[ "$cmd_name" == @(nix-env|nix) ]]; then
        file="$argc_file"
    elif [[ -e shell.nix && "$cmd_name" == nix-shell ]]; then
        file="shell.nix"
    elif [[ -e default.nix ]]; then
        file="default.nix"
    fi

    if [[ "$file" ]]; then
        if [[ "$file" == channel:* ]]; then
            file="https://nixos.org/channels/"${file:8}"/nixexprs.tar.xz"
        fi
        if [[ -e $file ]]; then
            file=$(realpath "$file" 2>/dev/null)
        elif [[ "$file" == https://* ]]; then
            file=$(_module_nix_resolve_url $file)
        fi
    fi

    printf -- "$file"
}

_module_nix_log_format() {
    cat <<-'EOF'
raw	This is the raw format, as outputted by nix-build.
internal-json	Outputs the logs in a structured manner.
bar	Only display a progress bar during the builds.
bar-with-logs	Display the raw logs, with the progress bar at the bottom.
EOF
}

_module_nix_path() {
    _module_nix_shortcut
    _argc_util_comp_path exts:.nix
    printf "%s\n" https:// http://
}

_module_nix_resolve_url() {
    local url=$1
    local input="${url##*/}\0$url"
    local sha
    sha=$(nix-hash --flat --base32 --type sha256 <(printf "$input"))
    local cache=${XDG_CACHE_HOME:-~/.cache}/nix/tarballs
    local link="$cache"/"$sha"-file
    if [[ -e "$link" ]]; then
        echo "$cache/$(basename $(readlink $link))-unpacked"
    fi
}

_module_nix_shortcut() {
    echo $NIX_PATH | sed 's/:/\n/g' | sed 's/^\(\S\+\)=\(.*\)/<\1>\t\2/'
}

_module_nix_verbose() {
    cat <<-'EOF'
0	“Errors only”: only print messages explaining why the Nix invocation failed.
1	“Informational”: print useful messages about what Nix is doing. This is the default.
2	“Talkative”: print more informational messages.
3	“Chatty”: print even more informational messages.
4	“Debug”: print debug information.
5	“Vomit”: print vast amounts of debug information.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"