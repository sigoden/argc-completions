#!/usr/bin/env bash

# @describe Automaticlly generate completion script for commands

# @option --spec=generic            Choose a spec
# @option --cmd-help='--help'       How to help text
# @option --subcmd-help='--help'    How to help text of subcommand
# @option --level=1                 Additonal subcommand level
# @option --cache-dir               Specify cache dir
# @option --output-dir              Specify output dir
# @flag --force                     Ignore cache csv When running
# @arg cmd!                         Specify the command, must be able to run locally
# @arg subcmd                       Optional sub command

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

export NO_COLOR=true
export AICHAT_ROLES_FILE="$ROOT_DIR/roles.yaml"

command_names=()

handle_lines() {
    store_option_names=()
    local csv="$(fetch_csv $@)"
    echo "$csv" | grep -iE ' *\| *(\w+)+ *\| *-.*\|' | awk -v kind=option -f "$parser_file" >> "$output_file"
    echo "$csv" | grep -iE ' *\| *argument *\|' | awk -v kind=argument -f "$parser_file" >> "$output_file"
    if [[ $# -gt 1 ]] && [[ ${#args[@]} -eq $# ]]; then
        echo "# SUBCMD-INJECT" >> "$output_file"
    fi
    if [[ $# -lt $(( ${#args[@]} + $argc_level )) ]]; then
        while read -r item; do
            if [[ -n "$item" ]]; then
                handle_subcommand "$item" $@ >> "$output_file"
            fi
        done < <(echo "$csv" | grep -iE ' *\| *(command|subcommand) *\|' | awk -v kind=command -f "$parser_file")
    fi
}

handle_subcommand() {
    local names=( $1 )
    local cmd_name="${names[0]}"
    local cmd_aliases="$(echo "${names[@]:1}" | sed 's/ /,/g')"
    if [[  ! " ${command_names[*]} " =~ " $cmd_name " ]]; then
        command_names+=( "$cmd_name" )
    else 
        return
    fi
    local cmd_args=( "${args[@]}" "$cmd_name" )
    local cmd_level=${#cmd_args[@]}
    echo
    echo "# $(repeat_string '{' $cmd_level) ${cmd_args[@]}"
    echo "# @cmd"
    if [[ -n "$cmd_aliases" ]]; then
        echo "# @alias $cmd_aliases"
    fi
    local subcmd_file="$subcmds_dir/$(concat_args ${cmd_args[@]}).sh"
    if [[ -f "$subcmd_file" ]]; then
        cat "$subcmd_file" \
            | sed 's/^\([^_][A-Za-z0-9_-]\+\)()/'"$cmd_name"'::\1()/' \
            | sed -n '/eval.*(argc /{n;x;d;};x;1d;p;${x;p;}' \
            | sed 's/# SUBCMD-INJECT/'"$cmd_name"'() {\n    :;\n}/'
    else
        if [[ "${cmd_args[0]}" != "__"* ]]; then
            handle_lines ${cmd_args[@]}
        fi
        print_cmd_fn $cmd_name
    fi
    echo "# $(repeat_string '}' $cmd_level) ${cmd_args[@]}"
    echo 
}


fetch_csv() {
    local name=$(echo $@ | sed 's/ /-/g')
    local path="$cache_dir/$name.csv" 
    if [[ "$argc_force" != "1" ]] && [[ -f "$path" ]]; then
        cat "$path" | sed -n '3,$ p' 
    else
        local text
        if [[ $# -eq 1 ]]; then
            text="$($@ "$argc_cmd_help" 2>&1)"
        else
            if [[ "$argc_subcmd_help" == '-'* ]]; then
                text="$($@ "$argc_subcmd_help" 2>&1)"
            else
                text="$("${@:1:$#-1}" "$argc_subcmd_help" "${!#}" 2>&1)"
            fi
        fi
        local csv="$(echo "$text" | aichat -S -r "$argc_spec")"
        echo "$csv" > "$path"
        echo "$csv" | sed -n '3,$ p' 
    fi
}

merge() {
    local sed_file="$src_dir/${output_name}.sed"
    if [[ -f "$sed_file" ]]; then
        sed -i -f "$sed_file" "$output_file"
    fi
    local src_file="$src_dir/${output_name}.sh"
    if [[ -f "$src_file" ]]; then
        echo >> "$output_file"
        cat "$src_file" >> "$output_file"
        echo >> "$output_file"
        while read -r util_fn_name; do
            util_fn_file="$utils_dir/${util_fn_name}.sh"
            if [ -f "$util_fn_file" ]; then
                echo >> "$output_file"
                cat "$util_fn_file" >> "$output_file"
                echo >> "$output_file"
            else
                echo "Unknown util fn: $util_fn_name" >&2
            fi
        done < <(grep -o '_argc_util_[[:alnum:]_]*' "$src_file" | uniq)
    fi
}

validate_script() {
    output=$(bash "$output_file" --help 2>&1)
    if ! grep -q "USAGE:" <<<"$output"; then
        echo "$output"
    fi
}

set_globals() {
    args=( $argc_cmd $argc_subcmd )
    cache_dir="${argc_cache_dir:-"$ROOT_DIR/cache"}"
    output_dir="${argc_output_dir:-"$ROOT_DIR/completions"}"
    subcmds_dir="$ROOT_DIR/subcmds"
    src_dir="$ROOT_DIR/src"
    parser_file="$ROOT_DIR/parser.awk"
    utils_dir="$ROOT_DIR/utils"
    command_names+=( "$argc_cmd" )
    output_name="$(concat_args ${args[@]})"
    [[ ! -d "$cache_dir" ]] && mkdir -p "$cache_dir"
    [[ ! -d "$output_dir" ]] && mkdir -p "$output_dir"
    [[ ! -d "$subcmds_dir" ]] && mkdir -p "$subcmds_dir"

    if [[ "$output_name" == '__'* ]]; then
        cache_dir="$ROOT_DIR/tests"
        output_dir="$ROOT_DIR/tests"
    fi
    if [[ -n "$argc_subcmd" ]]; then
        output_dir="$subcmds_dir"
    fi
    output_file="$output_dir/$output_name.sh"
}

concat_args() {
    echo $@ | awk '{$1=$1};1' | tr ' ' '-'
}

repeat_string() {
    printf "%0.s$1" $(seq 1 $2)
}

print_head() {
    if [[ -z "$argc_subcmd" ]]; then
        printf "%s\n" "#!/usr/bin/env bash"
        printf "%s\n" "# Automatic generated, DON'T MODIFY IT."
        printf "\n"
    fi
}

print_tail() {
    printf "\n%s" "eval \"\$(argc --argc-eval \"\$0\" \"\$@\")\""
}

print_cmd_fn() {
    echo "$1() {"
    echo "    :;"
    echo "}"
}

eval "$(argc --argc-eval "$0" "$@")"

set_globals
print_head > "$output_file"
handle_lines ${args[@]}
merge
print_tail >> "$output_file"
validate_script