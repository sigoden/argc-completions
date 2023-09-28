BEGIN {
    split(RAW_ARGS, CMDS, " ")
    CMD_LEVEL = length(CMDS)
    CMD_PREFIX = RAW_ARGS
    gsub(/ \S+$/, "", CMD_PREFIX)
    ZONE = 0
    if (CMD_LEVEL == 1) {
        ZONE = 1
    }
    MATCH_LEVEL = 1
    
    split("", LINES)
    LIEN_NUM = 0
}
{
    LIEN_NUM += 1
    LINES[LIEN_NUM] = $0
}
END {
    commandEnding = 0
    for (i = 1; i <= LIEN_NUM; i++) {
        line = LINES[i]
        if (match(line, /^(\x23+)\s+(\S+)/, arr)) {
            level = length(arr[1])
            line2 = substr(line, RLENGTH + 1)
            if (ZONE == 0) {
                if (level == MATCH_LEVEL && match(arr[2], "^" CMDS[MATCH_LEVEL + 1] "( |\\/|%$|$)" )) {
                    MATCH_LEVEL += 1
                    if (MATCH_LEVEL == CMD_LEVEL) {
                        ZONE = 1
                        idx = index(line2, " - ")
                        if (idx > 0) {
                            args = substr(line2, 1, idx - 1)
                        } else {
                            args = line2
                        }
                        helpCmd = gsub(/%$/, "", arr[2])
                        split(arr[2], cmdNames, "/")
                        if (args || helpCmd == 0) {
                            print "USAGE: " CMD_PREFIX " " cmdNames[1] args
                        }
                        if (helpCmd > 0) {
                            print "__HELP_CMD__"
                        }
                    }
                }
            } else {
                if (level == CMD_LEVEL) {
                    if (ZONE == 1) {
                        ZONE = 2
                        print "COMMANDS:"
                    }
                    cmdName = arr[2]
                    gsub(/%$/, "", cmdName)
                    gsub(/\//, ", ", cmdName)
                    if (substr(cmdName, 1, 1) == "-") {
                        cmdName = "\\" cmdName
                    }
                    print "  " cmdName "    " extractDesc(line)
                    commandEnding = 1
                } else if (level < CMD_LEVEL) {
                    break
                }
            }
        } else if (ZONE == 1) {
            print line
            commandEnding = 0
        }
    }
    if (commandEnding == 1) {
        print "COMMANDS END"
    }
}

function extractDesc(line,      idx) {
    idx = index(line, " - ")
    if (idx > 0) {
        return substr(line, idx + 3)
    }
}

function repeat(value, count,       i, output) {
    for (i = 1; i <= count; i++) {
        output = output value
    }
    return output
}
