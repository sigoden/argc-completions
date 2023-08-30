_patch_table() {
    _patch_table_dedup_options \
        '-H' \
        '-o' \
    | \
    _patch_table_edit_options \
        '-H();[`_choice_when_printing`];Specifies when the job should be printed' \
        '-d;[`_choice_printer`]' \
        '-o();*[`_choice_option`];Sets one or more job options.' \

}

_choice_printer() {
    lpstat -p 2>/dev/null | sed 's/^\S*\s\(\S*\)\s\(.*\)$/\1\t\2/'   
}

_choice_when_printing() {
    cat <<-'EOF'
HH:MM	Hold the job until the specified UTC time
hold	Hold the job until released/resumed
immediate	Print the job as soon as possible
restart	Reprint the job
resume	Resume a held job
id	Specify an existing job ID to modify
EOF
}

_choice_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
option=;;Specify a printer-specific option
job-sheets=standard;;Print a banner page with the job
media=;;Specify the media size to use
number-up=;;Specify that input pages should be printed N-up (1, 2, 4, 6, 9, and 16 are supported)
orientation-requested=;;Specify portrait (3) or landscape (4) orientation
print-quality=;;Specify the print quality - draft (3), normal (4), or best (5)
sides=one-sided,two-sided-long-edge,two-sided-short-edge;;Specify side printing
EOF
}
