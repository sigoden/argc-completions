#!/usr/bin/env bash
# >>> llm-generate
# @meta combine-shorts
# @option --root-choice[`_choice_root`] <V>
# {{ demo remote
# @cmd Manage remotes
# @meta inherit-flag-options
# @option --foo[`_choice_foo`] <VALUE>  Foo description with `backticks`
# @flag --bar  Bar description with `backticks`
# @arg v1[`_choice_val`]
remote() {
    :;
}
# }} demo remote
# <<< llm-generate

# >>> llm-prompt
# %%demo
# - prompt for demo
# %%demo remote
# - prompt for demo remote
# <<< llm-prompt

# >>> choice-fns
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi

_choice_foo() {
    echo foo
}

_choice_root() {
    echo root
}

_choice_val() {
    echo value
}

# <<< choice-fns

command eval "$(argc --argc-eval "$0" "$@")"
