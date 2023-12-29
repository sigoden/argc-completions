_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
Usage: ghostscript [options] files...
-D- name=token               Define a name in "systemdict" with the given definition. 
-d- name=token               Define a name in "systemdict" with the given definition.
-s- name=string              Define a name in "systemdict" with a given string as value.
-S- name=string              Define a name in "systemdict" with a given string as value.
-P	                         Makes Ghostscript to look first in the current directory for library files.
-q	                         Quiet startup: suppress normal startup messages, and also do the equivalent of -dQUIET.
-g- <width>x<height>         Equivalent to -dDEVICEWIDTH=width and -dDEVICEHEIGHT=height.
-r- <xres>[x<yres>]	         Equivalent to -dDEVICEXRESOLUTION=number1 and -dDEVICEYRESOLUTION=number2.
-I- dirs...	                 Adds the designated list of directories at the head of the search path for library files.
EOF
}

_patch_table() {
    _patch_table_edit_options \
        '-D;[`_choice_dname`]' \
        '-S;[`_choice_sname`]' \
        '-d;[`_choice_dname`]' \
        '-s;[`_choice_sname`]' \

}

_choice_dname() {
    ghostscript -q -o /dev/null -DNODISPLAY -c 'systemdict { type /booleantype eq { = } if } forall'
    printf "%s\n" FirstPage LastPage
    ghostscript -q -o /dev/null -sDEVICE='*' -DNODISPLAY -c 'currentpagedevice { type /integertype eq { = } if } forall'
}

_choice_sname() {
    cat <<-'EOF' | _argc_util_comp_kv =
DEVICE=`_choice_device`
OutputFile=__argc_value=file
PAPERSIZE=`_choice_pagesize`
PDFSETTINGS=`_choice_pdfsetting`
CompatibilityLevel=`_choice_compatibilitylevel`
AutoRotatePages=`_choice_autorotatepage`
stdout=
COLORSCREEN=
DITHERPPI=
InterpolateControl=
TextAlphaBit=
GraphicsAlphaBit=
PageList=
SUBSTFONT=`_choice_font`
EOF
}

_choice_autorotatepage() {
    printf "%s\n" /None /All /PageByPage 
}

_choice_compatibilitylevel() {
    printf "1.%s\n" 2 3 4
}

_choice_device() {
    ghostscript -q -o /dev/null -DNODISPLAY -c 'devicenames { dup length string cvs print (\n) print } forall'
}

_choice_font() {
    ghostscript -q -o /dev/null -DNODISPLAY -c '(*) { = } 256 string /Font resourceforall'
}

_choice_pagesize() {
    ghostscript -q -o /dev/null -DNODISPLAY -c 'statusdict /.pagetypenames get { = } forall'
}

_choice_pdfsetting() {
    printf "%s\n" /screen /ebook /printer /prepress /default
}
