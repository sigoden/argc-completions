{
    printed = 0
    if (match($0, /^\s+-\S{1,2}\s+/)) {
        rLen1 = RLENGTH
        if (match(substr($0, rLen1 + 1), /\s{2}-\S{1,2}\s+/)) {
            printed = 1
            print substr($0, 1, rLen1 + RSTART)
            print substr($0, rLen1 + RSTART)
            splitAt = rLen1 + RSTART + 1
        } else if (substr($0, splitAt, 2) == " -") {
            printed = 1
            print substr($0, 1, splitAt)
            print " " substr($0, splitAt)
        }
    }
    if (printed == 0) print $0
}