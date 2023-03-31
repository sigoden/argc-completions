#!/usr/bin/env bash

# @describe Extract csv(cli definitions table) from completion scripts

# @arg script!          Sepcifiy the completion script
# @arg outdir!          The directory to save the extracted csv to

write-csv() {
    local json name output_file
    json="$(echo "$1" | base64 -d)"
    name="$(echo ${@:2} | tr ' ' '/')"
    output_file="$argc_outdir/$name.csv"
    mkdir -p "$(dirname "$output_file")"
    > "$output_file"
    write-head "$output_file"
    while read -r param; do
        write-param $param >> "$output_file"
    done < <(echo "$json" | jq -r '.params[]? | @base64')
    while read -r subcmd; do
        local subcmd_json name aliases body
        subcmd_json="$(echo "$subcmd" | base64 -d)"
        name="$(echo "$subcmd_json" | jq -r '.name')"
        aliases="$(echo "$subcmd_json" | jq -r '.aliases[]' | tr '\n' ' ')"
        body="$(echo "$name $aliases" | sed 's/ /, /g')"
        body="${body%??}"
        echo "| command | $body | |" >> "$output_file"
        write-csv $subcmd ${@:2} $name
    done < <(echo "$json" | jq -r '.subcommands[]? | @base64')
}

write-param() {
    local json values kind multiple required body short no_long name choices
    json="$(echo "$1" | base64 -d)"
    kind="$(echo "$json" | jq -r '.kind')"
    multiple="$(echo "$json" | jq -r '.multiple')"
    required="$(echo "$json" | jq -r '.required')"
    if [[ "$kind" == "Arg" ]]; then
        body="$(echo "$json" | jq -r '.value_name // empty')"
        if [[ -z "$body" ]]; then
            name="$(echo "$json" | jq -r '.name')"
            case "$multiple:$required" in
                "true:true")
                body="<$name>..."
                ;;
                "true:false")
                body="[$name]..."
                ;;
                "false:true")
                body="<$name>"
                ;;
                *)
                body="$name"
                ;;
            esac
        fi
        choices="$(get_choices $1)"
        echo "| argument | $body | $choices |"
        set +x
    elif [[ "$kind" == "Flag" ]]; then
        body=""
        short="$(echo "$json" | jq -r '.short // empty')"
        if [[ -n "$short" ]]; then
            body="-$short"
        fi
        no_long="$(echo "$json" | jq -r '.no_long')"
        if [[ "$no_long" == "false" ]]; then
            name="$(echo "$json" | jq -r '.name')"
            body="$body --$name"
            if [[ "$multiple" == "true" ]]; then
                body="$body..."
            fi
        fi
        echo "| option | $body | |"
    elif [[ "$kind" == "Option" ]]; then
        body=""
        short="$(echo "$json" | jq -r '.short // empty')"
        if [[ -n "$short" ]]; then
            body="-$short"
        fi
        no_long="$(echo "$json" | jq -r '.no_long')"
        if [[ "$no_long" == "false" ]]; then
            name="$(echo "$json" | jq -r '.name')"
            body="$body --$name"
            if [[ "$multiple" == "true" ]]; then
                body="$body..."
            fi
            local has_value_name="false"
            while read -r value_name; do
                has_value_name="true"
                body="$body <$value_name>"
            done < <(echo "$json" | jq -r '.value_names[]')
            if [[ "$has_value_name" == "false" ]]; then
                body="$body <$(echo "$name" |  tr [:lower:] [:upper:])>"
            fi
        fi
        choices="$(get_choices $1)"
        echo "| option | $body | $choices |"
    fi
}

write-head() {
    output_file="$1"
    echo "| type     | body | choices |" >> "$output_file"
    echo "| -------- | -----| ------- |" >> "$output_file"
}

get_choices() {
    json="$(echo "$1" | base64 -d)"
    out="$(echo "$json" | jq -r '.choices[]?' | tr '\n' ' ' | sed 's/ /, /g')"
    echo "${out%??}"
}

eval "$(argc --argc-eval "$0" "$@")"

log_exit() {
    echo $*
    exit 1
}

if [ ! -f "$argc_script" ]; then
    log_exit Script "'$argc_script'" not found.
fi
if [ ! -d "$argc_outdir" ]; then
    log_exit Outdir "'$argc_outdir'" not found.
fi

write-csv "$(argc --argc-export $argc_script |  jq -r '@base64')" "$(basename $argc_script ".sh")"