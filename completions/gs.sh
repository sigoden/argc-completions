#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -D-[`_choice_dname`] <name=token>     Define a name in "systemdict" with the given definition.
# @option -d-[`_choice_dname`] <name=token>     Define a name in "systemdict" with the given definition.
# @option -s-[`_choice_sname`] <name=string>    Define a name in "systemdict" with a given string as value.
# @option -S-[`_choice_sname`] <name=string>    Define a name in "systemdict" with a given string as value.
# @flag -P                                      Makes Ghostscript to look first in the current directory for library files.
# @flag -q                                      Quiet startup: suppress normal startup messages, and also do the equivalent of -dQUIET.
# @option -g- <<width>x<height>>                Equivalent to -dDEVICEWIDTH=width and -dDEVICEHEIGHT=height.
# @option -r- <<xres>[x<yres>]>                 Equivalent to -dDEVICEXRESOLUTION=number1 and -dDEVICEYRESOLUTION=number2.
# @option -I-* <dirs>                           Adds the designated list of directories at the head of the search path for library files.
# @arg files*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"