#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --system       Monitor the system message bus.
# @flag --session      Monitor the session message bus.
# @option --address    Monitor an arbitrary message bus given at ADDRESS.
# @flag --profile      Use the profiling output format.
# @flag --monitor      Use the monitoring output format.
# @arg expr*,[`_choice_expr`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_expr() {
    cat <<-'EOF' | _argc_util_comp_kv =
type=signal,method_call,method_return,error;;message type
sender=;;bus or name
interface=
member=
path=__argc_value=path
path_namespace=__argc_value=path
destination;;unique name
arg0=
arg1=
arg2=
arg3=
arg4=
arg5=
arg6=
arg7=
arg8=
arg9=
arg0namespace=
eavesdrop=true,false
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"