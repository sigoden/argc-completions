_patch_help() { 
    _patch_help_run_man $@
}

_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--exclude;[`_choice_test`]' \
        '--exclude-quiet;[`_choice_test`]' \
        '--magic-file(<FILES>);*,' \
        '--parameter;[`_choice_parameter`]' \
    | \
    _patch_table_edit_arguments ';;' 'files...'

}

_choice_test() {
    cat <<-'EOF'
apptype	EMX application type (only on EMX).
ascii	Various types of text files (this test will try to guess the text encoding, irrespective of the setting of the ‘encoding’ option).
encoding	Different text encodings for soft magic tests.
tokens	Ignored for backwards compatibility.
cdf	Prints details of Compound Document Files.
compress	Checks for, and looks inside, compressed files.
csv	Checks Comma Separated Value files.
elf	Prints ELF file details, provided soft magic tests are enabled and the elf magic is found.
json	Examines JSON (RFC-7159) files by parsing them for compliance.
soft	Consults magic files.
tar	Examines tar files by verifying the checksum of the 512 byte tar header.
text	A synonym for ‘ascii’.
EOF
}

_choice_parameter() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_parameter_name | _argc_util_transform suffix== nospace
        return
    fi
}

_choice_parameter_name() {
    cat <<-'EOF'
bytes	max number of bytes to read from file
elf_notes	max ELF notes processed
elf_phnum	max ELF program sections processed
elf_shnum	max ELF sections processed
encoding	max number of bytes to scan for encoding evaluation
indir	recursion limit for indirect magic
name	use count limit for name/use magic
regex	length limit for regex searches
EOF
}
