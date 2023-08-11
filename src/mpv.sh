_patch_help() { 
    echo "Usage: mpv files..."
    mpv --list-options | \
    gawk '{
        if (match($0, /^( --\S+)\s+(.*)$/, arr)) {
            option = arr[1]
            desc = arr[2]
            if (match(option, /--\{|--\}/)) {
                next
            } else if (match(desc, /deprecated/)) {
                next
            } else if (match(desc, / list /)) {
                next
            } else if (match(desc, /Flag/)) {
                print indent option
            } else if (match(desc, /\[file\]/)) {
                print indent option " <file>    " desc
            } else {
                print indent option " <value>    " desc
            }
        } else if (match($0, /^(    --\S+)$/)) {
            print $0 " <value>"
        } else {
            # print $0
        }
    }'
}
