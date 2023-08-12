#!/usr/bin/env bash

set -e

# @describe Automaticlly generate completion script for commands

# @option -o --output <file>        Specify output file. If omitted, output to stdout
# @flag -E --extend                 Mark subcmd as an extension command
# @flag -v --verbose                Show log
# @arg cmd!                         Specify the command, must be able to run locally
# @arg subcmd                       Optional subcommand

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"

command_names=";"

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
        log_error "$@: too deep"
        return
    fi
    local path help_text table
    if [[ $(type -t _patch_help) = "function" ]]; then
        log_info "$@: patch help"
        help_text="$(_patch_help $@)"
    else
        help_text="$(_patch_help_run_help $@)"
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

    local mods_script="$(get_modules_script)"

    local src_script="$(get_src_script)"

    if grep -q -o -w '_argc_util_[[:alnum:]_]*' <<<"${src_script}"$\n"${mods_script}"; then
        echo
        echo '. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"'
    fi

    if [[ -n "$src_script" ]]; then
        echo
        echo "$src_script"
    fi

    if [[ -n "$mods_script" ]]; then
        echo
        echo "$mods_script"
    fi
}

get_modules_script() {
    local module_fns module_names IFS
    module_fns=( $(cat "$src_file" | grep -o -w '_module_[[:alnum:]_]*' | tr '\n' ' ') )
    if [[ ${#module_fns[@]} -eq 0 ]]; then
        return
    fi
    module_names=()
    for mod_fn in ${module_fns[@]}; do
        local value=${mod_fn:8}
        value=${value%%_*}
        if [[ " ${module_names[@]} " != *" $value "* ]]; then
            module_names+=( $value )
        fi
    done

    local mod mod_path mod_fns_script mod_fns_deps values fn_name
    declare -A mod_fns_script
    declare -A mod_fns_deps
    IFS=";"
    for mod in ${module_names[@]}; do
        mod_path="$utils_dir/_modules/$mod.sh"
        if [[ -f "$mod_path" ]]; then
            while IFS=$'\n' read -r line; do
                values=( $line )
                fn_name=${values[0]}
                mod_fns_script[$fn_name]="$(sed -n "${values[1]},${values[2]} p" "$mod_path")"
                mod_fns_deps[$fn_name]="${values[3]}"
            done < <(gawk -f "$scripts_dir/analysis-module.awk" "$mod_path")
        fi
    done

    local checked_mod_fns to_check_mod_fns embed_mod_fns
    declare -A checked_mod_fns
    embed_mod_fns=()
    to_check_mod_fns=( ${module_fns[@]} )
    IFS=" "
    while [ ${#to_check_mod_fns[@]} -gt 0 ]; do
        local dep_module_fns=()
        for mod_fn in ${to_check_mod_fns[@]}; do
            if [[ ${checked_mod_fns[$mod_fn]} -eq 1 ]]; then
                continue
            else
                checked_mod_fns[$mod_fn]=1
            fi
            if [[ -v mod_fns_script[$mod_fn] ]]; then
                dep_module_fns+=( ${mod_fns_deps[$mod_fn]} )
                embed_mod_fns+=( $mod_fn )
            else
                continue
            fi
        done
        to_check_mod_fns=()
        for mod_fn in ${dep_module_fns[@]}; do
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

        local mods_script mod_fn_script
        for mod_fn in ${embed_mod_fns[@]}; do
            mod_fn_script="${mod_fns_script[$mod_fn]}"
            if [[ -z "$mods_script" ]]; then
                mods_script="$mod_fn_script"
            else
                mods_script="$mods_script"$'\n'$'\n'"$mod_fn_script"
            fi
        done

        echo "$mods_script"
    fi
}

get_src_script() {
    cat "$src_file" | \
    gawk 'BEGIN {
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
        }'
}

parse_table() {
    if [[ "$argc_verbose" == "1" ]]; then
        local prefix="$(echo "[info] $@" | sed 's/ /@/g')"
        gawk -v LOG_PREFIX="$prefix" -f "$scripts_dir/parse-table.awk"
    else
        gawk -f "$scripts_dir/parse-table.awk"
    fi
}

parse_script() {
    if [[ "$argc_verbose" == "1" ]]; then
        local prefix="$(echo "[info] $@" | sed 's/ /@/g')"
        gawk -v LOG_PREFIX="$prefix" -f "$scripts_dir/parse-script.awk"
    else
        gawk -f "$scripts_dir/parse-script.awk"
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
    helps_dir="$ROOT_DIR/helps"
    use_help_subcmd=0
    command_names="$command_names$argc_cmd;"
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

    if [[ -d "$helps_dir" ]]; then
        help_output_file="$helps_dir/$(echo "${cmds[@]}" | sed 's/ /-/g').txt"
        rm -rf "$help_output_file"
    fi

    if [[ "$argc_extend" == "1" ]] && [[ -n $argc_subcmd ]]; then
        cmds_level=2
    else
        cmds_level=1
    fi

    source "$utils_dir/_patch_utils/index.sh"
    if [[ -f "$src_file" ]]; then
        source "$src_file"
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

gen() {
    print_head
    handle_cmd ${cmds[@]}
    embed_script
    print_tail
}

output_content="$(gen)"

if [[ -n "$output_file" ]]; then
    mkdir -p "$(dirname "$output_file")"
    printf "%s" "$output_content" > "$output_file"
    validate_script
else
    printf "%s\n" "$output_content"
fi