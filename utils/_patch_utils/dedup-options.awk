BEGIN {
    split(RAW_ARGS, PATTERNS, "\n")
    split("", LINES)
    split("", DUPS)
    split("", DUPS_SIZE)
    LINES_SIZE = 0
}
{
    LINES_SIZE = LINES_SIZE + 1
    LINES[LINES_SIZE] = $0
    for (i in PATTERNS) {
        optionName = extraOptionName($0)
        pattern = PATTERNS[i]
        nameMatcher = " " pattern "[^A-Za-z0-9_-]"
        if (optionName ~ nameMatcher) {
            DUPS_SIZE[i] = DUPS_SIZE[i] + 1
            DUPS[i, DUPS_SIZE[i]] = LINES_SIZE
        }
    }
}

END {
    split("", SKIP_LINES)
    for (i in PATTERNS) {
        if (DUPS_SIZE[i] > 1) {
            for (j = 1; j < DUPS_SIZE[i]; j++) {
                SKIP_LINES[DUPS[i, j]] = 1
            }
        }
    }
    for (k in LINES) {
        if (SKIP_LINES[k] != 1) {
            print LINES[k]
        }
    }
}

function extraOptionName(line) {
    split(substr(line, 9), parts, " #")
    return extractOptionName(parts[1] " ")
}

function extractOptionName(optionBody,      i) {
    split(optionBody, hyphenParts, " -")
    len = length(hyphenParts)
    idx = (len - 1) * 2
    for (i in hyphenParts) {
        if (i == len) {
            idx = idx + index(hyphenParts[i], " ")
        } else {
            idx = idx + length(hyphenParts[i])
        }
    }
    value = substr(optionBody, 1, idx)
    gsub(/=\S+\s*$/, " ", value)
    return value
}
