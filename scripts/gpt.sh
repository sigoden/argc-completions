SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# @describe Use gpt to extract csv(cli definitions table) from help txt
# @flag --no-description        Not extract description
# @option --model=gpt-3.5-turbo Specific gpt model
# @option --temperature=0.7     Specific temperature
# @arg help-file                Specific help text file. if ommit, read from stdin

log_exit() {
    echo $*
    exit 1
}

prompt() {
    if [[ -z "$argc_no_description" ]]; then
    cat <<-EOF
Extract all subcommands, options and positional arguments in the help text and convert it into markdown table.
Only take the first sentence when extracting the description.
Extract the possible values from the description, concatenate them with commas, and put them into choices value.
In each column, type and body are required.
If no ARGS group, extract arguments from usage.
Ignore header and footer description.
## Help Text
Usage: app [OPTIONS] ARG ARG2...
ARGUMENTS/ARGS:
    ARG           Desc
    ARG2...       Desc
    <A|B>         Desc
OPTIONS/SECTIONS:
    -s --long <VALUE>    Desc, [possible values: a, b, c]
    -t --tag             Desc
    --level <severity>   Desc, Value: low|high|critical
    --otp <Yes|No>       Desc
COMMANDS/SUBCOMMANDS:
    cmd, c
Footer description.
## Translated markdown table 
| type     | body               | choices           | description |
| -------- | ------------------ | ----------------- | ----------- |
| argument | ARG                |                   | Desc        |
| argument | ARG2...            |                   | Desc        |
| argument | <A,B>              |                   | Desc        |
| option   | -s  --long <VALUE> | a, b, c           | Desc        |
| option   | -t  --tag          |                   | Desc        |
| option   | --level <severity> | low,high,critical | Desc        |
| option   | --otp <Yes,NO >    |                   | Desc        |
| command  | cmd  c             |                   | Desc        |
## Help Text I provides
$*
## Translated markdown table you replys
EOF
    else
    cat <<-EOF
Extract all subcommands, options and positional arguments in the help text and convert it into markdown table.
Choices are multiple words separated by commas.
In each column, type and body are required.
If no ARGS group, extract arguments from usage.
Ignore header and footer description.
## Help Text
Usage: app [OPTIONS] ARG ARG2...
ARGUMENTS/ARGS:
    ARG           Desc
    ARG2...       Desc
    <A|B>         Desc
OPTIONS/SECTIONS:
    -s --long <VALUE>    Desc, [possible values: a, b, c]
    -t --tag             Desc
    --level <severity>   Desc, Value: low|high|critical
    --otp <Yes|No>       Desc
COMMANDS/SUBCOMMANDS:
    cmd, c
Footer description.
## Translated markdown table 
| type     | body               | choices           |
| -------- | ------------------ | ----------------- |
| argument | ARG                |                   |
| argument | ARG2...            |                   |
| argument | <A,B>              |                   |
| option   | -s  --long <VALUE> | a, b, c           |
| option   | -t  --tag          |                   |
| option   | --level <severity> | low,high,critical |
| option   | --otp <Yes,NO >    |                   |
| command  | cmd  c             |                   |
## Help Text I provides
$*
## Translated markdown table you replys
EOF
    fi
}

fetch() {
    local index content result
    index=$1
    content=$(echo "$2" | jq -Rs '.')
    result=$(curl -s https://api.openai.com/v1/chat/completions \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer $OPENAI_API_KEY" \
        -d "{
            \"model\": \"$argc_model\",
            \"messages\": [{ \"role\": \"user\", \"content\": $content }],
            \"temperature\": $argc_temperature
        }" | jq -r '.choices[0].message.content')

    if [[ $index -gt 0 ]]; then
        echo -e "$result" | sed -n '3,$ p'
    else 
        echo -e "$result"
    fi
}

split_text() {
    local len max_tokens base_size
    text_len=$1
    max_tokens=4096
    if [[ "$argc_model" == "gpt-4" ]]; then
        max_tokens=8192
    elif [[ "$argc_model" == "gpt-4-32k" ]]; then
        max_tokens=32768
    fi
    base_size=$(( 2 * max_tokens - 800 ))
    echo $(( text_len / base_size + 1 ))
}

main() {
    if [[ -z "$OPENAI_API_KEY" ]]; then
        log_exit "Miss OPENAI_API_KEY environment variable"
    fi
    if [[ -z "$argc_help_file" ]]; then
        help_text="$(cat)"
    else
        help_text="$(cat "$argc_help_file")"
    fi
    
    local num_parts=$(split_text ${#help_text})
    local num_lines=$(echo "$help_text" | wc -l)

    local part_size=$((num_lines / num_parts ))
    local remainder=$((num_lines % num_parts ))  # calculate the remainder for the last part

    local start end
    for ((i=0; i<num_parts; i++)); do
        start=$((i*part_size+1))
        if [[ $i -eq $(( num_parts -1 )) ]]; then
            end=$((start + part_size + remainder - 1))
        else
            end=$((start + part_size - 1))
        fi

        text="$(echo "$help_text" | sed -n "$start,$end p")"
        fetch $i "$(prompt "$(echo "$text")")"
    done
}

eval "$(argc --argc-eval "$0" "$@")"