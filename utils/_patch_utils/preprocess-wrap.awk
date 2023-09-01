BEGIN {
    split("", LINES)
    LINE_NUM = 0
}
{
    LINE_NUM += 1
    LINES[LINE_NUM] = $0
}
END {
    state = 0
    concatedLine = ""
    for (i = 1; i <= LINE_NUM; i++) {
        line = LINES[i]
        if (match(line, /^\s*$/)) {
            state = 0
            if (concatedLine != "") {
                print concatedLine
                concatedLine = ""
            }
            print line
        } else if (state == 1 && match(line, /^ ?\S/)) {
            concatedLine = concateLine(concatedLine, line)
        } else {
            if (concatedLine != "") {
                print concatedLine
                concatedLine = ""
            }
            concatedLine = concateLine(concatedLine, line)
            state = 1
        }
    }
    if (concatedLine != "") {
        print concatedLine
        concatedLine = ""
    }
}

function concateLine(value, line) {
    valueLen = length(value)
    if (valueLen == 0) {
        return line
    }
    value = trimEnds(value)
    line = trimStarts(line)
    if (match(value, /-$/)) {
        output = value line
    } else {
        output = value " " line
    }
    return output
}

function trimStarts(input) {
    gsub(/^[[:space:]]+/,"",input)
    return input
}

function trimEnds(input) {
    gsub(/[[:space:]]+$/,"",input)
    return input
}