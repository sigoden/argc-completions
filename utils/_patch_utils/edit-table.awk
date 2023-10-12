BEGIN {
    PAIRS[">"] = "<";
    PAIRS["]"] = "[";
    PAIRS[")"] = "(";
    PAIRS["}"] = "{";
    PAIRS_OPEN = "<[({"
    PAIRS_CLOSE = ">])}"
    RE_REMOVE_NOTATION_PREFIX = "[=!]"

    split("", METAS)
    META_NUM = 0
    split("", OPTIONS)
    OPTION_NUM = 0
    split("", ARGUMENTS)
    ARGUMENT_NUM = 0
    split("", COMMANDS)
    COMMAND_NUM = 0

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
            SEP_INDEX = int(i)
        }
        split(arg, argParts, ";")
        name = argParts[1]
        notation = ""
        if (match(name, /\(.*\)$/)) {
            notation = substr(name, RSTART + 1, RLENGTH - 2)
            if (notation == "") {
                notation = " "
            }
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
        if (match(line, /^meta/)) {
            addMetaLine(line)
        } else if (match(line, /^option/)) {
            if (KIND == "option") {
                if (SEP_INDEX > 1) {
                    editOption(line)
                }
            } else {
                addOptionLine(line)
            }
        } else if (match(line, /^argument/)) {
            if (KIND == "argument") {
                if (SEP_INDEX > 1) {
                    editArgument(line)
                }
            } else {
                addArgumentLine(line)
            }
        } else if (match(line, /^command/)) {
            if (KIND == "command") {
                if (SEP_INDEX > 1) {
                    editCommand(line)
                }
            } else {
                addCommandLine(line)
            }
        }
    }

    for (i = SEP_INDEX + 1; i <= TABLE_SIZE; i++) {
        name = TABLE[i, 1] 
        notation = TABLE[i, 2] 
        if (KIND == "option") {
            addOptionLine("option # " name " " notation " # " TABLE[i, 4] " # " TABLE[i, 3])
        } else if (KIND == "argument") {
            body = name
            if (length(notation) > 0) {
                body = notation
            }
            addArgumentLine("argument # " body " # " TABLE[i, 4] " # " TABLE[i, 3])
        } else if (KIND == "command") {
            body = name
            if (length(notation) > 0) {
                body = notation
            }
            addCommandLine("command # " body " # " TABLE[i, 3])
        }
    }

    for (i = 1; i <= META_NUM; i++) {
        print METAS[i]
    }
    for (i = 1; i <= OPTION_NUM; i++) {
        print OPTIONS[i]
    }
    for (i = 1; i <= ARGUMENT_NUM; i++) {
        print ARGUMENTS[i]
    }
    for (i = 1; i <= COMMAND_NUM; i++) {
        print COMMANDS[i]
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
        matchOption = 0
        nameMatcher = " " name "[^A-Za-z0-9_-]"
        if (optionName ~ nameMatcher) {
            matchOption = 1
        } else {
            nameMatcher = " " name "[-=][^A-Za-z0-9_-]"
            if (optionName ~ nameMatcher) {
                matchOption = 1
            }
        }
        if (matchOption == 1) {
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
                sub(/(\{|\[)\S+\s*$/, "", optionName)
                optionBody = optionName notation " "
            }
            if (desc != "") {
                optionDesc = " " desc " "
            }
            if (choice != "") {
                optionChoice = " " choice
            }
            addOptionLine("option #" optionBody "#" optionDesc "#" optionChoice)
            return
        }
    }
    addOptionLine(line)
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
        name = tolower(TABLE[i, 1])
        if (name == "") {
            continue
        }
        trimedArgumentName = trim(tolower(argumentName))
        parseNotation(trimedArgumentName, extra)
        if (extra["notation"] == name || getArgName(extra["notation"]) == name) {
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
            addArgumentLine("argument #" argumentName "#" argumentDesc "#" argumentChoice)
            return
        }
    }
    addArgumentLine(line)
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
                addCommandLine("command #" commandName "#" commandDesc)
                return
            }
        }
    }
    addCommandLine(line)
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

function addMetaLine(line) {
    META_NUM += 1
    METAS[META_NUM] = line
}

function addOptionLine(line) {
    OPTION_NUM += 1
    OPTIONS[OPTION_NUM] = line
}

function addArgumentLine(line) {
    ARGUMENT_NUM += 1
    ARGUMENTS[ARGUMENT_NUM] = line
}

function addCommandLine(line) {
    COMMAND_NUM += 1
    COMMANDS[COMMAND_NUM] = line
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
    gsub(/(\[\S+\]|<\S+>|=\S*)\s*$/, " ", value)
    return value
}

function getArgName(input) {
    split(input, chars, "")
    split("", words)
    word = ""
    for (i=1; i <= length(input); i++) {
        ch = chars[i]
        if (match(ch, /[A-Za-z0-9_-]/)) {
            word = word ch
        } else {
            if (word != "") {
                words[length(words) + 1] = word
                word = ""
            }
        }
    }
    if (word != "") {
        words[length(words) + 1] = word
    }
    value = join(words, "-")
    gsub(/^-+|-+$/, "", value)
    return tolower(value)
}

function parseNotation(item, extra) {
    extra["notation"] = ""
    len = length(item)
    if (len > 1) {
        firstChar = substr(item, 1, 1)
        if (firstChar == "'" && match(item, /^'[^']*'$/)) {
            item = substr(item, 2, length(item) - 2)
        } else if (match(firstChar, RE_REMOVE_NOTATION_PREFIX)) {
            item = substr(item, 2)
        }
    }
    item = takeHeadEllipsis(item, extra)
    item = takeTailEllipsis(item, extra)
    split(item, chars, "")
    balances = ""
    split("", balanceIndexes)
    idx = 0
    split("", pairs)
    for (i=1; i <= length(item); i++) {
        ch = chars[i]
        if (index(PAIRS_OPEN, ch) > 0) {
            balances = balances ch
            idx += 1
            balanceIndexes[idx] = i
        } else if (index(PAIRS_CLOSE, ch) > 0) {
            if (substr(balances, length(balances), 1) == PAIRS[ch]) {
                balances = substr(balances, 1, length(balances) - 1)
                pairs[length(pairs) + 1] = balanceIndexes[idx] ":" i
                idx -= 1
            }
        }
    }
    start = 1
    end = length(item)
    for (i = length(pairs); i >= 1; i--) {
        split(pairs[i], values, ":")
        pairStart = values[1]
        matchStart = 0
        if (values[1] == start) {
            matchStart = 1
        } else {
            if (match(substr(item, 1, pairStart - 1), /^\.{2,}$/)) {
                matchStart = 2
            }
        }
        if (matchStart > 0) {
            pairEnd = values[2]
            matchEnd = 0
            if (pairEnd == end) {
                matchEnd = 1
            } else if (match(substr(item, pairEnd + 1, end - pairEnd), /^\.{2,}$/)) {
                matchEnd = 2
            }
            if (matchEnd > 0) {
                if (substr(item, pairStart, 1) == "<" && extra["required"] == 0 && i == length(pairs)) {
                    extra["required"] = 1
                }
                if (matchStart == 2 || matchEnd == 2) {
                    extra["multiple"] = 1
                }
                start = pairStart + 1
                if (match(substr(item, start, 1), RE_REMOVE_NOTATION_PREFIX)) {
                    start = start + 1
                }
                end = pairEnd - 1
            }
        }
    }
    item = substr(item, start, end + 1 - start)
    item = takeHeadEllipsis(item, extra)
    extra2["multiple"] = 0
    item2 = takeTailEllipsis(item, extra2)
    if (index(PAIRS_CLOSE, substr(item2, length(item2))) == 0) {
        item = item2
        if (extra2["multiple"] == 1) {
            extra["multiple"] = 1
        }
    }
    if (length(item) > 0) {
        item = trim(item)
        if (match(item, /^<[^>]+>$/)) {
            item = substr(item, 2, length(item) - 2)
        }
        extra["notation"] = item
    }
}

function takeTailEllipsis(item, extra,    len, end, idx) {
    len = length(item)
    if (len > 1 && substr(item, len - 1, 2) == ".." ) {
        end = len - 2
        for(idx=len - 2; idx >= 0; idx--) {
            if (substr(item, idx, 1) != ".") {
                break
            }
            end = end - 1
        }
        extra["multiple"] = 1
        return substr(item, 1, end)
    }
    return item
}

function takeHeadEllipsis(item, extra,    len, end, idx) {
    len = length(item)
    if (len > 1 && substr(item, 1, 2) == ".." ) {
        start = 3
        for(idx=start; idx <= len; idx++) {
            if (substr(item, idx, 1) != ".") {
                break
            }
            start = start + 1
        }
        extra["multiple"] = 1
        return substr(item, start)
    }
    return item
}

function join(array, sep,  result, i) {
    result = array[1]
    for (i = 2; i <= length(array); i++)
        result = result sep array[i]
    return result
}

function trim(input) {
    gsub(/^[[:space:]]+|[[:space:]]+$/,"",input)
    return input
}
