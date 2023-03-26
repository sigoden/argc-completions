#!/usr/bin/env bash

# @option -a --arg-help=--help      Command argument to get help
# @option --spec=generic            Choose a spec
# @flag --force                     Ignore cache csv When running
# @arg cmd!                         Specify the command, must able to run locally
# @arg subcmd                       Optional sub command

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$ROOT_DIR/completions"}
CACHE_DIR="$ROOT_DIR/cache"
SUBCMDS_DIR="$ROOT_DIR/subcmds"
[[ ! -d "$CACHE_DIR" ]] && mkdir -p "$CACHE_DIR"
[[ ! -d "$SUBCMDS_DIR" ]] && mkdir -p "$SUBCMDS_DIR"

export NO_COLOR=true
export AICHAT_ROLES_FILE="$ROOT_DIR/roles.yaml"

NO_COMMAND_NAMES=( "help" "command" "command" "subcommand" "completions" "none" "N/A" )
NO_ARGUMENT_NAMES=( "flags" "options" "commands" "command" )

command_line="$*"
store_command_names=()

run() {
    set_globals
    print_head > "$output_file"
    handle_lines $argc_cmd $argc_subcmd
    apply_patches
    print_tail >> "$output_file"
    validate_script
}

handle_lines() {
    store_option_names=()
    local IFS=$'\n'
    local csv=( $( fetch_csv $@ ) )
    for item in ${csv[@]}; do
        local kind="$(get_kind "$item")"
        if [[ -n "$kind" ]] && [[ "$kind" != "command" ]] && [[ "$kind" != "argument" ]]; then
            local body="$(get_body "$item")"
            if [[ -n "$body" ]]; then
                handle_option "$item" >> "$output_file"
            fi
        fi
    done
    for item in ${csv[@]}; do
        local kind="$(get_kind "$item")"
        if [[ "$kind" == "argument" ]]; then
            local body="$(get_body "$item")"
            if [[ -n "$body" ]]; then
                handle_argument "$item" >> "$output_file"
            fi
        fi
    done
    if [[ $# -eq 1 ]]; then
        for item in ${csv[@]}; do
            local kind="$(get_kind "$item")"
            if [[ "$kind" == "command" ]]; then
                local body="$(get_body "$item")"
                if [[ -n "$body" ]]; then
                    handle_subcommand "$item" $@ >> "$output_file"
                fi
            fi
        done
    fi
}

handle_subcommand() {
    local input="$1"
    local IFS=' '
    local names=( $( get_body "$input" | sed 's/\(,\|\/\)/ /g' ) )
    if [[ -z "$names" ]] || [[ "$names" == '<'* ]] || [[ "$names" == '['* ]] || grep -qwi -- "$names" <<<"${NO_COMMAND_NAMES[@]}"; then
        return
    fi
    local dedup_names=()
    for name in ${names[@]}; do
        if [[  ! " ${store_command_names[*]} " =~ " $name " ]]; then
            dedup_names+=( "$name" )
            store_command_names+=( "$name" )
        fi
    done
    if [[ ${#dedup_names[@]} -eq 0 ]]; then
        return
    fi
    local cmd_name="$dedup_names"
    local cmd_aliases=( "${dedup_names[@]:1}" )

    echo
    echo "# {{{ $argc_cmd $cmd_name"
    echo "# @cmd"
    if [[ -n "$cmd_aliases" ]]; then
        echo "# @alias $(echo "$cmd_aliases" | tr -d ' ')"
    fi
    local subcmd_file="$SUBCMDS_DIR/$(concat_args ${@:2} $cmd_name).sh"
    if [[ -f "$subcmd_file" ]]; then
        cat "$subcmd_file" \
            | sed 's/^\([^_][A-Za-z0-9_-]\+\)()/'"$name"'::\1()/' \
            | sed -n '/eval.*(argc /{n;x;d;};x;1d;p;${x;p;}' \
            | sed 's/# SUBCMD-PATCHES/'"$name"'() {\n    :;\n}/'
    else
        handle_lines ${@:2} $cmd_name
        print_cmd_fn $cmd_name
    fi
    echo "# }}} $argc_cmd $cmd_name"
    echo 
}


handle_option() {
    local input="$1"
    local IFS=' '
    local names=( $( get_body "$input" | sed 's/,/ /g' ) )
    local short_names=()
    local long_names=()
    local name_suffix=""
    local notations=()
    local dedup_notation=0
    add_notation() {
        local name="$1"
        if [[ "$name" == *'...'* ]]; then
            name_suffix="*"
        fi
        local notation="$(normalize_notation "$name")"
        if [[ "$name_suffix" == '*' ]] && [[ "$notations" == "$notation" ]]; then
            return
        fi
        if [[ $dedup_notation -eq 1 ]]; then
            if [[ ! " ${notations[*]} " =~ " $notation " ]]; then
                notations+=( "$notation" )
            fi
        else
            notations+=( "$notation" )
        fi
        dedup_notation=0
    }
    for name in ${names[@]}; do
        if [[ "$name" == "--help" ]] || [[ "$name" == "--version" ]]; then
            return
        fi
        if [[  ! " ${store_option_names[*]} " =~ " $name " ]]; then
            if [[ "$name" == '--'* ]]; then
                dedup_notation=1
                if [[ "$name" == *'...' ]]; then
                    name_suffix="*"
                    name="${name::-3}"
                elif [[ "$name" == *'='* ]]; then
                    name="$(echo "$name" | tr -cd '[:alnum:]=_-')"
                    add_notation "${name#*=}"
                    name="${name%=*}"
                fi
                long_names+=( "$name" )
                store_option_names+=( "$name" )
            elif [[ "$name" == '-'* ]]; then
                name="${name:0:2}"
                short_names+=( "$name" )
                store_option_names+=( "$name" )
            else
                add_notation "$name"
            fi
        fi
    done
    if [[ -z "$short_names" ]] && [[ -z "$long_names" ]]; then
        return
    fi
    local notations_val
    local tag_val
    local choices="$(get_choices "$input")"
    if [[ -n "$notations" ]]; then
        tag_val="# @option"
        if [[ -n "$choices" ]]; then
            name_suffix="${name_suffix}[$choices]"
        fi
        if [[ -n "$notations" ]]; then
            if [[ ${#long_names[@]} -ne 1 ]] || [[ "<$(echo ${long_names:2} | tr '[:lower:]' '[:upper:]')>" != "${notations[*]}" ]]; then
                notations_val=" ${notations[*]}"
            fi
        fi
    else
        tag_val="# @flag"
    fi
    if [[ ${#short_names[@]} -eq 1 ]] && [[ ${#long_names[@]} -eq 1 ]]; then
        echo "${tag_val} ${short_names} ${long_names}${name_suffix}${notations_val}"
    else
        for name in ${short_names[@]}; do
            echo "${tag_val} ${name}${name_suffix}${notations_val}"
        done
        for name in ${long_names[@]}; do
            echo "${tag_val} ${name}${name_suffix}${notations_val}"
        done
    fi
}

handle_argument() {
    local input="$1"
    local name=( $( get_body "$input" | sed 's/,/ /g' ) )
    if [[ -z "$name" ]]; then
        return
    fi
    local sanitized_name="$(echo "$name" | tr -cd '[:alnum:]_-')"
    if grep -qwi -- "$sanitized_name" <<<"${NO_ARGUMENT_NAMES[@]}"; then
        return
    fi
    local choices="$(get_choices "$input")"
    local line="# @arg $sanitized_name"
    if [[ -n "$choices" ]]; then
        line="${line}[$choices]"
    elif [[ "$name" == *'...' ]]; then
        line="$line*"
    fi
    echo "$line"
}

fetch_csv() {
    local name=$(echo $@ | sed 's/ /-/g')
    local path="$CACHE_DIR/$name.csv" 
    if [[ "$argc_force" != "1" ]] && [[ -f "$path" ]]; then
        cat "$path" | sed -n '3,$ p' 
    else
        local text="$($@ "$argc_arg_help" 2>&1)"
        local csv="$(echo "$text" | aichat -S -r "$argc_spec")"
        echo "$csv" > "$path"
        echo "$csv" | sed -n '3,$ p' 
    fi
}

normalize_notation() {
    local notation="$(echo "$1" |  sed 's/\\//g' | sed 's/\.\.\.//')"
    local result
    if grep -q '<.*>' <<<"$notation"; then
        result=$(echo "$notation" | sed 's/.*<\(.\+\)>.*/\1/')
    elif grep -q '\[.*\]' <<<"$notation"; then
        result=$(echo "$notation" | sed 's/.*\[\(.\+\)\].*/\1/')
    else
        result="$notation"
    fi
    echo "<$result>"
}

get_kind() {
    echo "$1" | awk -F'|' '{print $2}' | awk '{$1=$1};1'
}

get_body() {
    echo "$1" | awk -F'|' '{print $3}' | awk '{$1=$1};1'
}

get_choices() {
    choices=$(echo "$1" | awk -F'|' '{print $4}' | awk '{$1=$1};1' | sed 's/, */|/g' | tr -d '*')
    if [[ "$choices" == *'|'* ]]; then
        echo "$choices"
    fi
}

apply_patches() {
    if [[ -n "$argc_subcmd" ]]; then
        echo "# SUBCMD-PATCHES" >> "$output_file"
    fi
    local sed_file="$ROOT_DIR/patches/${output_name}.sed"
    if [[ -f "$sed_file" ]]; then
        sed -i -f "$sed_file" "$output_file"
    fi
    local patch_file="$ROOT_DIR/patches/${output_name}.sh"
    if [[ -f "$patch_file" ]]; then
        echo >> "$output_file"
        cat "$patch_file" >> "$output_file"
        echo >> "$output_file"
        local IFS=$'\n'
        util_fns=( $(grep -o '_argc_util_[[:alnum:]_]*' "$patch_file" | uniq) )
        for util_fn_name in ${util_fns[@]}; do
            util_fn_file="$ROOT_DIR/utils/${util_fn_name}.sh"
            if [ -f "$util_fn_file" ]; then
                echo >> "$output_file"
                cat "$util_fn_file" >> "$output_file"
                echo >> "$output_file"
            else
                echo "Unknown util fn: $util_fn_name" >&2
            fi
        done
    fi
}

validate_script() {
    output=$(bash "$output_file" --help 2>&1)
    if ! grep -q "USAGE:" <<<"$output"; then
        echo "$output"
    fi
}

set_globals() {
    output_name="$(concat_args $argc_cmd $argc_subcmd)"
    local output_dir="$COMPLETIONS_DIR"
    if [[ "$output_name" == '__test'* ]]; then
        CACHE_DIR="$ROOT_DIR/tests"
        output_dir="$ROOT_DIR/tests"
        if [[ "$output_name" == '__test_debug' ]]; then
            set -x
        fi
    fi
    if [[ -n "$argc_subcmd" ]]; then
        output_dir="$SUBCMDS_DIR"
    fi
    output_file="$output_dir/$output_name.sh"
}

concat_args() {
    echo $@ | awk '{$1=$1};1' | tr ' ' '-'
}

print_head() {
    if [[ -z "$argc_subcmd" ]]; then
        printf "%s\n" "#!/usr/bin/env bash"
        printf "%s\n" "# Generated with \`./generate.sh $command_line\`. DON'T MODIFY IT"
        printf "\n"
    fi
}

print_tail() {
    printf "\n%s" "eval \"\$(argc \"\$0\" \"\$@\")\""
}

print_cmd_fn() {
    echo "$1() {"
    echo "    :;"
    echo "}"
}

eval "$(argc "$0" "$@")"
run