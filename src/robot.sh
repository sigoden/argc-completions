_patch_help() {
    $@ --help | \
    sed \
        -e 's/-h -?/-h/' \
        -e '/^\s*-/ s/\(\S\+\) \*/\1.../' \

}

_patch_table() {
    _patch_table_edit_options \
        '--exclude;[`_choice_tag`]' \
        '--include;[`_choice_tag`]' \
        '--skip;[`_choice_tag`]' \
        '--skiponfailure;[`_choice_tag`]' \
        '--tagstatcombine;[`_choice_tag`]' \
        '--tagstatexclude;[`_choice_tag`]' \
        '--tagstatinclude;[`_choice_tag`]' \
        '--task;[`_choice_testcase`]' \
        '--test;[`_choice_testcase`]' \
    | \
    _patch_table_edit_arguments 'paths(<file:.robot>...)'
}

_choice_testcase() {
    { for i in $(find . -name '*.robot' -type f); do cat -s $i ; done } |
    sed -n '/^\*\*\* Test Cases \*\*\*/,/^\*\*\* / {//d; /^\S/ p}' 
}

_choice_tag() {
    { for i in $(find . -name '*.robot' -type f); do cat -s $i ; done } |
    sed -n 's/^\s\+\[Tags\]\s\+\(.*\)\s*$/\1/p' | \
    sed 's/\s\s\+/\n/g'
}
