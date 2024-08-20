_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# --install/-i <path>...
   -R --recursive <dir>...
# --unpack <path>...
   -R --recursive <dir>...
# --record-avail/-A <path>...
   -R --recursive <dir>...
# --configure <package>... 
   -a --pending
# --triggers-only <package>... 
   -a --pending
# --remove/-r <package>... 
   -a --pending
# --purge/-P <package>... 
   -a --pending
# --verify/-V [<package>...] - Verify the integrity of package(s).
# --get-selections [<pattern>...] - Get list of selections to stdout.
# --set-selections - Set package selections from stdin.
# --clear-selections - Deselect every non-essential package.
# --update-avail [<Packages-file>] - Replace available packages info.
# --merge-avail [<Packages-file>] - Merge with info from file.
# --clear-avail - Erase existing available info.
# --forget-old-unavail - Forget uninstalled unavailable pkgs.
# --status/-s [<package>...] - Display package status details.
# --print-avail/-p [<package>...] - Display available version details.
# --listfiles/-L <package>... - List files 'owned' by package(s).
# --list/-l [<pattern>...] - List packages concisely.
# --search/-S <pattern>... - Find package(s) owning file(s).
# --audit/-C [<package>...] - Check for broken package(s).
# --yet-to-unpack - Print packages selected for installation.
# --predep-package - Print pre-dependencies to unpack.
# --add-architecture <arch> - Add <arch> to the list of architectures.
# --remove-architecture <arch> - Remove <arch> from the list of architectures.
# --print-architecture - Print dpkg architecture.
# --print-foreign-architectures - Print allowed foreign architectures.
# --assert-help - Show help on assertions.
# --assert-<feature> - Assert support for the specified feature.
# --validate-<thing> - Validate a <thing>'s <string>.
# --compare-versions <a> <op> <b> - Compare version numbers - see below.
# --force-help - Show help on forcing.
EOF
    if [[ "$*" == "dpkg" ]]; then
        $1 --help | \
        sed -n '/^Options:/,/^\S/ {//!p}' | \
        sed \
            -e 's/|--/, --/g' \
            -e 's/\[,\.\.\.\]/.../' \

    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'package;[`_choice_package`]' \
    )"

    if [[ "$*" == "dpkg" ]]; then
        echo "$table" | \
        _patch_table_add_metadata inherit-flag-options

    else
        echo "$table"
    fi
}

_choice_package() {
    dpkg-query -W -f '${Package}\n'
}
