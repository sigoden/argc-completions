#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       help for ollama
# @flag -v --version    version for ollama

# {{ ollama serve
# @cmd Start ollama
# @flag -h --help    help for serve
serve() {
    :;
}
# }} ollama serve

# {{ ollama create
# @cmd Create a model from a Modelfile
# @option -f --file <file>    Name of the Modelfile (default "Modelfile") (default "Modelfile")
# @flag -h --help             help for create
# @arg model[`_choice_model`]
create() {
    :;
}
# }} ollama create

# {{ ollama show
# @cmd Show information for a model
# @flag -h --help       help for show
# @flag --license       Show license of a model
# @flag --modelfile     Show Modelfile of a model
# @flag --parameters    Show parameters of a model
# @flag --system        Show system prompt of a model
# @flag --template      Show template of a model
# @arg model[`_choice_model`]
show() {
    :;
}
# }} ollama show

# {{ ollama run
# @cmd Run a model
# @option --format <string>    Response format (e.g. json)
# @flag -h --help              help for run
# @flag --insecure             Use an insecure registry
# @flag --nowordwrap           Don't wrap words to the next line automatically
# @flag --verbose              Show timings for response
# @arg model[`_choice_model`]
# @arg prompt
run() {
    :;
}
# }} ollama run

# {{ ollama pull
# @cmd Pull a model from a registry
# @flag -h --help     help for pull
# @flag --insecure    Use an insecure registry
# @arg model[`_choice_model`]
pull() {
    :;
}
# }} ollama pull

# {{ ollama push
# @cmd Push a model to a registry
# @flag -h --help     help for push
# @flag --insecure    Use an insecure registry
# @arg model[`_choice_model`]
push() {
    :;
}
# }} ollama push

# {{ ollama list
# @cmd List models
# @flag -h --help    help for list
list() {
    :;
}
# }} ollama list

# {{ ollama cp
# @cmd Copy a model
# @flag -h --help    help for cp
# @arg source
# @arg target
cp() {
    :;
}
# }} ollama cp

# {{ ollama rm
# @cmd Remove a model
# @flag -h --help    help for rm
# @arg model*[`_choice_model`]
rm() {
    :;
}
# }} ollama rm

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_model() {
    ollama list | _argc_util_transform_table 'NAME' ''
}

command eval "$(argc --argc-eval "$0" "$@")"