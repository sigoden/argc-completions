#!/usr/bin/env bash

set -e

# @describe Automaticlly generate completion script for commands

# @option -o --output <file>        Specify output file. If omitted, output to stdout
# @flag -E --extend                 Mark subcmd as an extension command
# @flag -v --verbose                Show log
# @arg cmd!                         Specify the command, must be able to run locally
# @arg subcmd                       Optional subcommand

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"
command_names=()

handle_cmd() {
    local output table level nest_fn_prefix command_output
    table="$(get_table $@)"
    nest_fn_prefix="$(echo "${@:$((1 + $cmds_level))}" | sed 's/ /::/g')"
    output="$(echo "$table" | grep -v 'command #' | parse_script $@)"
    if [[ -n "$output" ]]; then
        output="$output"$'\n'
    fi
    if [[ $# -gt $cmds_level ]]; then
        output="$output$(print_cmd_fn "$nest_fn_prefix")"
    fi
    if [[ -z "$command_output" ]]; then
        local subcmds
        while IFS=$'\n' read -r line; do
            if [[ -n "$line" ]]; then
                subcmds+=( "$line" )
            fi
        done < <(echo "$table" | grep '^command #' | parse_script $@)
        for item in "${subcmds[@]}"; do
            if [[ -n "$item" ]]; then
                local subcmd_output="$(handle_subcmd "$item" $@)"
                if [[ -z "$command_output" ]]; then
                    command_output="$subcmd_output"
                else
                    command_output="$command_output"$'\n'"$subcmd_output"
                fi
            fi
        done
    fi
    if [[ -n "$command_output" ]]; then
        output="$output"$'\n'"$command_output"
    fi
    printf "%s\n" "$output"
}

handle_subcmd() {
    local names description
    if [[ "$1" == *'#'* ]]; then
        names=( ${1%%#*} )
        description="${1##*#}"
    else
        names="$1"
    fi
    local cmd_name="${names[0]}"
    local cmd_aliases="$(echo "${names[@]:1}" | sed 's/ /,/g')"

    local new_cmds=( "${@:2}" "$cmd_name" )
    local new_cmds_level=$(( ${#new_cmds[@]} + 1 - $cmds_level ))

    local cmd_full_name="$(printf "%s\n" ${new_cmds[@]} | uniq | tr '\n' ' ' | sed -e 's/ $//' -e 's/ /::/g')"
    if [[ "$cmd_name" != "$argc_cmd" ]] && [[  ! " ${command_names[*]} " =~ " $cmd_full_name " ]]; then
        command_names+=( "$cmd_full_name" )
    else 
        return
    fi
    echo
    echo "# $(repeat_string '{' $new_cmds_level) ${new_cmds[@]}"
    if [[ -z "$description" ]]; then
        echo "# @cmd"
    else
        echo "# @cmd $description"
    fi
    if [[ -n "$cmd_aliases" ]]; then
        echo "# @alias $cmd_aliases"
    fi
    handle_cmd ${new_cmds[@]}
    echo "# $(repeat_string '}' $new_cmds_level) ${new_cmds[@]}"
    echo 
}

get_table() {
    log_info "$@: start"
    local path help_text table
    if [[ $(type -t _patch_help) = "function" ]]; then
        log_info "$@: patch help"
        help_text="$(_patch_help $@)"
    else
        help_text="$($@ --help 2>&1)"
    fi
    if [[ -n "$help_output_file" ]]; then
        if [[ $# -eq 1 ]]; then
            echo -e "########### $@ ###########\n" >> "$help_output_file"
            echo "$help_text" >> "$help_output_file"
            echo >> "$help_output_file"
        else
            echo -e "########### $@ ###########\n" >> "$help_output_file"
            echo "$help_text" >> "$help_output_file"
            echo >> "$help_output_file"
        fi
    fi
    table="$(echo "$help_text" | parse_table $@)"
    if [[ $(type -t _patch_table) = "function" ]]; then
        log_info "$@: patch table"
        table="$(echo "$table" | _patch_table $@)"
    fi
    echo "$table"
}

embed_script() {
    if [[ ! -f "$src_file" ]]; then
        return
    fi
    echo
    echo 
    cat "$src_file" | awk '
BEGIN {
    patch_fn_state = 0
}
{
    if (patch_fn_state > 0) {
        if (match($0, /^}$/)) {
            patch_fn_state = 1
        } else if (patch_fn_state == 1 && match($0, /^\s*$/)) {
            patch_fn_state = 0
        }
    } else {
        if (match($0, /^_patch_\w+\(/)) {
            patch_fn_state = 2
        } else {
            print $0
        }
    }
}
'
    echo 
}

parse_table() {
    if [[ "$argc_verbose" == "1" ]]; then
        local prefix="$(echo "[info] $@" | sed 's/ /@/g')"
        awk -v LOG_PREFIX="$prefix" -f "$scripts_dir/parse-table.awk"
    else
        awk -f "$scripts_dir/parse-table.awk"
    fi
}

parse_script() {
    if [[ "$argc_verbose" == "1" ]]; then
        local prefix="$(echo "[info] $@" | sed 's/ /@/g')"
        awk -v LOG_PREFIX="$prefix" -f "$scripts_dir/parse-script.awk"
    else
        awk -f "$scripts_dir/parse-script.awk"
    fi
}

embed_utils() {
    util_fns=( $( cat | grep -o '_argc_util_[[:alnum:]_]*' | uniq | tr '\n' ' ') )
    for util_fn_name  in ${util_fns[@]}; do
        if [[ ! " ${global_utils_fns[*]} " =~ " $util_fn_name " ]]; then
            if [[ -z "$global_utils_fns" ]]; then
                echo
            fi
            global_utils_fns+=( "$util_fn_name" )
            util_fn_output="$(print_util_fn "$util_fn_name")"
            echo "$util_fn_output"
            echo "$util_fn_output" | embed_utils
        fi
    done
}

validate_script() {
    if [[ -f "$output_file" ]]; then
        log_info ": validate script"
        output=$(bash "$output_file" --help 2>&1)
        if [[ -n "$output" ]]; then
            if ! grep -q "USAGE:" <<<"$output"; then
                log_error "$output"
            fi
        fi
    fi
}

set_globals() {
    cmds=( $argc_cmd $argc_subcmd )
    scripts_dir="$ROOT_DIR/scripts"
    src_dir="$ROOT_DIR/src"
    utils_dir="$ROOT_DIR/utils"
    command_names+=( "$argc_cmd" )
    if [[ "$argc_cmd" == '__test' ]]; then
        src_dir="$ROOT_DIR/tests/src"
        argc_output="$ROOT_DIR/tests/completions"
    else
        command -v $argc_cmd >/dev/null 2>&1
        if [[ $? -eq 1 ]]; then
            log_error "$argc_cmd not found"
            exit 1
        fi
    fi

    if [[ ! -f "$src_file" ]]; then
        src_file="$src_dir/$argc_cmd.sh"
    fi

    if [[ -f "$argc_output" ]]; then
        output_file="$argc_output"
    elif [[ -d "$argc_output" ]]; then
        output_file="$argc_output/$(echo "${cmds[@]}" | sed 's| |/|g').sh"
    fi

    if [[ -d "$ARGC_COMPLETIONS_HELP_DIR" ]]; then
        help_output_file="$ARGC_COMPLETIONS_HELP_DIR/$(echo "${cmds[@]}" | sed 's/ /-/g').txt"
        rm -rf "$help_output_file"
    fi

    if [[ "$argc_extend" == "1" ]] && [[ -n $argc_subcmd ]]; then
        cmds_level=2
    else
        cmds_level=1
    fi
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
    printf "\n\n%s" "command eval \"\$(argc --argc-eval \"\$0\" \"\$@\")\""
}

print_cmd_fn() {
    echo "$1() {"
    echo "    :;"
    echo "}"
}

print_util_fn() {
    util_fn_name="$1"
    util_fn_file="$utils_dir/_argc_utils/$util_fn_name.sh"
    if [ -f "$util_fn_file" ]; then
        echo
        cat "$util_fn_file" 
        echo
    else
        log_error "Unknown util fn: $util_fn_name"
    fi
}

log_info() {
    if [[ "$argc_verbose" -eq 1 ]]; then
        echo "[info] $@" >&2
    fi
}

log_error() {
    echo "[error] $@" >&2
}

eval "$(argc --argc-eval "$0" "$@")"

set_globals

if [[ -f "$src_file" ]]; then
    source "$utils_dir/_patch_utils.sh"
    source "$src_file"
fi

output_content="$(print_head)"
output_content="$output_content"$'\n'$'\n'"$(handle_cmd ${cmds[@]})"
if [[ $(type -t _patch_script) = "function" ]]; then
    log_info ": patch script"
    output_content="$(echo "$output_content" | _patch_script)"
fi
if [[ -f "$src_file" ]]; then
    if grep -q _choice_ <<<"$output_content"; then
        log_info ": embemd argc util fns"
        output_content="$output_content$(embed_script ${cmds[@]})"
    fi
fi
output_content="$output_content$(echo "$output_content" | embed_utils)"
output_content="$output_content$(print_tail)"
if [[ -n "$output_file" ]]; then
    mkdir -p "$(dirname "$output_file")"
    printf "%s" "$output_content" > "$output_file"
    validate_script
else
    printf "%s\n" "$output_content"
fi