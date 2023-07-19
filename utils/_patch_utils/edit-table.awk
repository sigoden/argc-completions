BEGIN {
    split(RAW_ARGS, args, "\n")
    split("", LINES)
    split("", TABLE)
    split("", TAKEN_ROWS)
    TABLE_SIZE = length(args)
    LINES_SIZE = 0
    SEP_INDEX = 0
    for (i in args) {
        arg = args[i]
        if (arg == ";;") {
            SEP_INDEX = i
        }
        split(arg, argParts, ";")
        name = argParts[1]
        notation = ""
        if (match(name, /\(.*\)$/)) {
            notation = substr(name, RSTART + 1, RLENGTH - 2)
            name = substr(name, 1, RSTART - 1)
        }
        split("", values)
        TABLE[i, 1] = name
        TABLE[i, 2] = notation
        TABLE[i, 3] = argParts[2]
        TABLE[i, 4] = argParts[3]
    }
    if (SEP_INDEX == 0)  {
        SEP_INDEX = TABLE_SIZE + 1
    }
}
{
    LINES_SIZE = LINES_SIZE + 1
    LINES[LINES_SIZE] = $0
}

END {
    for (LINE_INDEX = 1; LINE_INDEX <= LINES_SIZE; LINE_INDEX++) {
        line = LINES[LINE_INDEX]
        if (KIND == "option" && index(line, "option # ") == 1) {
            if (SEP_INDEX > 1) {
                editOption(line)
            }
        } else if (KIND == "argument" && index(line, "argument # ") == 1) {
            if (SEP_INDEX > 1) {
                editArgument(line)
            }
        } else if (KIND == "command" && index(line, "command # ") == 1) {
            if (SEP_INDEX > 1) {
                editCommand(line)
            }
        } else {
            print line
        }
    }

    for (i = SEP_INDEX + 1; i <= TABLE_SIZE; i++) {
        name = TABLE[i, 1] 
        notation = TABLE[i, 2] 
        if (KIND == "option") {
            print "option # " name " " notation " # " TABLE[i, 4] " # " TABLE[i, 3]
        } else if (KIND == "argument") {
            body = name
            if (length(notation) > 0) {
                body = notation
            }
            print "argument # " body " # " TABLE[i, 4] " # " TABLE[i, 3]
        } else if (KIND == "argument") {
            body = name
            if (length(notation) > 0) {
                body = notation
            }
            print "command # " body " # " TABLE[i, 3] 
        }
    }
}


function editOption(line,       i) {
    split("", parts)
    splitOption(line, parts)
    optionBody = parts[1]
    optionDesc = parts[2]
    optionChoice = parts[3]
    optionName = parts[4]
    for (i = 1; i < SEP_INDEX; i++) {
        if (TAKEN_ROWS[i] == 1) {
            continue
        }
        name = TABLE[i, 1]
        if (name == "") {
            continue
        }
        nameMatcher = " " name "[^A-Za-z0-9_-]"
        if (optionName ~ nameMatcher) {
            TAKEN_ROWS[i] = 1
            notation = TABLE[i, 2]
            choice = TABLE[i, 3]
            desc = TABLE[i, 4]
            noDesc = desc == "" && trim(optionDesc) == ""
            noChoice = choice == "" && trim(optionChoice) == ""
            for (j = LINE_INDEX + 1; j <= LINES_SIZE; j++) {
                split("", parts2)
                splitOption(LINES[j], parts2)
                if (parts2[4] ~ nameMatcher) {
                    LINE_INDEX = j
                    if (noDesc) {
                        optionDesc_ = parts2[2]
                        if (trim(optionDesc_) != "") {
                            optionDesc = optionDesc_ 
                            noDesc = 0
                        }
                    }
                    if (noChoice) {
                        optionChoice_ = parts2[3]
                        if (trim(optionChoice_) != "") {
                            optionChoice = optionChoice_ 
                            noChoice = 0
                        }
                    }
                } else {
                    break
                }
            }
            if (notation == "" && choice == "" && desc == "") {
                return
            }
            if (notation != "") {
                optionBody = optionName notation " "
            }
            if (desc != "") {
                optionDesc = " " desc " "
            }
            if (choice != "") {
                optionChoice = " " choice
            }
            print "option #" optionBody "#" optionDesc "#" optionChoice
            return
        }
    }
    print line
}

function editArgument(line,     i) {
    split("", parts)
    splitArgument(line, parts)
    argumentName = parts[1]
    argumentDesc = parts[2]
    argumentChoice = parts[3]
    for (i = 1; i < SEP_INDEX; i++) {
        if (TAKEN_ROWS[i] == 1) {
            continue
        }
        name = TABLE[i, 1]
        if (name == "") {
            continue
        }
        argumentNameLower = tolower(argumentName)
        nameIdx = index(argumentNameLower, tolower(name))
        if (nameIdx > 0) {
            chekChars = substr(argumentNameLower, nameIdx - 1, 1) substr(argumentNameLower, nameIdx + length(name), 1)
            if (!match(chekChars, /[a-z0-9_\|:-]/)) {
                TAKEN_ROWS[i] = 1
                notation = TABLE[i, 2]
                choice = TABLE[i, 3]
                desc = TABLE[i, 4]
                if (notation == "" && choice == "" && desc == "") {
                    return
                }
                if (notation != "") {
                    if (!match(notation, /^\s+/)) {
                        notation = " " notation
                    }
                    if (!match(notation, /\s+$/)) {
                        notation = notation " "
                    }
                    argumentName = notation
                }
                if (desc != "") {
                    argumentDesc = " " desc " "
                }
                if (choice != "") {
                    argumentChoice = " " choice
                }
                print "argument #" argumentName "#" argumentDesc "#" argumentChoice
                return
            }
        }
    }
    print line
}

function editCommand(line,     i) {
    split("", parts)
    splitCommand(line, parts)
    commandName = parts[1]
    commandDesc = parts[2]
    for (i = 1; i < SEP_INDEX; i++) {
        if (TAKEN_ROWS[i] == 1) {
            continue
        }
        name = TABLE[i, 1]
        if (name == "") {
            continue
        }
        nameIdx = index(commandName, name)
        if (nameIdx > 0) {
            chekChars = substr(commandName, nameIdx - 1, 1) substr(commandName, nameIdx + length(name), 1)
            if (!match(chekChars, /[A-Za-z0-9_\|-]/)) {
                TAKEN_ROWS[i] = 1
                notation = TABLE[i, 2]
                desc = TABLE[i, 3]
                if (notation == "" && choice == "" && desc == "") {
                    return
                }
                if (notation != "") {
                    if (!match(notation, /^\s+/)) {
                        notation = " " notation
                    }
                    if (!match(notation, /\s+$/)) {
                        notation = notation " "
                    }
                    commandName = notation
                }
                if (desc != "") {
                    commandDesc = " " desc " "
                }
                print "command #" commandName "#" commandDesc 
                return
            }
        }
    }
    print line
}

function splitOption(line, output,      parts) {
    split(substr(line, 9), parts, " #")
    output[1] = parts[1] " " 
    output[2] = parts[2] " " 
    output[3] = parts[3]
    output[4] = extractOptionName(output[1])
}

function splitArgument(line, output,     parts) {
    split(substr(line, 11), parts, " #")
    output[1] = parts[1] " " 
    output[2] = parts[2] " " 
    output[3] = parts[3]
}

function splitCommand(line, output,     parts) {
    split(substr(line, 10), parts, " #")
    output[1] = parts[1] " " 
    output[2] = parts[2] " " 
}

function extractOptionName(optionBody,      len, idx, i) {
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

function trim(input) {
    gsub(/^[[:space:]]+|[[:space:]]+$/,"", input)
    return input
}