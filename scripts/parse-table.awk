BEGIN {
    prevLine = "other"
    emptyNR = 0
    usage = ""
    split("", options)
    split("", arguments)
    split("", commands)
    PAIRS[">"] = "<";
    PAIRS["]"] = "[";
    PAIRS[")"] = "(";
    PAIRS_OPEN = "<[("
    PAIRS_CLOSE = ">])"
    DESC_NEWLINE = "↵"
}

{
    if (isOption($0) && !(prevLine == "other" && match($0, /^-[A-Za-z0-9_-]+ \S/))) {
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
    } else if (isEmpty($0)) {
        emptyNR = NR
    } else {
        newlines = DESC_NEWLINE
        if (NR == emptyNR + 1) {
            newlines = DESC_NEWLINE DESC_NEWLINE
            if (!match($0, /^[[:space:]]/)) {
                prevLine = "other"
            }
        }
        if (prevLine == "argument") {
            if (testLineBreakDesc($0)) {
                arguments[length(arguments)] = arguments[length(arguments)] newlines $0
            } else {
                trimed = trimStarts($0)
                if (length(trimed) > 0) {
                    arguments[length(arguments) + 1] = trimed
                }
            }
        } else if (prevLine == "option") {
            if (testLineBreakDesc($0)) {
                options[length(options)] = options[length(options)] newlines $0
            }
        } else if (prevLine == "command") {
            if (testLineBreakDesc($0)) {
                commands[length(commands)] = commands[length(commands)] newlines $0
            } else {
                trimed = trimStarts($0)
                if (length(trimed) > 0) {
                    commands[length(commands) + 1] = trimed
                }
            }
        } else if (prevLine == "usage") {
            if (usage == "") {
                usage = trimStarts($0)
            }
        } else if (prevLine == "group") {
            if (testEnvVar($0)) {
                prevLine = "other"
            } else if (testCommand($0)) {
                commands[length(commands) + 1] = trimStarts($0)
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
        split("", descValues)
        parseDesc(substr(option, splitAt + 1), descValues, 1)
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
        parseDesc(substr(argument, splitAt + 1), descValues, 1)
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

function parseDesc(descVal, output, extractChoice)  {
    gsub(/^[[:space:]]+|[[:space:]]$/,"", descVal)
    gsub(/ #/, " ♯", descVal)
    split(descVal, lines, DESC_NEWLINE)
    if (length(lines) == 0) {
        return
    }
    spaces = 0
    dropLines = 0
    concatedDescVal = ""
    truncatedDescVal = ""
    for (i in lines) {
        line = trimStarts(lines[i])
        if (i == 1) {
            concatedDescVal = line
            truncatedDescVal = line
        } else {
            concatedDescVal = concatedDescVal " " line
            if (dropLines == 0) {
                if (length(line) == 0) {
                    dropLines = 1
                    continue
                }
                if (index(line, "--") == 1) {
                    dropLines = 1
                    continue
                }
                if (index(substr(line, 1, 20), ": ") > 0 && index(substr(trimStarts(lines[i + 1]), 1, 20), ": ") > 0) {
                    dropLines = 1
                    continue
                }
                spaces_ = length(lines[i]) - length(line)
                if (spaces == 0) {
                    spaces = spaces_
                } else if (spaces != spaces_) {
                    dropLines = 1
                    continue
                }
                truncatedDescVal = truncatedDescVal " " line
            }
        }
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
    if (match(truncatedDescVal, / ?\(e\.g\. [^)]*\)/)) {
        truncatedDescVal = replace(truncatedDescVal, substr(truncatedDescVal, RSTART, RLENGTH), "")
    }
    if (match(truncatedDescVal, /[^.]\.(\s|$)/)) {
        truncatedDescVal = substr(truncatedDescVal, 1, RSTART + 1)
    }
    output[1] = truncatedDescVal
}

function isEmpty(input) {
    return length(input) == 0
}

function isOption(input) {
    return match(input, /^[ \t]{0,8}-{1,2}[^- \t]/)
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
    return match(tolower(input), /arguments|args|parameters/)
}

function containCommand(input) {
    return index(tolower(input), "command") > 0
}

function testEnvVar(input) {
    return match(input, /^( +)?[A-Z0-9_]{2,}+/)
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

function replace(input, source, target, idx) {
    idx = index(input, source)
    if (idx > 0) {
        return substr(input, 1, idx - 1) target substr(input, idx + length(source))
    }
    return input
}