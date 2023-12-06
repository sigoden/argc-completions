_patch_help() {
    if [[ "$*" == "go clean" ]]; then
        cat <<-'EOF'
Options:
    --cache         remove the entire go build cache
    --i             remove the corresponding installed archive or binary
    --modcache      remove the entire module download cache
    --r             apply recursively to all the dependencies
    --testcache     expire all test results in the go build cache
EOF

    elif [[ "$*" == "go env" ]]; then
        cat <<-'EOF'
Options:
    -json            print the environment in JSON format
    -u               unsets the default setting for the named environment variables
    -w <value>       changes the default settings of the named environment variables
EOF

    elif [[ "$*" == "go fmt" ]]; then
        cat <<-'EOF'
Usage: go fmt [path...]
Options:
    -mod            set module download mode
    -n              print commands that would be executed
    -x              print commands as they are executed
EOF

    elif [[ "$*" == "go generate" ]]; then
        _patch_help_run_help_subcmd $@
        cat <<-'EOF'
Options:
    -n              print commands that would be executed
    -v              print the names of packages and files as they are processed
    -x              print commands as they are executed
EOF

    elif [[ "$*" == "go get" ]]; then
        cat <<-'EOF'
Options:
    -d              only download the source code needed to build
    -insecure       permit using insecure schemes such as HTTP
    -t              consider modules needed to build tests
    -u              update modules providing dependencies
EOF

    elif [[ "$*" == "go install" ]]; then
        cat <<-'EOF'
Options:
    -i              install the packages that are dependencies of the target
    -o <file>       set output file or directory
EOF

    elif [[ "$*" == "go list" ]]; then
        cat <<-'EOF'
Options:
    -compiled       set CompiledGoFiles to the Go source files presented to the compiler
    -deps           iterate over not just the named packages but also all their dependencies
    -e              change the handling of erroneous packages
    -export         set the Export field to the name of a file containing up-to-date export information
    -f <value>      specify an alternate format for the list
    -find           identify the named packages but not resolve their dependencies
    -json           print package data in JSON format
    -m              list modules instead of packages
    -test           report not only the named packages but also their test binaries
    -u              add information about available upgrades
    -versions       set the Module's Versions field to list of all known versions
EOF

    elif [[ "$*" == "go mod download" ]]; then
        cat <<-'EOF'
    -json      print a sequence of JSON objects
    -x         print the commands download executes
EOF

    elif [[ "$*" == "go mod edit" ]]; then
        cat <<-'EOF'
Options:
    -dropexclude <value>      drop an exclusion
    -dropreplace <value>      drop a module replacement
    -droprequire <value>      drop a requirement
    -exclude <value>          add an exclusion
    -fmt                      reformats the go.mod file without making other changes
    -go <value>               set the expected Go language version
    -json                     print the final go.mod file in JSON format instead instead of writing back
    -module <path>            changes the module's path
    -print                    print the final go.mod in its text format instead of writing back
    -replace <value>          add a module replacement
    -require <value>          add a requirement
EOF

    elif [[ "$*" == "go mod tidy" ]]; then
        cat <<-'EOF'
Options:
    -compat <value>      preserve additional checksums needed for given version
    -e                   attempt to proceed despite errors
    -go <value>          update the 'go' directive to given version
    -v                   print information about removed modules
EOF

    elif [[ "$*" == "go mod vendor" ]]; then
        cat <<-'EOF'
Options:
    -v      print the names of vendored modules and packages
EOF

    elif [[ "$*" == "go mod why" ]]; then
        cat <<-'EOF'
Options:
    -m           treat arguments as a list of modules
    -vendor      exclude tests of dependencies
EOF

    elif [[ "$*" == "go work edit" ]]; then
        cat <<-'EOF'
Options:
    -dropreplace <value>...      drop a replacement
    -dropuse <value>...          drop a use directive
    -fmt                         reformat the go.work file without making other changes
    -go <value>                  set the expected Go language version
    -json                        print the final go.work in JSON format
    -print                       print the final go.work in its text format
    -replace <value>...          add a replacement
    -use <file>...               add a use directive
EOF

    elif [[ "$*" == "go work use" ]]; then
        cat <<-'EOF'
Options:
    -r                           recursively for modules in the argument directories
EOF

    elif [[ "$*" == "go run" ]]; then
        cat <<-'EOF'
Options:
    -exec <xprog>   invoke the binary using xprog
EOF

    elif [[ "$*" == "go test" ]]; then
        _patch_help_run_help_subcmd $@
        cat <<-'EOF'
Options:
    -bench <value>          run only those benchmarks matching a regular expression
    -benchtime <value>      Run enough iterations of each benchmark to take given duration
    -count <value>          run each test and benchmark n times
    -cpu                    specify a list of GOMAXPROCS values for which the tests or benchmarks should be executed
    -failfast               Do not start new tests after the first test failure
    -i                      install packages that are dependencies of the test
    -list <value>           list tests, benchmarks, or examples matching the regular expression
    -parallel <value>       Allow parallel execution of test functions that call t.Paralle
    -run <value>            run only those tests and examples matching the regular expression
    -short                  tell long-running tests to shorten their run time
    -timeout <value>        if a test binary runs longer than duration d, panic
    -vet <value>            configure the invocation of "go vet" during "go test" to use the comma-separated list of vet check
EOF

    elif [[ "$*" == "go tool" ]]; then
        _patch_help_run_help_subcmd $@
        cat <<-'EOF'
Options:
    -n      only print the command that would be executed
EOF

    elif [[ "$*" == "go version" ]]; then
        _patch_help_run_help_subcmd $@
        cat <<-'EOF'
Options:
    -m      print each executable's embedded module version information
    -v      report unrecognized files
EOF

    elif [[ "$*" == "go vet" ]]; then
        cat <<-'EOF'
Options:
    -n      print commands that would be executed
    -x      print commands as they are executed
EOF


    else
        _patch_help_run_help_subcmd $@
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '-buildmode;[`_choice_buildmode`]' \
            '-buildvcs;[true|false|auto]' \
            '-compiler;[gccgo|gc]' \
            '-mod;[readonly|vendor|mod]' \
            '-overlay(<file:.json>)' \
            '-pgo(<file:.pgo>)' \
    )"

    if [[ "$*" == "go build" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'path...'

    elif [[ "$*" == "go clean" ]]; then
        echo "$table" | \
        _patch_table_copy_options go build

    elif [[ "$*" == "go doc" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;'

    elif [[ "$*" == "go env" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'env;*[`_choice_env`]'

    elif [[ "$*" == "go generate" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' '<file:.go>'

    elif [[ "$*" == "go get" ]]; then
        echo "$table" | \
        _patch_table_copy_options go build

    elif [[ "$*" == "go install" ]]; then
        echo "$table" | \
        _patch_table_copy_options go build

    elif [[ "$*" == "go list" ]]; then
        echo "$table" | \
        _patch_table_copy_options go build

    elif [[ "$*" == "go mod download" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'modules;*[`_choice_mod`]'

    elif [[ "$*" == "go mod edit" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '-dropexclude;[`_choice_mod_dropexclude`]' \
            '-dropreplace;[`_choice_mod_dropreplace`]' \
            '-droprequire;[`_choice_mod_droprequire`]' \
            '-replace;[`_choice_mod_replace`]' \
        | \
        _patch_table_edit_arguments ';;' 'modfile <file:go.mod>'

    elif [[ "$*" == "go mod why" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'packages;*[`_choice_mod_why`]'

    elif [[ "$*" == "go work edit" ]]; then
        echo "$table" \ |
        _patch_table_edit_options \
            '-dropreplace;*|[`_choice_work_dropreplace`]' \
            '-dropuse;*|[`_choice_work_dropuse`]' \
            '-replace;*|[`_choice_work_replace`]' \
        | \
        _patch_table_edit_arguments ';;' 'workfile <file:go.work>'

    elif [[ "$*" == "go run" ]]; then
        echo "$table" | \
        _patch_table_copy_options go build

    elif [[ "$*" == "go test" ]]; then
        echo "$table" | \
        _patch_table_copy_options go build | \
        _patch_table_edit_options '-bench;*|[`_choice_bench_target`]' \ |
        _patch_table_edit_arguments ';;' 'target;*|[`_choice_test_target`]'

    elif [[ "$*" == "go tool" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'name;[`_choice_tool`]' 'args...'

    else
        echo "$table"
    fi
}

_choice_buildmode() {
    cat <<-'EOF'
archive
c-archive
c-shared
default
shared
exe
pie
plugin
EOF
}

_choice_env() {
    go env --json | yq 'to_entries | map(.key + "	" + .value) | .[]'
}

_choice_mod() {
    _helper_mod_json | yq '(.Require // []) | map(.Path + "@" + .Version) | .[]'
}

_choice_mod_dropexclude() {
    _helper_mod_json | yq '(.Exclude // []) | map(.Path + "@" + .Version) | .[]'
}

_choice_mod_dropreplace() {
    _helper_mod_json | yq '(.Replace // []) | .[].Old.Path'
}

_choice_mod_droprequire() {
    _helper_mod_json | yq '(.Require // []) | filter(.Indirect != true) | .[].Path'
}

_choice_mod_replace() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_mod_no_version | _argc_util_transform suffix== nospace
    else
        if [[ -f "$argc_modfile" ]]; then
            chdir="$(dirname "$argc_modfile")"
        else
            chdir="$(_argc_util_path_search_parent -p go.mod)"
        fi
        _argc_util_comp_path cd="$chdir" filter="$argc__kv_filter"
    fi
}

_choice_mod_why() {
    _argc_util_parallel _choice_mod_no_version ::: _helper_list_imports
}

_choice_work_dropreplace() {
    _helper_work_json  | \
    yq '.Replace | .[] | with(select(.New | has("Version")); .New.Path = .New.Path + "@" + .New.Version) | .Old.Path + "	" + .New.Path'
}

_choice_work_dropuse() {
    _helper_work_json  | yq '(.Use // []) | .[].DiskPath'
}

_choice_work_replace() {
    _argc_util_mode_kv =
    if [[ -f "$argc_workfile" ]]; then
        root_dir="$(dirname "$argc_workfile")"
    else
        root_dir="$(_argc_util_path_search_parent -p go.work)"
    fi
    if [[ -z "$argc__kv_prefix" ]]; then
        while IFS=$'\n' read -r disk_path; do
            mod_path="$(_argc_util_path_resolve "$root_dir" "$disk_path")"
            (cd "$mod_path" && _choice_mod_no_version | _argc_util_transform suffix==)
        done < <(_choice_work_dropuse)
    else
        _argc_util_comp_path cd="$root_dir" filter="$argc__kv_filter"
    fi
}

_choice_bench_target() {
    go test -list='^Bench' 2>/dev/null | sed '$d'
}

_choice_test_target() {
    go test -list='^(Test|Example)' 2>/dev/null | sed '$d'
}

_choice_tool() {
    go tool
}

_choice_mod_no_version() {
    _helper_mod_json | yq '(.Require // []) | .[].Path'
}

_helper_list_imports() {
     go list -f "{{.ImportPath}}	{{.Doc}}" all
}

_helper_mod_json() {
    local args=()
    if [[ -f "$argc_modfile" ]]; then
        args+=( "$argc_modfile" )
    fi
    go mod edit -json "${args[@]}" 2>/dev/null
}

_helper_work_json() {
    local args=()
    if [[ -f "$argc_workfile" ]]; then
        args+=( "$argc_workfile" )
    fi
    go work edit -json "${args[@]}" 2>/dev/null
}
