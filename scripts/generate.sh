#!/usr/bin/env bash

set -e

# @describe Automaticlly generate completion script for commands

# @option -o --output <path>        Specify output dir or file. If omitted, output to stdout
# @flag -v --verbose                Show log
# @arg cmd!                         Specify the command, must be able to run locally
# @arg subcmd                       Optional subcommand

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"

handle_cmd() {
    local output table level nest_fn_prefix command_lines command_output line cmd_paths
    local cmd_paths=( $(sanitize_cmds "$@") )
    nest_fn_prefix="$(echo "${@:$((1 + $cmds_level))}" | sed 's/ /::/g')"
    table="$(get_table "${cmd_paths[@]}")"
    output="$(echo "$table" | grep -v '^command #' | parse_script "${cmd_paths[@]}")"
    if [[ $# -gt $cmds_level ]]; then
        if [[ -z "$output" ]]; then
            output="$(print_cmd_fn "$nest_fn_prefix")"
        else
            output="$output"$'\n'"$(print_cmd_fn "$nest_fn_prefix")"
        fi
    fi
    mapfile -t command_lines < <(echo "$table" | grep '^command #' | parse_script "${cmd_paths[@]}")
    for line in "${command_lines[@]}"; do
        if [[ -z "$line" ]]; then
            continue
        fi
        local subcmd_output="$(handle_subcmd "$line" $@)"
        if [[ -z "$subcmd_output" ]]; then
            continue
        fi
        if [[ -z "$command_output" ]]; then
            command_output="$subcmd_output"
        else
            command_output="$command_output"$'\n'"$subcmd_output"
        fi
    done 
    if [[ -n "$command_output" ]]; then
        output="$output"$'\n'"$command_output"
    fi
    echo "$output"
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
    local new_cmds_sanitized=( $(sanitize_cmds "${new_cmds[@]}") )
    local new_cmds_level=$(( ${#new_cmds[@]} + 1 - $cmds_level ))

    local cmd_full_name="$(printf "%s\n" ${new_cmds[@]} | uniq | tr '\n' ' ' | sed -e 's/ $//' -e 's/ /::/g')"
    if [[ "$cmd_name" != "$argc_cmd" ]] && [[  ! "$command_names" == *";$cmd_full_name;"* ]]; then
        command_names="$command_names$cmd_full_name;"
    else 
        return
    fi
    echo
    echo "# $(repeat_string '{' $new_cmds_level) ${new_cmds_sanitized[@]}"
    if [[ -z "$description" ]]; then
        echo "# @cmd"
    else
        echo "# @cmd $description"
    fi
    if [[ -n "$cmd_aliases" ]]; then
        echo "# @alias $cmd_aliases"
    fi
    handle_cmd ${new_cmds[@]}
    echo "# $(repeat_string '}' $new_cmds_level) ${new_cmds_sanitized[@]}"
}

get_table() {
    log_info "$@: start"
    if [[ $# -gt 5 ]]; then
        log_error "$@: loop"
        return
    fi
    local path help_text table table_hash parent_table_hash parent_key
    if [[ $(type -t _patch_help) = "function" ]]; then
        log_info "$@: patch help"
        help_text="$(_patch_help $@)"
    else
        help_text="$(_patch_help_run_help $@)"
    fi
    table="$(echo "$help_text" | parse_table $@)"
    table_hash="$(echo "$table" | get_hash)"
    parent_key="${@:1:$(($#-1))} :: "
    parent_table_hash="$(cat "$store_table_hash" | grep "$parent_key" | gawk -F ' :: ' '{print $2}')"
    if [[ "$table_hash" == "$parent_table_hash" ]]; then
        help_text=""
        table=""
        table_hash=""
        log_info "$@: maybe no help"
    fi
    echo "$@ :: $table_hash" >> "$store_table_hash"
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
    if [[ $(type -t _patch_table) = "function" ]]; then
        log_info "$@: patch table"
        table="$(echo "$table" | _patch_table $@)"
    fi
    echo "$table"
}

embed_src_script() {
    if [[ ! -f "$src_file" ]]; then
        return
    fi
    local main_content="$1"
    local src_fns src_script 
    mapfile -t src_fns < <( \
        echo "$main_content" | \
        sed -n '/^# @\(option\|arg\|meta\)/ s/.* \S\+\[`\(\S\+\)`\].*/\1/p' | \
        grep -v '^_module_' \
    )

    if [[ ${#src_fns} -gt 0 ]]; then
        src_script="$(get_src_script "${src_fns[@]}")"
    fi

    local mod_fns mod_script 
    mapfile -t mod_fns < <( \
        echo "$main_content"$'\n'"$src_script" | \
        grep -o -w '_module_[[:alnum:]_]*' | 
        sort | uniq  \
    )
    if [[ ${#mod_fns} -gt 0 ]]; then
        mod_script="$(get_mod_script "${mod_fns[@]}")"
    fi

    local script_content="${src_script}"$'\n'"${mod_script}"
    if [[ -z "$script_content" ]]; then
        return
    fi

    echo 

    if grep -q -o -w '_argc_util_[[:alnum:]_]*' <<<"$script_content"; then
        echo
        echo '. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"'
    fi

    if [[ -n "$src_script" ]]; then
        echo
        echo "$src_script"
    fi

    if [[ -n "$mod_script" ]]; then
        echo
        echo "$mod_script"
    fi
}

get_mod_script() {
    local mod_fns mod_path mod_fns_script mod_fns_deps values fn_name
    declare -A mod_fns_script
    declare -A mod_fns_deps
    mod_fns=( "$@" )
    for mod_path in "$utils_dir/_modules/"*.sh; do
        while IFS=$'\n' read -r line; do
            IFS=';' read -a values <<<"$line"
            fn_name=${values[0]}
            mod_fns_script[$fn_name]="$(sed -n "${values[1]},${values[2]} p" "$mod_path")"
            mod_fns_deps[$fn_name]="${values[3]}"
        done < <(gawk -f "$scripts_dir/inspect-fns.awk" "$mod_path")
    done

    local checked_mod_fns to_check_mod_fns embed_mod_fns
    declare -A checked_mod_fns
    embed_mod_fns=()
    to_check_mod_fns=( "${mod_fns[@]}" )
    local IFS=" "
    while [ ${#to_check_mod_fns[@]} -gt 0 ]; do
        local dep_mod_fns=()
        for mod_fn in ${to_check_mod_fns[@]}; do
            if [[ ${checked_mod_fns[$mod_fn]} -eq 1 ]]; then
                continue
            else
                checked_mod_fns[$mod_fn]=1
            fi
            if [[ -v mod_fns_script[$mod_fn] ]]; then
                dep_mod_fns+=( ${mod_fns_deps[$mod_fn]} )
                embed_mod_fns+=( $mod_fn )
            else
                continue
            fi
        done
        to_check_mod_fns=()
        for mod_fn in ${dep_mod_fns[@]}; do
            if [[ ${checked_mod_fns[$mod_fn]} -eq 1 ]]; then
                continue
            else
                to_check_mod_fns+=( $mod_fn )
            fi
        done
    done

    if [[ ${#embed_mod_fns[@]} -gt 0 ]]; then
        IFS=$'\n'
        embed_mod_fns=( $(printf "%s\n" "${embed_mod_fns[@]}" | sort -n) )

        local mod_script mod_fn_script
        for mod_fn in ${embed_mod_fns[@]}; do
            mod_fn_script="${mod_fns_script[$mod_fn]}"
            if [[ -z "$mod_script" ]]; then
                mod_script="$mod_fn_script"
            else
                mod_script="$mod_script"$'\n'$'\n'"$mod_fn_script"
            fi
        done

        echo "$mod_script"
    fi
}

get_src_script() {
    local src_fns all_src_fns src_fns_script src_fns_deps values fn_name
    declare -A src_fns_script
    declare -A src_fns_deps
    all_src_fns=()
    src_fns=( "$@" )
    local IFS=" "
    while IFS=$'\n' read -r line; do
        IFS=';' read -a values <<<"$line"
        fn_name=${values[0]}
        all_src_fns+=( $fn_name )
        src_fns_script[$fn_name]="$(sed -n "${values[1]},${values[2]} p" "$src_file")"
        src_fns_deps[$fn_name]="${values[3]}"
    done < <(gawk -f "$scripts_dir/inspect-fns.awk" "$src_file")

    local checked_src_fns to_check_src_fns embed_src_fns
    declare -A checked_src_fns
    embed_src_fns=()
    to_check_src_fns=( "${src_fns[@]}" )
    local IFS=" "
    while [ ${#to_check_src_fns[@]} -gt 0 ]; do
        local dep_src_fns=()
        for src_fn in ${to_check_src_fns[@]}; do
            if [[ ${checked_src_fns[$src_fn]} -eq 1 ]]; then
                continue
            else
                checked_src_fns[$src_fn]=1
            fi
            if [[ -v src_fns_script[$src_fn] ]]; then
                dep_src_fns+=( ${src_fns_deps[$src_fn]} )
                embed_src_fns+=( $src_fn )
            else
                continue
            fi
        done
        to_check_src_fns=()
        for src_fn in ${dep_src_fns[@]}; do
            if [[ ${checked_src_fns[$src_fn]} -eq 1 ]]; then
                continue
            else
                to_check_src_fns+=( $src_fn )
            fi
        done
    done

    local check_src_fn src_script src_fn_script unused_src_fns
    unused_src_fns=()
    for check_src_fn in "${all_src_fns[@]}"; do
        if [[ " ${embed_src_fns[@]} " == *" $check_src_fn "* ]] || [[ ! "$check_src_fn" =~ ^(_helper_|_choice_) ]]; then
            src_fn_script="${src_fns_script[$check_src_fn]}"
            if [[ -z "$src_script" ]]; then
                src_script="$src_fn_script"
            else
                src_script="$src_script"$'\n'$'\n'"$src_fn_script"
            fi
        else
            unused_src_fns+=( $check_src_fn )
        fi
    done
    if [[ ${#unused_src_fns[@]} -gt 0 ]]; then
        log_info ": unused fns: ${unused_src_fns[@]}"
    fi

    echo "$src_script"
}

parse_table() {
    if [[ "$argc_verbose" == "1" ]]; then
        gawk -v "CMDS=$*" -v "LOG=1" -f "$scripts_dir/parse-table.awk"
    else
        gawk -v "CMDS=$*" -f "$scripts_dir/parse-table.awk"
    fi
}

parse_script() {
    if [[ "$argc_verbose" == "1" ]]; then
        gawk -v "CMDS=$*" -v "LOG=1" -f "$scripts_dir/parse-script.awk"
    else
        gawk -v "CMDS=$*" -f "$scripts_dir/parse-script.awk"
    fi
}

validate_script() {
    if [[ -f "$output_file" ]]; then
        log_info ": validate script"
        output=$(bash "$output_file" --help 2>&1 || true)
        if [[ -n "$output" ]]; then
            if ! grep -q "USAGE:" <<<"$output"; then
                log_error "$(echo "$output" | head -n 1)"
            fi
        fi
    fi
}

set_globals() {
    cmds=( $argc_cmd $argc_subcmd )
    scripts_dir="$ROOT_DIR/scripts"
    src_dir="$ROOT_DIR/src"
    utils_dir="$ROOT_DIR/utils"
    help_dir="$ROOT_DIR/tmp/argc_completions_help"
    command_names=";$argc_cmd;"
    join_cmds="$(echo "${cmds[@]}" | sed 's/ /-/g')"

    if [[ "$argc_cmd" == '__test' ]]; then
        src_dir="$ROOT_DIR/tests/src"
        argc_output="$ROOT_DIR/tests/completions"
    else
        if ! command -v $argc_cmd >/dev/null; then
            log_error "$argc_cmd not found"
            exit 1
        fi
    fi

    cmds_level=1
    if [[ -n $argc_subcmd ]]; then
        if command -v $argc_cmd-$argc_subcmd >/dev/null; then
            cmds_level=2
            src_file="$src_dir/$argc_cmd/$argc_subcmd.sh"
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

    if [[ -d "$help_dir" ]]; then
        help_output_file="$help_dir/$join_cmds.txt"
        rm -rf "$help_output_file"
    fi

    source "$utils_dir/_patch_utils/index.sh"
    if [[ -f "$src_file" ]]; then
        source "$src_file"
    fi

    if [[ ! -d /tmp/argc_completions_hash ]]; then
        mkdir -p /tmp/argc_completions_hash
    fi
    store_table_hash="/tmp/argc_completions_hash/$join_cmds"
    echo -n > "$store_table_hash"
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
    echo
    echo 'command eval "$(argc --argc-eval "$0" "$@")"'
}

print_cmd_fn() {
    echo "$1() {"
    echo "    :;"
    echo "}"
}

sanitize_cmds() {
    echo "$@" | gawk '{for(i = 1; i <= NF; i++) { gsub(/_*$/, "", $i); value = value " "  $i}; print value}'
}

get_hash() {
    if command -v md5sum >/dev/null; then
        md5sum | gawk '{print $1}'
    elif command -v md5 >/dev/null; then
        md5
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

main_content="$(handle_cmd "${cmds[@]}")"
src_content="$(embed_src_script "$main_content")"

output_content="$(print_head; echo "$main_content$src_content" ; print_tail)"

if [[ -n "$output_file" ]]; then
    mkdir -p "$(dirname "$output_file")"
    printf "%s" "$output_content" > "$output_file"
    validate_script
else
    printf "%s\n" "$output_content"
fi