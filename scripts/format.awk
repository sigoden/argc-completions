#!/usr/bin/awk -f 

# Format csv table

BEGIN {
    PAIRS[">"] = "<";
    PAIRS["]"] = "[";
    PAIRS[")"] = "(";
    split("", table)
    split("", maxWidths)
    numLines = 0
    numCols = 1
}
{
    if (NR == 1) {
        line=$0
        numCols = count+=gsub(/\|/,"", line) - 1
    }
    line=$0
    split("", parts)
    prevIdx = nextVertialbar(line)
    part = ""
    for (i = 1; i <= numCols; i++) {
        idx = nextVertialbar(substr(line, prevIdx + 1)) + prevIdx
        part = sanitizePart(substr(line, prevIdx + 1, idx - prevIdx - 1))
        table[NR "," i] = part
        partLen = length(part)
        prevIdx = idx
        if (maxWidths[i] < partLen) {
            maxWidths[i] = partLen
        }
    }
    numLines = NR
}
END {
    for (i = 1; i <= numLines; i++) {
        newline = "|"
        for (j = 1; j <= numCols; j++) {
            part = table[i "," j]
            if (i == 2 && part == "-") {
                part = repeat("-", maxWidths[j])
            } else {
                part = sprintf("%-*s", maxWidths[j], part)
            }
            newline = newline " " part " |"
        }
        print newline
    }
}

function nextVertialbar(input,  chars, i, ch) {
    split(input, chars, "")
    balances = ""
    for (i=1; i <= length(input); i++) {
        ch = chars[i]
        if (ch == "|") {
            if (i > 1 && chars[i - 1] == "\\") {
                continue
            } else if (length(balances) == 0) {
                return i
            }
        } else if (index("<[(", ch) > 0) {
            balances = balances ch
        } else if (index(">])", ch) > 0) {
            if (substr(balances, length(balances), 1) == PAIRS[ch]) {
                balances = substr(balances, 1, length(balances) - 1)
            }
        }
    }
    return length(input)
}

function sanitizePart(input) {
    gsub(/(^[[:space:]]+)|([[:space:]]+$)|(\\)/,"",input)
    if (length(input) > 1 && match(input, /^-*$/)) {
        return "-"
    }
    return input
}

function repeat(input, times,   i, output) {
    output = ""
    for (i = 1; i <= times; i++) {
        output = output input
    }
    return output
}