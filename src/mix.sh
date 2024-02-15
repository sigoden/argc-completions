_patch_help() { 
    _common_edit() {
        gawk '{
            if (match($0, /^##.*[Oo]ptions/)) {
                printLine = 1
            } else if (match($0, /^#/)) {
                printLine = 0
            }
            if (printLine == 1) {
                if (match($0, /^#/)) {
                    print "Options:"
                } else if (match($0, /\s+• -/)) {
                    print gensub(/^\s+• (.*) - /, "  \\1  ", "g", $0)
                } else if (match($0, /\s+\* `/)) {
                    gsub("`", "", $0)
                    print gensub(/^\s+\* (.*) - /, "  \\1  ", "g", $0)
                } else {
                    print "    " $0
                }
            }
        }'
    }

    if [[ "$*" == "mix" ]]; then
        echo "Commands:"
        _patch_help_run_help_subcmd $@ | sed -n 's/mix \(\S\+\)\s*# \(.*\)/  \1    \2/p'
        cat <<-'EOF'
  compile.app
  compile.elixir
  compile.erlang
  compile.leex
  compile.protocols
  compile.yecc
  deps.loadpaths
  deps.precompile
  iex
  loadpaths
  phx
  phx.digest
  phx.digest.clean
  phx.gen
  phx.gen.auth
  phx.gen.cert
  phx.gen.channel
  phx.gen.context
  phx.gen.embedded
  phx.gen.html
  phx.gen.json
  phx.gen.live
  phx.gen.notifier
  phx.gen.presence
  phx.gen.release
  phx.gen.schema
  phx.gen.secret
  phx.gen.socket
  phx.routes
  phx.server
EOF
    elif [[ "$*" == "mix compile.app" ]]; then
        cat <<-'EOF'
Options:
    --force                forces compilation regardless of modification times
    --compile-path <path>  where to find .beam files and write the resulting .app file
EOF

    elif [[ "$*" == "mix compile.elixir" ]]; then
        cat <<-'EOF'
Options:
    --docs, --no-docs                         attaches (or not) documentation to compiled modules
    --debug-info, --no-debug-info             attaches (or not) debug info to compiled modules
    --force                                   forces compilation regardless of modification times
    --ignore-module-conflict                  does not emit warnings if a module was previously defined
    --long-compilation-threshold N            sets the "long compilation" threshold (in seconds) to N (see the docs for Kernel.ParallelCompiler.compile/2)
    --purge-consolidation-path-if-stale PATH  deletes and purges modules in the given protocol consolidation path if compilation is required
    --profile                                 if set to time, outputs timing information of compilation steps
    --tracer                                  adds a compiler tracer in addition to any specified in the mix.exs file
    --verbose                                 prints each file being compiled
    --warnings-as-errors                      treats warnings in the current project as errors and return a non-zero exit status
EOF

    elif [[ "$*" == "mix compile.erlang" ]] \
      || [[ "$*" == "mix compile.leex" ]] \
      || [[ "$*" == "mix compile.yecc" ]] \
    ; then
        cat <<-'EOF'
Options:
    --force            forces compilation regardless of modification times
    --no-all-warnings  prints only warnings from files currently compiled (instead of all)
EOF

    elif [[ "$*" == "mix compile.leex" ]] \
      || [[ "$*" == "mix compile.protocols" ]] \
      || [[ "$*" == "mix deps.precompile" ]] \
      || [[ "$*" == "mix iex" ]] \
      || [[ "$*" == "mix phx.gen" ]] \
      || [[ "$*" == "mix phx.gen.channel" ]] \
      || [[ "$*" == "mix phx.gen.context" ]] \
      || [[ "$*" == "mix phx.gen.embedded" ]] \
      || [[ "$*" == "mix phx.gen.presence" ]] \
      || [[ "$*" == "mix phx.gen.secret" ]] \
      || [[ "$*" == "mix phx.gen.socket" ]] \
    ; then
        :;

    elif [[ "$*" == "mix compile.yecc" ]]; then
        cat <<-'EOF'
Options:
    --force            forces compilation regardless of modification times
    --no-all-warnings  prints only warnings from files currently compiled (instead of all)
EOF

    elif [[ "$*" == "mix deps.loadpaths" ]] \
      || [[ "$*" == "mix loadpaths" ]] \
    ; then
        cat <<-'EOF'
Options:
    --no-archives-check        does not check archives
    --no-compile               does not compile even if files require compilation
    --no-deps-check            does not check or compile deps, only load available ones
    --no-elixir-version-check  does not check Elixir version
    --no-optional-deps         does not compile or load optional deps
EOF

    elif [[ "$*" == "mix phx.digest.clean" ]]; then
        cat <<-'EOF'
Options:
    -o, --output <path>   indicates the path to your compiled assets directory.
    --age <secs>          specifies a maximum age (in seconds) for assets.
    --keep <n>            specifies how many previous versions of assets to keep.
    --all                 specifies that all compiled assets (including the manifest) will be removed.
EOF

    elif [[ "$*" == "mix phx.gen.auth" ]]; then
        cat <<-'EOF'
Options:
    --hashing-lib {bcrypt|pbkdf2|argon2}    select hashing mechanism.
    --binary-id <value>                     use binary_id for its primary key and foreign keys.
    --no-binary-id                          use normal ids despite the default configuration.
    --web <name>                            customize the web module namespace
    --table <name>                          custom table name
EOF

    elif [[ "$*" == "mix phx.gen.cert" ]]; then
        cat <<-'EOF'
Options:
    --output, -o <path>  the path and base filename for the certificate and key
    --name, -n <name>    the Common Name value in certificate's subject
EOF

    elif [[ "$*" == "mix phx.gen.html" ]] \
      || [[ "$*" == "mix phx.gen.json" ]] \
      || [[ "$*" == "mix phx.gen.live" ]] \
    ; then
        cat <<-'EOF'
Options:
    --context-app <value>                   set context_app
    --web <name>                            customize the web module namespace
    --no-context
    --no-schema
EOF

    elif [[ "$*" == "mix phx.gen.notifier" ]]; then
        cat <<-'EOF'
Options:
    --context-app <value>                   set context_app
EOF

    elif [[ "$*" == "mix phx.gen.release" ]]; then
        cat <<-'EOF'
Options:
    --docker             Generate docker files
EOF

    elif [[ "$*" == "mix phx.gen.schema" ]]; then
        cat <<-'EOF'
Options:
    --no-migration, --migration
    --context-app <value>                   set context_app
    --table <name>                          custom table name
    --binary-id <value>                     use binary_id for its primary key and foreign keys.
    --no-binary-id                          use normal ids despite the default configuration.
    --prefix <value>                        set schema prefix
EOF

    elif [[ "$*" == "mix phx.routes" ]]; then
        cat <<-'EOF'
Options:
    --info <value>     locate the controller function definition called by the given url
EOF

    elif [[ "$*" == "mix phx.server" ]]; then
        cat <<-'EOF'
Options:
    --no-compile
    --no-deps-check
    --open      open browser window for each started endpoint
EOF

    else
        _patch_help_run_help_subcmd $@ | _common_edit
    fi
}

_patch_table() { 
    if [[ "$*" == "mix" ]]; then
        _patch_table_edit_arguments ';;' 'task;[`_choice_task`]'

    elif [[ "$*" == "mix app.tree" ]]; then
        _patch_table_edit_options  \
            '--exclude(<app...>)' \
            '--format;[pretty|plain|dot]' \

    elif [[ "$*" == "mix archive.build" ]]; then
        _patch_table_edit_options  \
            '-i(<name>)' \
            '-o(<path>)' \

    elif [[ "$*" == "mix cmd" ]]; then
        _patch_table_edit_options  \
            '--app(<name...>)' \
            '--cd(<dir>)' \

    elif [[ "$*" == "mix compile" ]]; then
        _patch_table_edit_options  \
            '--erl-config(<path>)' \

    elif [[ "$*" == "mix deps.clean" ]]; then
        _patch_table_edit_options  \
            ';;' \
            '--unlock;;also unlocks the deleted dependencies' \
            '--build;;deletes only compiled files ' \
            '--all;;deletes all dependencies' \
            '--unused;;deletes only unused dependencies' \
        | \
        _patch_table_edit_arguments ';;' 'dep;*[`_choice_dependency`]'

    elif [[ "$*" == "mix deps.tree" ]]; then
        _patch_table_edit_options  \
            '--exclude;*[`_choice_dependency`]' \
            '--format;[pretty|plain|dot]' \
            '--only(<value>)' \
            '--target(<value>)' \

    elif [[ "$*" == "mix deps.unlock" ]]; then
        _patch_table_edit_options  \
            ';;' \
            '--all;;unlocks all dependencies' \
            '--filter(<filter>);;unlocks only deps matching the given name' \
            '--unused;;unlocks only unused dependencies' \
            '--check-unused;;checks that the mix.lock file has no unused dependencies' \
        | \
        _patch_table_edit_arguments ';;' 'dep;*[`_choice_dependency`]'


    elif [[ "$*" == "mix deps.update" ]]; then
        _patch_table_edit_options  \
            '--only(<value>)' \
            '--target(<value>)' \
        | \
        _patch_table_edit_arguments ';;' 'dep;*[`_choice_dependency`]'

    elif [[ "$*" == "mix do" ]]; then
        _patch_table_edit_options  \
            '--app(<value...>)' \

    elif [[ "$*" == "mix escript.install" ]]; then
        _patch_table_edit_options  \
            '--app(<name>)' \
            '--organization(<org>)' \
            '--repo(<repo>)' \

    elif [[ "$*" == "mix format" ]]; then
        _patch_table_edit_options  \
            '--dot-formatter(<path>)' \
            '--stdin-filename(<value>)' \

    elif [[ "$*" == "mix hex.build" ]]; then
        _patch_table_edit_options  \
            '--output(<path>)' \

    elif [[ "$*" == "mix hex.config" ]]; then
        _patch_table_edit_options  \
            '--delete(<value>)' \

    elif [[ "$*" == "mix hex.owner" ]]; then
        _patch_table_edit_options  \
            '--level;[maintainer|full]' \

    elif [[ "$*" == "mix hex.package" ]]; then
        _patch_table_edit_options  \
            '--output(<path>)' \

    elif [[ "$*" == "mix hex.registry" ]]; then
        _patch_table_edit_options  \
            '--name(<value>)' \
            '--private-key(<path>)' \

    elif [[ "$*" == "mix hex.user" ]]; then
        _patch_table_dedup_options   \
            '--key-name' \

    elif [[ "$*" == "mix new" ]]; then
        _patch_table_edit_options  \
            ';;' \
            '--app(<name>);;set app name.' \
            '--module(<value>);;set module name.' \
            '--sub;;generate an OTP application skeleton including a supervision tree.' \
            '--umbrella;;generate an umbrella project.' \

    elif [[ "$*" == "mix phx.new" ]] \
      || [[ "$*" == "mix phx.new.ecto" ]] \
    ; then
        _patch_table_edit_options  \
            '--app(<name>)' \
            '--binary-id(<value>)' \
            '--database;[postgres|mysql|mssql|sqlite3]' \
            '--module(<name>)' \

    elif [[ "$*" == "mix profile.cprof" ]]; then
        _patch_table_edit_options  \
            '--eval(<code>)' \
            '--limit(<n>)' \
            '--matching(<pattern>)' \
            '--module(<name>)' \


    elif [[ "$*" == "mix profile.fprof" ]]; then
        _patch_table_edit_options  \
            '--eval(<code>)' \
            '--require(<file>)' \
            '--sort;[acc|own]' \
            '--trace-to-file(<file>)' \

    elif [[ "$*" == "mix release" ]]; then
        _patch_table_edit_options  \
            '--path(<path>)' \
            '--version(<value>)' \

    elif [[ "$*" == "mix run" ]]; then
        _patch_table_edit_options  \
            '--eval(<code>)' \
            '--require(<file>)' \

    elif [[ "$*" == "mix test" ]]; then
        _patch_table_edit_options  \
            '--cover(<value>)' \
            '--exit-status(<n>)' \
            '--export-converage(<value>)' \
            '--formatter(<value>)' \
            '--include(<value...>)' \
            '--max-cases(<n>)' \
            '--max-failures(<n>)' \
            '--partitions(<n>)' \
            '--seed(<n>)' \
            '--timeout(<n>)' \

    elif [[ "$*" == "mix xref" ]]; then
        _patch_table_edit_options  \
            '--exclude(<path...>)' \
            '--format;[pretty|plain|stats|cycles|dot]' \
            '--group(<value>);*,' \
            '--label(<value>)' \
            '--output(<path>)' \

    else
        cat
    fi
}

_choice_task() {
    mix help | sed -n 's/mix \(\S\+\)\s*# \(.*\)$/\1\t\2/p'
}

_choice_dependency() {
    mix deps.get | sed -n 's/^  \(\S\+\) .*$/\1/p'
}
