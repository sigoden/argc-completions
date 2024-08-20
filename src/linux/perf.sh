_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@
        $@ --help | sed '/perf commands are:/ c\Commands:/'
    elif [[ $# -eq 2 ]]; then
        help_text="$($@ --help)"
        usage="$(echo "$help_text" | sed -n '/^SYNOPSIS/,/^[A-Z]/ {//!p}')"
        options="$(echo "$help_text" | sed -n '/^\(OPTIONS\|COMMON OPTIONS\)$/,/^[A-Z]/ {//!p}')"
        commands="$(echo "$help_text" | sed -n '/^COMMANDS$/,/^[A-Z]/ {//!p}')"
        if [[ "$*" == "perf bench" ]]; then
            usage=""
            commands="$(echo "$help_text" | sed -n '/^SUBSYSTEM$/,/^[A-Z]/ {//!p}')"
        elif [[ "$*" == "perf c2c" ]]; then
            usage=""
            commands="$(printf "  %s\n" record report)"
        elif [[ "$*" == "perf daemon" ]]; then
            usage=""
            commands="$(printf "  %s\n" start stop signal ping)"
        elif [[ "$*" == "perf iostat" ]]; then
            usage=""
            commands="$(printf "  %s\n" list)"
        elif [[ "$*" == "perf kmem" ]]; then
            usage=""
            commands="$(printf "  %s\n" record stat)"
        elif [[ "$*" == "perf kvm" ]]; then
            usage=""
            commands="$(printf "  %s\n" top record report diff buildid-list stat)"
        elif [[ "$*" == "perf lock" ]]; then
            usage=""
            commands="$(printf "  %s\n" record report script info)"
        elif [[ "$*" == "perf mem" ]]; then
            usage=""
            commands="$(printf "  %s\n" record)"
        elif [[ "$*" == "perf sched" ]]; then
            usage=""
            commands="$(printf "  %s\n" record latency map replay script timehist)"
        elif [[ "$*" == "perf script" ]]; then
            usage="  perf script <script> <args>..."
            commands="$(printf "  %s\n" record report)"
        elif [[ "$*" == "perf stat" ]]; then
            usage=""
            commands="$(printf "  %s\n" record report)"
        elif [[ "$*" == "perf test" ]]; then
            usage="  perf test [<test-name-fragments>|<test-numbers>]"
            commands="$(printf "  %s\n" list)"
        elif [[ "$*" == "perf trace" ]]; then
            usage=""
            commands="$(printf "  %s\n" record)"
        fi
        echo SYNOPSIS
        echo "$usage"
        echo OPTIONS
        echo "$options"
        echo COMMANDS
        echo "$commands"
    elif [[ $# -eq 3 ]]; then
        if [[ "$*" == "perf c2c record" ]]; then
            $1 $2 --help | sed -n '/^RECORD OPTIONS/,/^[A-Z]/ p'
        elif [[ "$*" == "perf c2c report" ]]; then
            $1 $2 --help | sed -n '/^REPORT OPTIONS/,/^[A-Z]/ p'
        elif [[ "$*" == "perf kvm stat" ]]; then
            cat <<-'EOF'
Commands:
    record
    report
    live
EOF
        elif [[ "$*" == "perf lock report" ]]; then
            $1 $2 --help | sed -n '/^REPORT OPTIONS/,/^[A-Z]/ p'
        elif [[ "$*" == "perf lock info" ]]; then
            $1 $2 --help | sed -n '/^INFO OPTIONS/,/^[A-Z]/ p'
        elif [[ "$*" == "perf mem record" ]]; then
            $1 $2 --help | sed -n '/^RECORD OPTIONS/,/^[A-Z]/ p'
        elif [[ "$*" == "perf sched map" ]]; then
            $1 $2 --help | sed -n '/^OPTIONS FOR PERF SCHED MAP/,/^[A-Z]/ p'
        elif [[ "$*" == "perf sched timehist" ]]; then
            $1 $2 --help | sed -n '/^OPTIONS FOR PERF SCHED TIMEHIST/,/^[A-Z]/ p'
        elif [[ "$*" == "perf stat record" ]]; then
            $1 $2 --help | sed -n '/^STAT RECORD/,/^[A-Z]/ p'
        elif [[ "$*" == "perf stat report" ]]; then
            $1 $2 --help | sed -n '/^STAT REPORT/,/^[A-Z]/ p'
        fi
    elif [[ $# -eq 4 ]]; then
        if [[ "$*" == "perf kvm stat report" ]]; then
            $1 $2 --help | sed -n '/^STAT REPORT OPTIONS/,/^[A-Z]/ p'
        elif [[ "$*" == "perf kvm stat live" ]]; then
            $1 $2 --help | sed -n '/^STAT LIVE OPTIONS/,/^[A-Z]/ p'
        fi
    fi
}
