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

_module_nix_log_format() {
    cat <<-'EOF'
raw	This is the raw format, as outputted by nix-build.
internal-json	Outputs the logs in a structured manner.
bar	Only display a progress bar during the builds.
bar-with-logs	Display the raw logs, with the progress bar at the bottom.
EOF
}

_module_nix_shortcut() {
    echo $NIX_PATH | sed 's/:/\n/g' | sed 's/^\(\S\+\)=\(.*\)/<\1>\t\2/'
}

_module_nix_path() {
    _module_nix_shortcut
    _argc_util_comp_path exts:.nix
    printf "%s\n" https:// http://
}

_module_nix_installed_package() {
    nix-env --query --installed --json  | \
    yq 'to_entries | .[].value.pname'
}

_module_nix_profile() {
    target="/nix/var/nix/profiles/"
    if [[ "$target" == "$ARGC_CWORD"* ]]; then
        echo "$target"
    else
        _argc_util_comp_path
    fi
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

_module_nix_cmd_name() {
    if [[ -z "$nix_cmd_name" ]]; then
        nix_cmd_name="$(basename ${argc__args[0]})"
        nix_cmd_name="${nix_cmd_name%%.*}"
    fi
    echo "$nix_cmd_name"
}
