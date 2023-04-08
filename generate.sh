#!/usr/bin/env bash

# @describe Automaticlly generate completion script for commands

# @option -o --output <file>        Specify output file. If omitted, output to stdout
# @arg cmd!                         Specify the command, must be able to run locally
# @arg subcmd                       Optional sub command

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
command_names=()

handle_lines() {
    local output table nest_fn_prefix command_output command_lines
    table="$(get_table $@)"
    output="$(echo "$table" | grep -v 'command #' | awk -f "$scripts_dir/parser.awk")"
    if [[ -n "$output" ]]; then
        output="$output"$'\n'
    fi
    nest_fn_prefix="$(nest_cmd_prefix "${@:2}")"
    if [[ $# -gt 1 ]]; then
        output="$output$(print_cmd_fn "$nest_fn_prefix")"
        local command_src="$src_dir/$(slash_concat_args $@).sh"
        if [[ -f "$command_src" ]]; then
            command_output=$'\n'"$(cat "$command_src" | sed 's/^\([^_][A-Za-z0-9_-]\+\)()/'"$nest_fn_prefix"'::\1()/')"
        fi
    fi
    
    if [[ -z "$command_output" ]]; then
        while read -r item; do
            if [[ -n "$item" ]]; then
                command_lines="$(handle_subcommand "$item" $@)"
                if [[ -z "$command_output" ]]; then
                    command_output="$command_lines"
                else
                    command_output="$command_output"$'\n'"$command_lines"
                fi
            fi
        done < <(echo "$table" | grep '^command #' | awk -f "$scripts_dir/parser.awk")
    fi
    if [[ -n "$command_output" ]]; then
        output="$output"$'\n'"$command_output"
    fi
    printf "%s\n" "$output"
}

handle_subcommand() {
    local names=( ${1%%||*} )
    local description="${1##*||}"
    local cmd_name="${names[0]}"
    local cmd_aliases="$(echo "${names[@]:1}" | sed 's/ /,/g')"
    if [[  ! " ${command_names[*]} " =~ " $cmd_name " ]]; then
        command_names+=( "$cmd_name" )
    else 
        return
    fi
    local cmd_args=( "${@:2}" "$cmd_name" )
    local cmd_level=${#cmd_args[@]}
    echo
    echo "# $(repeat_string '{' $cmd_level) ${cmd_args[@]}"
    if [[ -z "$description" ]]; then
        echo "# @cmd"
    else
        echo "# @cmd $description"
    fi
    if [[ -n "$cmd_aliases" ]]; then
        echo "# @alias $cmd_aliases"
    fi
    if [[ "${cmd_args[0]}" != "__"* ]]; then
        handle_lines ${cmd_args[@]}
    fi
    echo "# $(repeat_string '}' $cmd_level) ${cmd_args[@]}"
    echo 
}

get_table() {
    local path help_txt table
    if [[ $(type -t _patch_help) = "function" ]]; then
        help_txt="$(_patch_help $@)"
    else
        help_txt="$($@ --help 2>&1)"
    fi
    table="$(echo "$help_txt" | awk -f "$scripts_dir/lexer.awk")"
    if [[ $(type -t _patch_table) = "function" ]]; then
        table="$(echo "$table" | _patch_table $@)"
    fi
    echo "$table"
}

embed_script() {
    local src_file="$src_dir/$(slash_concat_args $@).sh"
    if [[ ! -f "$src_file" ]]; then
        src_file="$src_dir/$1/$1.sh"
    fi
    if [[ -f "$src_file" ]]; then
        echo 
        echo 
        cat "$src_file" | awk -f "$scripts_dir/remove-patch-fn.awk"
        echo 
    fi
}

embed_utils() {
    util_fns=( $( cat | grep -o '_argc_util_[[:alnum:]_]*' | uniq | tr '\n' ' ') )
    for util_fn_name  in ${util_fns[@]}; do
        if [[ ! " ${global_utils_fns[*]} " =~ " $util_fn_name " ]]; then
            global_utils_fns+=( "$util_fn_name" )
            load_util_fn "$util_fn_name"
            load_util_fn "$util_fn_name" | embed_utils
        fi
    done
}

load_util_fn() {
    util_fn_name="$1"
    util_fn_file="$utils_dir/$util_fn_name.sh"
    if [ -f "$util_fn_file" ]; then
        echo
        cat "$util_fn_file" 
        echo
        echo
    else
        echo "Unknown util fn: $util_fn_name" >&2
    fi
}

validate_script() {
    if [[ -f "$output_file" ]]; then
        output=$(bash "$output_file" --help 2>&1)
        if ! grep -q "USAGE:" <<<"$output"; then
            echo "$output"
        fi
    fi
}

set_globals() {
    args=( $argc_cmd $argc_subcmd )
    scripts_dir="$ROOT_DIR/scripts"
    src_dir="$ROOT_DIR/src"
    utils_dir="$ROOT_DIR/utils"
    command_names+=( "$argc_cmd" )

    src_file="$src_dir/$argc_cmd.sh"
    if [[ ! -f "$src_file" ]]; then
        src_file="$src_dir/$argc_cmd/$argc_cmd.sh"
    fi

    if [[ -f "$argc_output" ]]; then
        output_file="$argc_output"
    elif [[ -d "$argc_output" ]]; then
        output_file="$argc_output/$argc_cmd.sh"
    fi

    if [[ "$argc_cmd" == '__'* ]]; then
        src_dir="$ROOT_DIR/tests/fixtures"
    fi

}

dash_concat_args() {
    echo $@ | awk '{$1=$1};1' | tr ' ' '-'
}

slash_concat_args() {
    echo $@ | awk '{$1=$1};1' | tr ' ' '/'
}

repeat_string() {
    printf "%0.s$1" $(seq 1 $2)
}

print_head() {
    cat <<-'EOF'
#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.
EOF
}

print_tail() {
    printf "\n\n%s" "eval \"\$(argc --argc-eval \"\$0\" \"\$@\")\""
}

print_cmd_fn() {
    echo "$1() {"
    echo "    :;"
    echo "}"
}

nest_cmd_prefix() {
    echo "$@" | sed 's/ /::/g'
}


eval "$(argc --argc-eval "$0" "$@")"

set_globals

if [[ -f "$src_file" ]]; then
    source "$src_file"
fi

output_content="$(print_head)"
output_content="$output_content"$'\n'$'\n'"$(handle_lines ${args[@]})"
if [[ $(type -t _patch_script) = "function" ]]; then
    output_content="$(echo "$output_content" | _patch_script)"
fi
output_content="$output_content$(embed_script ${args[@]})"
output_content="$output_content"$'\n'"$(echo "$output_content" | embed_utils)"
output_content="$output_content$(print_tail)"
if [[ -n "$output_file" ]]; then
    printf "%s" "$output_content" > "$output_file"
else
    printf "%s\n" "$output_content"
fi