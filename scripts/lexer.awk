BEGIN {
    prevLine = "other"
    usage = ""
    split("", options)
    split("", arguments)
    split("", commands)
    PAIRS[">"] = "<";
    PAIRS["]"] = "[";
    PAIRS[")"] = "(";
    PAIRS_OPEN = "<[("
    PAIRS_CLOSE = ">])"
}

{
    if (isOption($0)) {
        options[length(options) + 1] = trimStarts($0)
        prevLine = "option"
    } else if (isUsage($0)) {
        prevLine = "usage"
        usage = trimStarts(substr($0, index($0, ":") + 1))
    } else if (isGroup($0)) {
        if (containsArguments($0)) {
            prevLine = "argument"
        } else if (containCommand($0)) {
            prevLine = "command"
        } else {
            prevLine = "group"
        }
    } else if (IsEmpty($0)) {
        prevLine = "empty"
    } else {
        if (prevLine == "argument") {
            if (testLineBreakDesc($0)) {
                arguments[length(arguments)] = arguments[length(arguments)] "  " trimStarts($0)
            } else {
                trimed = trimStarts($0)
                if (length(trimed) > 0) {
                    arguments[length(arguments) + 1] = trimed
                }
            }
        } else if (prevLine == "option") {
            if (testLineBreakDesc($0)) {
                options[length(options)] = options[length(options)] "  " trimStarts($0)
            }
        } else if (prevLine == "command") {
            if (testLineBreakDesc($0)) {
                commands[length(commands)] = commands[length(commands)] "   " trimStarts($0)
            } else {
                trimed = trimCommand($0)
                if (length(trimed) > 0) {
                    commands[length(commands) + 1] = trimed
                }
            }
        } else if (prevLine == "usage") {
            if (usage == "") {
                usage = trimStarts($0)
            }
        } else if (prevLine == "group") {
            if (testCommand($0)) {
                commands[length(commands) + 1] = trimCommand($0)
                prevLine = "command"
            } else {
                prevLine = "other"
            }
        } else {
            prevLine = "other"
        }
    }
}

END {
    for (i in options) {
        option = options[i]
        splitAt = splitOption(option)
        optionVal = substr(option, 1, splitAt)
        if (optionVal == "--") {
            continue
        }
        descVal = truncateDesc(substr(option, splitAt + 1))
        if (match(descVal, /(\(|\[|: )(([A-Za-za-z0-9_-]+, )+[A-Za-z0-9_-]+)(\]|\)|\.|$)/, arr)) {
            choiceVal = arr[2]
            gsub(/, /, "|", choiceVal)
            print "option # " optionVal  " # " descVal " # [" choiceVal "]"
        } else {
            print "option # " optionVal  " # " descVal
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
            if (isCmd && match(word, /^[A-Za-z1-9_-]+$/)) {
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
        descVal = truncateDesc(substr(argument, splitAt + 1))
        print "argument # " argumentVal " # " descVal
    }
    for (i in commands) {
        command = commands[i]
        splitAt = splitCommand(command)
        commandVal = substr(command, 1, splitAt)
        gsub(/^\*|\*$/, "", commandVal)
        descVal = truncateDesc(substr(command, splitAt + 1))
        print "command # " commandVal " # " descVal
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

function truncateDesc(input) {
    gsub(/\s{2,}/, " ", input)
    input = trimStarts(input)
    if (length(input) < 80) {
        return input
    }
    if (match(input, /[.?!]\s/)) {
        return substr(input, 1, RSTART + 1)
    }
    return input
}

function trimCommand(input) {
    input = trimStarts(input)
    if (substr(input, 1, 1) == "-") {
        input = trimStarts(substr(input, 2))
    }
    return input
}

function IsEmpty(input) {
    return length(input) == 0
}

function isOption(input) {
    return match(input, /^ {0,10}-\S/)
}

function isUsage(input) {
    return index(tolower(input), "usage:") > 0
}

function isGroup(input) {
    return match(input, /^ {0,4}[A-Za-z0-9]+.*:$/)
}

function extraArgName(input) {
    gsub(/[\[\]\.<>]/, "", input)
    return input
}

function containsArguments(input) {
    return index(tolower(input), "arguments") > 0 || index(tolower(input), "args") > 0
}

function containCommand(input) {
    return index(tolower(input), "command") > 0
}

function testCommand(input) {
    return match(input, /^ {0,6}(\w+,\s?)*\w+(\s{2,}|$)/) || match(input, /^ +(\w+ )*\w+\s{2,}/)
}

function testLineBreakDesc(input) {
    return match(input, /^ {8,}\S+/)
}

function trimStarts(input) {
    gsub(/^[[:space:]]+/,"",input)
    return input
}