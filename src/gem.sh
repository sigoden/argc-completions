_patch_help() { 
    if [[ "$*" == "gem" ]]; then
        gem help commands
    else
        $@ --help | sed -e '/^  Summary:/,$ d' -e 's/^  //'
    fi
}

_patch_table() { 
    if [[ "$*" == "gem build" ]]; then
        _patch_table_edit_arguments 'gemspec_file(file:.gemspec)' 
    
    elif [[ "$*" == "gem check" ]] \
      || [[ "$*" == "gem cleanup" ]] \
      || [[ "$*" == "gem dependency" ]] \
      || [[ "$*" == "gem pristine" ]] \
      || [[ "$*" == "gem rdoc" ]] \
      || [[ "$*" == "gem uninstall" ]] \
      || [[ "$*" == "gem unpack" ]] \
      || [[ "$*" == "gem update" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'gemname;[`_choice_installed_package`]' 

    elif [[ "$*" == "gem contents" ]]; then
        _patch_table_edit_options \
            '--spec-dir(<DIR>);*,' \
        | \
        _patch_table_edit_arguments 'gemname;[`_choice_installed_package`]' 

    elif [[ "$*" == "gem environment" ]]; then
        _patch_table_edit_arguments ';;' 'action;[`_choice_environment_action`]' 

    elif [[ "$*" == "gem fetch" ]] \
      || [[ "$*" == "gem info" ]] \
      || [[ "$*" == "gem open" ]] \
      || [[ "$*" == "gem owner" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'gemname;[`_choice_package`]' 

    elif [[ "$*" == "gem install" ]]; then
        _patch_table_edit_arguments ';;' 'gemname;[`_choice_install`]' 

    elif [[ "$*" == "gem lock" ]]; then
        _patch_table_edit_arguments ';;' 'gemname;[`_choice_lock`]' 

    elif [[ "$*" == "gem push" ]] \
      || [[ "$*" == "gem yank" ]] \
    ; then
        _patch_table_edit_arguments 'gem(file:.gem)'

    elif [[ "$*" == "gem specification" ]]; then
        _patch_table_edit_arguments \
            'field;[`_choice_spec_field`]' \
            'gemfile;[`_choice_installed_package`]' \

    elif [[ "$*" == "gem which" ]]; then
        _patch_table_edit_arguments ';;' 'file...'

    else
        cat
    fi
}

_choice_installed_package() {
    gem list --local | sed 's/\(\S\+\) (\(.*\))/\1\t\2/'   
}

_choice_environment_action() {
    cat <<-'EOF'
gemdir	display the path where gems are installed
gempath	display path used to search for gems
version	display the gem format version
remotesources	display the remote gem servers
platform	display the supported gem platforms
EOF
}

_choice_package() {
    if [[ "${#ARGC_CWORD}" -lt 2 ]]; then
        return
    fi
    gem search "^$ARGC_CWORD" | sed -n 's/^\(\S\+\) (\(.*\))$/\1\t\2/p'
}

_choice_install() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_package
}

_choice_lock() {
    if [[ "${#ARGC_CWORD}" -lt 2 ]]; then
        return
    fi
    gem search "^$ARGC_CWORD" | sed -n 's/^\(\S\+\) (\(.*\))$/\1-\2/p'
}

_choice_spec_field() {
    cat <<-'EOF'
name	The name of the gem.
version	The version of the gem.
summary	A short one-line description of the gem.
description	A longer, more detailed description of the gem.
homepage	The URL of the gem's homepage or project page.
authors	The authors/maintainers of the gem.
email	The email address of the gem's contact person.
licenses	The licenses under which the gem is distributed.
metadata	Additional metadata about the gem (e.g., bug tracker, source code repository).
files	The files included in the gem package.
dependencies	The gem's runtime and development dependencies.
required_ruby_version	The minimum required Ruby version to use the gem.
required_rubygems_version	The minimum required RubyGems version to use the gem.
executables	Executable files that are part of the gem.
EOF
}
