_patch_table() { 
    _patch_table_edit_options \
        '--input-target;[`_choice_target`]' \
        '--output-target;[`_choice_target`]' \
        '--target;[`_choice_target`]' \

}

_choice_target() {
    printf "%s\n" elf64-x86-64 elf32-i386 elf32-iamcu elf32-x86-64 pei-i386 pe-x86-64 \
        pei-x86-64 elf64-l1om elf64-k1om elf64-little elf64-big elf32-little elf32-big \
        pe-bigobj-x86-64 pe-i386 srec symbolsrec verilog tekhex binary ihex plugin   
}
