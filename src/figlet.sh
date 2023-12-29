_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
Usage: figlet [options] <message>
Options:
  -c                  center justify
  -k                  use kerning
  -l                  left justify
  -n                  normal mode
  -o                  let letters overlap
  -p                  paragraph mode
  -r                  right justify
  -s                  smushed spacing
  -t                  use terminal width
  -v                  version
  -x                  use default justification of font
  -D                  use Deutsch character set
  -E                  use English character set
  -L                  left-to-right
  -N                  clear controlfile list
  -R                  right-to-left
  -S                  smush letters together or else!
  -W                  wide spacing
  -X                  use default writing direction of font
  -d <dir>            specify font directory
  -f <file>           specify font
  -m <mode>           specify layout mode
  -w <width>          specify output width
  -C <file>           specify control file
  -I <infocode>       display info
EOF
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-I;[`_choce_infocode`]' \

}

_choce_infocode() {
    cat <<-'EOF'
0	version, copyright and usage information
1	version in integer format
2	default font directory
3	name of font figlet would use
4	output width in columns
EOF
}
