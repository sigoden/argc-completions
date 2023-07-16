BEGIN {
    lineNum = 0
    zoneStart = 1
    split("", lines)
    split("", zones)
}
{
    lineNum = lineNum + 1
    spaces = indentLine($0);
    lines[lineNum, 1] = $0
    lines[lineNum, 2] = spaces
    lines[lineNum, 3] = indentDesc($0)
    if (spaces == 0) {
        if (zoneStart > 0) {
            zones[zoneStart] = lineNum - 1
        }
        zoneStart = lineNum
    }
}

END {
    zones[zoneStart] = lineNum
    for (i = 1; i <= lineNum; i++) {
        zoneEnd = zones[i]
        print lines[i, 1]
        if (zoneEnd - i > 0 && match(lines[i+1, 1], /^\s+[a-z][a-z_-]+/)) {
            for (j = i + 1; j <= zoneEnd; j++) {
                line = lines[j, 1]
                printed = 0
                if (lines[j, 2] > 0) {
                    if (lines[j, 3] > 0) {
                        value = substr(line, 1, lines[j, 3] - 1)
                        if (match(value, /^(\s+)([a-z0-9_-]+)/, arr)) {
                            printed = 1
                            print arr[0] repeatString(" ", length(value) - RLENGTH) substr(line, lines[j, 3])
                        }
                    } else if (lines[j, 3] == -1) {
                        if (match(line, /^(\s+)([a-z]\S+)/, arr)) {
                            printed = 1
                            if (substr(line, lines[j-1, 3], 1) != " " && substr(line, lines[j-1, 3] - 1, 1) == " ") {
                                print arr[0] repeatString(" ", lines[j-1, 3] - length(arr[0]) - 1) substr(line, lines[j-1, 3])
                            } else {
                                print arr[0]
                            }
                        }
                    }
                }
                if (printed == 0) {
                    print line
                }
            }
            i = zoneEnd
        }
    }
}

function indentLine(line) {
    match(line, /^\s*/)
    return  RLENGTH
}

function indentDesc(line,       i) {
    gsub(/\s+$/, "", line)
    for (i = length(line) - 1; i >= 1; i--) {
        if (substr(line, i, 2) == "  ") {
            if (i > 1) {
                return i + 2
            }
        }
    }
    return -1 
}

function repeatString(string, n,        i) {
    repeatedString = ""
    for (i = 1; i <= n; i++) {
        repeatedString = repeatedString string
    }
    return repeatedString
}
