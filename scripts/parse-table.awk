BEGIN {
    gsub("@", " ", LOG_PREFIX)
    split("", LINES)
    LINES_LEN = 0
    PAIRS[">"] = "<";
    PAIRS["]"] = "[";
    PAIRS[")"] = "(";
    PAIRS_OPEN = "<[("
    PAIRS_CLOSE = ">])"
    DESC_NEWLINE = "↵"
}

{
    LINES_LEN = LINES_LEN + 1
    line = $0
    trimedLine = trim(line)
    if (length(trimedLine) == 0) {
        spaces = 0
    } else {
        spaces = index(line, trimedLine) - 1
    }
    LINES[LINES_LEN, 1] = line
    LINES[LINES_LEN, 2] = trimedLine
    LINES[LINES_LEN, 3] = spaces
}

END {
    LINES_LEN = length(LINES)
    split("", options)
    split("", arguments)
    split("", commands)
    groupName = ""
    groupSpaces = 0
    prevSpaces = 0
    emptyNR = 0
    usage = ""
    for (i = 1; i <= LINES_LEN; i ++) {
        line = LINES[i, 1]
        santizedLine = tolower(LINES[i, 2])
        spaces = LINES[i, 3]
        if (length(santizedLine) == 0) {
            emptyNR = i
            prevSpaces = 0
            continue
        }
        isPrevEmpty = i == emptyNR + 1 || i == 1
        if (spaces <= 8) {
            if (match(santizedLine, /^-{1,2}[^- \t]/)) { # option
                if (groupName == "option" || spaces > prevSpaces || substr(LINES[i+1, 2], 1, 2) == "-") {
                    options[length(options) + 1] = trimStarts(line)
                    groupName = "option"
                    continue
                }
            } else if (match(santizedLine, /^usage:/)) { # usage
                usage = substr(line, spaces + 7)
                groupName = "usage"
                groupSpaces = spaces
                continue
            } else if (match(santizedLine, /\s*(flags|options)(:\s*$|$)/)) {
                if (spaces < prevSpaces || isPrevEmpty || substr(LINES[i+1, 2], 1, 2) == "-") {
                    groupName = "option"
                    groupSpaces = spaces
                    continue
                }
            } else if (match(santizedLine, /\s*(arguments|args)(:\s*$|$)/)) {
                if (spaces < prevSpaces || isPrevEmpty || LINES[i+1, 3] > spaces) {
                    groupName = "argument"
                    groupSpaces = spaces
                    continue
                }
            } else if (match(santizedLine, /\s*(commands|subcommands):\s*$/)) {
                if (spaces < prevSpaces || isPrevEmpty || LINES[i+1, 3] > spaces) {
                    groupName = "command"
                    groupSpaces = spaces
                    continue
                }
            } else if (match(santizedLine, /^(synopsis|description|discussion|environment|environment variables):\s*$/)) {
                if (spaces < prevSpaces || isPrevEmpty || LINES[i+1, 3] > spaces) {
                    groupName = "misc"
                    groupSpaces = spaces
                    continue
                    continue
                }
            } else if (spaces <= groupSpaces) {
                nextLine = LINES[i+1, 2]
                if (match(nextLine, /^[a-z0-9_-]+/)) {
                    isCommand = 0
                    if (match(nextLine, /\s{2,}\S/)) {
                        isCommand = 1
                    } else if (match(nextLine, /^[a-z0-9_-]+,?\s*$/)) {
                        isCommand = 1
                    } else if (match(nextLine, /(^[a-z0-9_-]+,\s*)+[a-z0-9_-]+.?\s*$/)) {
                        isCommand = 1
                    }
                    if (isCommand == 1) {
                        groupName = "command"
                        groupSpaces = spaces
                        continue
                    }
                } 
                groupName = ""
                groupSpaces = 0
            }
        }
        descLineSeps = DESC_NEWLINE
        if (isPrevEmpty) {
            descLineSeps = DESC_NEWLINE DESC_NEWLINE
        }
        if (groupName == "argument") {
            addParameter(arguments, line, descLineSeps)
        } else if (groupName == "option") {
            if (testMultilineDesc(line)) {
                options[length(options)] = options[length(options)] descLineSeps line
            }
        } else if (groupName == "command") {
            addParameter(commands, line, descLineSeps)
        } else if (groupName == "usage") {
            if (usage == "") {
                usage = trimStarts(line)
            }
        }
    }

    for (i in options) {
        option = options[i]
        splitAt = splitOption(option)
        optionVal = substr(option, 1, splitAt)
        if (optionVal == "--") {
            continue
        }
        split("", descValues)
        parseDesc(substr(option, splitAt + 1), descValues, 1, "option `" optionVal "`")
        if (length(descValues[2]) > 0) {
            print "option # " optionVal  " # " descValues[1] " # " descValues[2]
        } else {
            print "option # " optionVal  " # " descValues[1]
        }
    }
    if (length(arguments) == 0 && length(usage) > 0) {
        split("", words)
        gsub(/ \| /, "|", usage)
        gsub(/-- |\[--\] /, "", usage)
        splitUsage(usage, words)
        isCmd = 1
        for (i in words) {
            word = words[i]
            if (isCmd && match(word, /^[A-Za-z1-9_-]+$/) && toupper(word) != word) {
                continue
            }
            isCmd = 0
            if (match(word, /^(\[-|\(-|<-|-)/)) {
                continue
            }
            if (match(tolower(word), /argument|option|flag|command/)) {
                continue
            }
            arguments[length(arguments) + 1] = word
        }
    }
    for (i in arguments) {
        argument = arguments[i]
        if (i < length(arguments) && extraArgName(argument) == extraArgName(arguments[i + 1])) {
            continue
        }
        splitAt = splitArgment(argument)
        argumentVal = substr(argument, 1, splitAt)
        split("", descValues)
        parseDesc(substr(argument, splitAt + 1), descValues, 1, "argument `" optionVal "`")
        if (match(argumentVal, /^\(([A-Za-z0-9_-]+\|)+[A-Za-z0-9_-]+\)$/)) {
            print "argument # value # " descValues[1] " # [" substr(argumentVal, 2, length(argumentVal) -2) "]"
        } else {
            if (length(descValues[2]) > 0) {
                print "argument # " argumentVal " # " descValues[1] " # " descValues[2]
            } else {
                print "argument # " argumentVal " # " descValues[1]
            }
        }
    }
    for (i in commands) {
        command = commands[i]
        splitAt = splitCommand(command)
        commandVal = substr(command, 1, splitAt)
        gsub(/^\*|\*$/, "", commandVal)
        split("", descValues)
        parseDesc(substr(command, splitAt + 1), descValues, 0)
        print "command # " commandVal " # " descValues[1]
    }
}

function addParameter(arr, line, seps) {
    if (testMultilineDesc(line)) {
        arr[length(arr)] = arr[length(arr)] seps line
    } else {
        trimed = trimStarts(line)
        if (length(trimed) > 0) {
            arr[length(arr) + 1] = trimed
        }
    }
}

function splitOption(input) {
    split(input, chars, "")
    split("", words)
    balances = ""
    word = ""
    wordBreakAt = 0
    for (i=1; i <= length(input); i++) {
        ch = chars[i]
        if (match(ch, /[[:space:]]/)) {
            if (length(balances) == 0) {
                if (length(word) == 0) {
                    if (i - wordBreakAt > 1 && substr(input, i + 1, 1) != "-") {
                        return wordBreakAt
                    }
                } else {
                    words[length(words) + 1] = word
                    word = ""
                    wordBreakAt = i - 1
                }
            } else {
                word = word ch
            }
        } else if (index(DESC_NEWLINE, ch) > 0) {
            return i - 1
        } else if (index(PAIRS_OPEN, ch) > 0) {
            balances = balances ch
            word = word ch
        } else if (index(PAIRS_CLOSE, ch) > 0) {
            if (substr(balances, length(balances), 1) == PAIRS[ch]) {
                balances = substr(balances, 1, length(balances) - 1)
            }
            word = word ch
        } else {
            isBreak = 1
            if (length(word) == 0 && length(words) > 0 && match(ch, /[A-Za-z0-9]/)) {
                if (match(words[length(words)], /^-/)) {
                    if (match(substr(input, i), /^\S+ -/)) {
                        # make: -f FILE, --file=FILE, --makefile=FILE
                        isBreak = 0
                    } else if (match(substr(input, i), /^\S+  /)) {
                        # pnpm install: --package-import-method auto
                        isBreak = 0
                    }
                } 
                if (isBreak == 1) {
                    return wordBreakAt
                }
            }
            word = word ch
        }
    }
    return length(input)
}

function splitUsage(input, words) {
    split(input, chars, "")
    balances = ""
    word = ""
    for (i=1; i <= length(input); i++) {
        ch = chars[i]
        if (match(ch, /[[:space:]]/)) {
            if (length(balances) == 0) {
                if (length(word) == 0) {
                    continue
                } else {
                    words[length(words)+1] = word;
                    word = ""
                }
            } else {
                word = word ch
            }
        } else if (index(DESC_NEWLINE, ch) > 0) {
            return i - 1
        } else if (index(PAIRS_OPEN, ch) > 0) {
            balances = balances ch
            word = word ch
        } else if (index(PAIRS_CLOSE, ch) > 0) {
            if (substr(balances, length(balances), 1) == PAIRS[ch]) {
                balances = substr(balances, 1, length(balances) - 1)
            }
            word = word ch
        } else {
            word = word ch
        }
    }
    if (length(word) > 0) {
        words[length(words)+1] = word;
        word = ""
    }
}

function splitArgment(input) {
    split(input, chars, "")
    balances = ""
    for (i=1; i <= length(input); i++) {
        ch = chars[i]
        if (match(ch, /[[:space:]]/)) {
            if (length(balances) == 0) {
                if (match(substr(input, i + 1),  /^\.{2,}/)) {
                    return i + 1 + RLENGTH
                }
                return i - 1
            }
        } else if (index(DESC_NEWLINE, ch) > 0) {
            return i - 1
        } else if (index(PAIRS_OPEN, ch) > 0) {
            balances = balances ch
        } else if (index(PAIRS_CLOSE, ch) > 0) {
            if (substr(balances, length(balances), 1) == PAIRS[ch]) {
                balances = substr(balances, 1, length(balances) - 1)
            }
        }
    }
    return length(input)
}

function splitCommand(input) {
    split(input, chars, "")
    word = ""
    eatWord = 1
    wordBreakAt = 0
    for (i=1; i <= length(input); i++) {
        ch = chars[i]
        if (match(ch, /[[:space:]]/)) {
            if (length(word) > 0) {
                last = substr(word, length(word))
                word = ""
                wordBreakAt = i - 1
                if (last == "," || last == "/") {
                    eatWord = 1
                } else {
                    eatWord = 0
                }
            }
        } else if (index(DESC_NEWLINE, ch) > 0) {
            return i - 1
        } else {
            if (length(word) == 0 && eatWord == 0) {
                if (ch != "/") {
                    return wordBreakAt
                }
            }
            word = word ch
        }
    }
    return length(input)
}

function parseDesc(descVal, output, extractChoice, logPrefix)  {
    descVal = trim(descVal)
    gsub(/ #/, " ♯", descVal)
    split(descVal, lines, DESC_NEWLINE)
    if (length(lines) == 0) {
        return
    }
    spaces = ""
    concatedDescVal = ""
    truncatedLen = 0
    for (i in lines) {
        line = lines[i]
        if (i == 1) {
        } else if (i == 2) {
            if (match(line, /\S/)) {
                spaces = substr(line, 1, RSTART - 1)
                line = substr(line, RSTART)
            }
        } else {
            idx = index(line, spaces)
            if (idx > 0) {
                line = substr(line, idx + length(spaces))
            } else {
                line = trimStarts(line)
            }
        }
        if (match(line, /^\s*$/)) {
            line = ""
        }
        if (concatedDescVal == "") {
            concatedDescVal = trimStarts(line)
            continue
        }
        if (line == "" || match(line, /^\s/)) {
            if (truncatedLen == 0) {
                truncatedLen = length(concatedDescVal)
            }
            concatedDescVal = concatedDescVal "\n" trimStarts(line)
        } else {
            if (truncatedLen == 0) {
                if (testValueDesc(line)) {
                    for (j = i + 1; j <= length(lines); j++) {
                        if (testValueDesc(trimStarts(lines[j]))) {
                            outputLog(logPrefix " maybe have choices with description")
                            truncatedLen = length(concatedDescVal)
                            break
                        }
                    }
                }
            }
            concatedDescVal = concateLine(concatedDescVal, line)
        }
    }
    truncatedDescVal = ""
    if (truncatedLen == 0) {
        truncatedDescVal = concatedDescVal
    } else {
        truncatedDescVal = substr(concatedDescVal, 1, truncatedLen)
    }
    choiceVal = ""
    matchVal = ""
    if (match(concatedDescVal, / ?\(default\)/)) {
        concatedDescVal = replace(concatedDescVal, substr(concatedDescVal, RSTART, RLENGTH), "")
    }
    if (extractChoice == 1) {
        if (choiceVal == "" && index(concatedDescVal, "]") > 0) {
            if (match(concatedDescVal, / ?\[possible values: (([A-Za-z0-9_-]+, )+[A-Za-z0-9_-]+)\]/, arr)) {
                choiceVal = arr[1]
                matchVal = arr[0]
            } else if (match(concatedDescVal, / ?\[(([A-Za-z0-9_-]+\|){2,}[A-Za-z0-9_-]+)\]/, arr)) {
                choiceVal = arr[1]
                matchVal = arr[0]
            }
        }
        if (choiceVal == "" && index(concatedDescVal, ")") > 0) {
            if (match(concatedDescVal, / ?\(([^:]*: ?)?(([A-Za-z0-9_-]+,)+[A-Za-z0-9_-]+)\)/, arr)) {
                choiceVal = arr[2]
                matchVal = arr[0]
            } else if (match(concatedDescVal, / ?\(([^:]*: ?)?(([A-Za-z0-9_-]+(, | \| ))+[A-Za-z0-9_-]+)\)/, arr)) {
                choiceVal = arr[2]
                matchVal = arr[0]
            } else if (match(concatedDescVal, / ?\(([^:]*: ?)?(("([A-Za-z0-9_-]+)"(,|\|))+"([A-Za-z0-9_-]+)")\)/, arr)) {
                choiceVal = arr[2]
                matchVal = arr[0]
            } else if (match(concatedDescVal, / ?\(([^:]*: ?)?(("([A-Za-z0-9_-]+)"(, | \| ))+"([A-Za-z0-9_-]+)")\)/, arr)) {
                choiceVal = arr[2]
                matchVal = arr[0]
            }
        }
        if (choiceVal == "") {
            if (match(concatedDescVal, /: (([A-Za-z0-9_-]+, )+[A-Za-z0-9_-]+)(\s*$|\.)/, arr)) {
                choiceVal = arr[1]
            } else if (match(concatedDescVal, /: (("([A-Za-z0-9_-]+)", )+"([A-Za-z0-9_-]+)")(\s*$|\.)/, arr)) {
                choiceVal = arr[1]
            }
        }
    }
    if (choiceVal != "") {
        matchIdx = index(concatedDescVal, matchVal)
        if (matchIdx < 120 || length(concatedDescVal) - matchIdx < 120) {
            gsub(/(,|, |\|| \| )/, "|", choiceVal)
            gsub(/"/, "", choiceVal) # "
            truncatedDescVal = replace(truncatedDescVal, matchVal, "")
            output[2] = "[" choiceVal "]"
        }
    }

    trucatedAt = 0
    while (trucatedAt < length(truncatedDescVal)) {
        value = substr(truncatedDescVal, trucatedAt + 1)
        if (match(value, /[^.]\.(\s|$)/)) {
            trucatedAt = trucatedAt + RSTART + 1
            if (substr(value, RSTART - 2, 4) == "e.g.") {
            } else {
                truncatedDescVal = substr(truncatedDescVal, 1, trucatedAt)
                break
            }
        } else {
            trucatedAt = trucatedAt + length(value)
        }
    }

    output[1] = truncatedDescVal
}

function outputLog(value) {
    if (length(LOG_PREFIX) > 0) {
        print LOG_PREFIX ": " value  > "/dev/stderr"
    }
}

function concateLine(value, line) {
    valueLen = length(value)
    valueLastChar = substr(value, valueLen)
    if (valueLastChar == "‐") {
        output = substr(value, 1, valueLen - 1) line
    } else if (valueLastChar == " ") {
        output = trimEnds(value) " " line
    } else {
        output = value " " line
    }
    return output
}

function isEmpty(input) {
    return match(input, /^\s*$/)
}

function extraArgName(input) {
    gsub(/[\[\]\.<>]/, "", input)
    return input
}


function testMultilineDesc(input) {
    return match(input, /^ {8,}\S+/)
}

function testValueDesc(input) {
    return match(input, /(^--[A-Za-z0-9_-]+([=: ]|$)|^([-*]\s+)?[A-Za-z0-9_-]+\s*:|^([-*]\s+)?"([A-Za-z0-9_-]+)"\s*:|^([-*]\s+)?'([A-Za-z0-9_-]+)'\s*:)/)
}

function trim(input) {
    gsub(/^[[:space:]]+|[[:space:]]+$/,"", input)
    return input
}

function trimStarts(input) {
    gsub(/^[[:space:]]+/,"",input)
    return input
}

function trimEnds(input) {
    gsub(/[[:space:]]+$/,"",input)
    return input
}

function replace(input, source, target, idx) {
    idx = index(input, source)
    if (idx > 0) {
        return substr(input, 1, idx - 1) target substr(input, idx + length(source))
    }
    return input
}