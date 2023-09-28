_patch_table() {
    _patch_table_edit_arguments \
    ';;' \
    'cmd;[`_choice_cmd`]' \
    'args;~[`_module_os_command_args`]' \

}

_choice_cmd() {
    ls -1 /Applications/Xcode.app/Contents/Developer/usr/bin/
    ls -1 /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
}
