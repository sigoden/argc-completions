_patch_help() { 
    $@ --help | sed '/Warning categories include:/,/^$/ d'
}

_patch_table() { 
    _patch_table_edit_options '--warnings;[`_choice_warnings`]'
}

_choice_warnings() {
    cat <<-'EOF'
cross	cross compilation issues
gnu	GNU coding standards (default in gnu and gnits modes)
obsolete	obsolete features or constructions (default)
override	user redefinitions of Automake rules or variables
portability	portability issues (default in gnu and gnits modes)
portability-recursive	nested Make variables (default with -Wportability)
extra-portability	extra portability issues related to obscure tools
syntax	dubious syntactic constructs (default)
unsupported	unsupported or incomplete features (default)
all	all the warnings
no-CATEGORY	turn off warnings in CATEGORY
none	turn off all the warnings
EOF
}
