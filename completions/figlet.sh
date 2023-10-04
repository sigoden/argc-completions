#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -c                                    center justify
# @flag -k                                    use kerning
# @flag -l                                    left justify
# @flag -n                                    normal mode
# @flag -o                                    let letters overlap
# @flag -p                                    paragraph mode
# @flag -r                                    right justify
# @flag -s                                    smushed spacing
# @flag -t                                    use terminal width
# @flag -v                                    version
# @flag -x                                    use default justification of font
# @flag -D                                    use Deutsch character set
# @flag -E                                    use English character set
# @flag -L                                    left-to-right
# @flag -N                                    clear controlfile list
# @flag -R                                    right-to-left
# @flag -S                                    smush letters together or else!
# @flag -W                                    wide spacing
# @flag -X                                    use default writing direction of font
# @option -d <dir>                            specify font directory
# @option -f <file>                           specify font
# @option -m <mode>                           specify layout mode
# @option -w <width>                          specify output width
# @option -C <file>                           specify control file
# @option -I[`_choce_infocode`] <infocode>    display info
# @arg message!

_choce_infocode() {
    cat <<-'EOF'
0	version, copyright and usage information
1	version in integer format
2	default font directory
3	name of font figlet would use
4	output width in columns
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"