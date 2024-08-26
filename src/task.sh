_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    prev="${argc__args[-2]}"
    prev_prev="${argc__args[-3]}"
    if [[ "$prev" == "context" ]]; then
        _choice_context
        printf "%s\n" define show list none delete
        return
    elif [[ "$prev" == "config" ||  "$prev" == "show" ]]; then
        _choice_config
        return
    elif [[ "$prev" == "delete" && "$prev_prev" == "context"  ]]; then
        _choice_context
        return
    fi
    if [[ "$ARGC_CWORD" == '+'* ]]; then
        _choice_tag | sed 's/^/+/'
        return
    elif [[ "$ARGC_CWORD" == '-'* ]]; then
        _choice_tag | sed 's/^/-/'
        return
    elif [[ "$ARGC_CWORD" == *:* ]]; then
        _choice_attr
        return
    elif [[ "$ARGC_CWORD" == "rc."* ]]; then
        _choice_config | sed 's/^\(.*\)$/rc.\1\x00/'
        return
    fi
    current_cmd="$(_helper_current_command)"
    if [[ -z "$current_cmd" ]]; then
        if _helper_has_id; then
            _argc_util_parallel _choice_command 
        else
            _argc_util_parallel _choice_id ::: _choice_command ::: _choice_attr
        fi
    elif grep -w -q "$current_cmd" < <(_choice_command_mod); then
        _argc_util_parallel _choice_attr
    fi
}

_choice_attr() {
    command cat <<-'EOF' | _argc_util_comp_kv ${SEP:-:}
description=;;Task description text
status=pending,completed,deleted,waiting;;Status of task
project=`_choice_project`;;Project name
priority=`_choice_priority`;;Task priority
due=`_choice_date`;;Due date
recur=`_choice_freq`;;Recurrence frequency
until=`_choice_date`;;Expiration date
limit=;;Desired number of rows in report
wait=`_choice_date`;;Date until task becomes pending
entry=`_choice_date`;;Date task was created
end=`_choice_date`;;Date task was completed/deleted
start=`_choice_date`;;Date task was started
scheduled=`_choice_date`;;Date task is scheduled to start
dependson=`_choice_id`;;Other tasks that this task depends upon
EOF
}

_choice_command() {
    _task _zshcommands | sed 's/:[^:]\+:/\t/'
    _task _alias
}

_choice_command_mod() {
    printf "%s\n" add annotate append delete done duplicate log modify prepend start stop   
}

_choice_config() {
    _task _config
}

_choice_context() {
    _task _context
}

_choice_date() {
    cat <<-'EOF'
today	Today
yesterday	Yesterday
tomorrow	Tomorrow
sow	Start of week
soww	Start of work week
socw	Start of calendar week
som	Start of month
soq	Start of quarter
soy	Start of year
eow	End of week
eoww	End of work week
eocw	End of calendar week
eom	End of month
eoq	End of quarter
eoy	End of year
mon	Monday
tue	Tuesday\
wed	Wednesday
thu	Thursday
fri	Friday
sat	Saturday
sun	Sunday
goodfriday	Good Friday
easter	Easter
eastermonday	Easter Monday
ascension	Ascension
pentecost	Pentecost
midsommar	Midsommar
midsommarafton	Midsommarafton
later	Later
someday	Some Day
EOF
}

_choice_freq() {
    cat <<-'EOF'
daily	Every day
day	Every day
weekdays	Every day skipping weekend days
weekly	Every week
biweekly	Every two weeks
fortnight	Every two weeks
monthly	Every month
quarterly	Every three months
semiannual	Every six months
annual	Every year
yearly	Every year
biannual	Every two years
biyearly	Every two years
EOF
}

_choice_id() {
    _task _zshids | sed 's/:/\t/'
}

_choice_priority() {
    cat <<-'EOF'
H	High
M	Middle
L	Low
EOF
}

_choice_project() {
    _task _project
}

_choice_tag() {
    _task _tags
}

_helper_current_command() {
    cmds=( $(_task _commands | tr '\n' ' ') $(_task _alias | tr '\n' ' ') )
    for arg in "${argc__args[@]:1}"; do
        for cmd in "${cmds[@]}"; do
            if [[ "$arg" == "$cmd" ]]; then
                echo "$cmd"
                return
            fi
        done
    done
}

_helper_has_id() {
    for arg in "${argc__args[@]:1}"; do
        if [[ "$arg" =~ ^[0-9]+$ ]]; then
            return 0
        fi
    done
    return 1
}

_task() {
    task rc.hooks=0 "$@"
}
