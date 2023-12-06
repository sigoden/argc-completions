#!/usr/bin/env awk

# Parse help text to table

BEGIN {
    gsub("@", " ", LOG_PREFIX)
    split("", LINES)
    LINES_LEN = 0
    PAIRS[">"] = "<";
    PAIRS["]"] = "[";
    PAIRS[")"] = "(";
    PAIRS["}"] = "{";
    PAIRS_OPEN = "<[({"
    PAIRS_CLOSE = ">])}"
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
    split("", options)
    split("", arguments)
    split("", commands)
    groupName = ""
    prevSpaces = 0
    emptyNR = 0
    spaces = 0
    usage = ""
    for (i = 1; i <= LINES_LEN; i ++) {
        line = LINES[i, 1]
        santizedLine = tolower(LINES[i, 2])
        if (length(santizedLine) == 0) {
            emptyNR = i
            continue
        }
        prevSpaces = spaces
        spaces = LINES[i, 3]

        isPrevEmpty = i == emptyNR + 1 || i == 1

        if (spaces <= 8) {
            if (match(santizedLine, /^-{1,2}[^- \t]/)) {
                if ((groupName == "option" && checkIndent(optionIndent, spaces, prevSpaces)) || (groupName != "option" && isOptionLine(i))) {
                    options[length(options) + 1] = trimStarts(line)
                    groupName = "option"
                    optionIndent = spaces
                    continue
                }
            } else if (match(santizedLine, /(^\s*synopsis|usage:)/) && !usage) {
                usage = substr(line, spaces + RSTART + RLENGTH)
                usageNR = i
                groupName = "usage"
                continue
            }
        } 
        if (spaces == 0) {
            if (match(line, /^[A-Z]/)) {
                groupName = ""
            }
            if (match(santizedLine, /\s*(flags|options)(:\s*$|$)/)) {
                if (LINES[i+1, 2] == "") {
                    i += 1
                }
                if (isOptionLine(getNoneEmptyLineIndex(i))) {
                    groupName = "option"
                    continue
                }
            } else if (match(santizedLine, /\s*(arguments|args|positionals)(:\s*$|$)/)) {
                if (LINES[i+1, 3] > spaces) {
                    groupName = "argument"
                    continue
                }
            } else if (match(santizedLine, /\s*(commands|subcommands)(:\s*$|$)/)) {
                if (LINES[i+1, 2] == "") {
                    i += 1
                }
                if (LINES[i+1, 3] > spaces) {
                    groupName = "command"
                    continue
                }
            } else if (match(santizedLine, /(aliases|synopsis|description|discussion|environment|environment variables|examples|learn more|columns)(:\s*$|$)/)) {
                if (LINES[i+1, 3] > spaces) {
                    groupName = ""
                    continue
                }
            }
            if (isPrevEmpty) {
                noneEmptyLineIndex = getNoneEmptyLineIndex(i)
                if (LINES[noneEmptyLineIndex, 3] > spaces) {
                    if (isOptionLine(noneEmptyLineIndex)) {
                        groupName = "option"
                        continue
                    } else if (isCommandLine(noneEmptyLineIndex)) {
                        groupName = "command"
                        continue
                    }
                }
                groupName = ""
            }
        }

        lineSeps = "\n"
        if (isPrevEmpty) {
            lineSeps = "\n\n"
        }
        if (groupName == "argument") {
            if (testMultilineDesc(line)) {
                arguments[length(arguments)] = arguments[length(arguments)] lineSeps line
            } else {
                trimed = trimStarts(line)
                if (length(trimed) > 0) {
                    arguments[length(arguments) + 1] = trimed
                }
            }
        } else if (groupName == "option") {
            if (testMultilineDesc(line)) {
                options[length(options)] = options[length(options)] lineSeps line
            } else if (!match(line, /^\s*$/) && spaces <= optionIndent) {
                groupName = ""
            }
        } else if (groupName == "command") {
            if (testMultilineDesc(line)) {
                commands[length(commands)] = commands[length(commands)] lineSeps line
            } else {
                trimed = trimStarts(line)
                if (length(trimed) > 0) {
                    if (match(trimed, /^([^ ,[\]]+ ){4, }/) && !match(trimed, /(  |\t)/)) {
                    } else if (match(trimed, /^[a-z0-9_][A-Za-z0-9_:.-]*(\*)?($|\s|,)/)) {
                        commands[length(commands) + 1] = trimed
                    } else if (match(trimed, /^\\-/)) {
                        commands[length(commands) + 1] = substr(trimed, 2)
                    }
                }
            }
        } else if (groupName == "usage") {
            if (usage == "") {
                usage = trimStarts(line)
                usageNR = i
            } else if (usageNR == i - 1 && match(line, /^ {10,}\S/)) {
                usage = usage " " trimStarts(line)
                usageNR = i
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
        if (match(optionVal, /^--?<.*>/)) {
            continue
        }
        gsub(",-", ", -", optionVal)
        split("", descValues)
        parseDesc(substr(option, splitAt + 1), descValues, 1, "option `" optionVal "`")
        if (length(descValues[2]) > 0) {
            print "option # " optionVal  " # " descValues[1] " # " descValues[2]
        } else {
            if (match(optionVal, /=?\{([[:alnum:]][[:alnum:]_-]*(,[[:alnum:]][[:alnum:]_-]*)+)\},?/, arr) || 
                match(optionVal, /=?\{([[:alnum:]][[:alnum:]_-]*(\|[[:alnum:]][[:alnum:]_-]*)+)\},?/, arr) || 
                match(optionVal, /=?<([[:alnum:]][[:alnum:]_-]*(\|[[:alnum:]][[:alnum:]_-]*){2,})>,?/, arr)) {
                matchText = substr(optionVal, RSTART, RLENGTH)
                gsub(/(^=|,$)/, "", matchText);
                optionVal = replace(optionVal, matchText, "", 1)
                gsub(",", "|", arr[1])
                print "option # " optionVal  " # " descValues[1] " # [" arr[1] "]"
            } else {
                print "option # " optionVal  " # " descValues[1]
            }
        }
    }
    if (length(arguments) == 0 && length(usage) > 0) {
        split("", words)
        gsub(/ \| /, "|", usage)
        usage = gensub(/\[-- ([^\]]+)\]/, "[\\1]", 1, usage)
        gsub(/\[--\] /, "", usage)
        if (CMDS) { sub(CMDS " ", CMDS " -- ", usage) }
        sub(/\s+\.\.\.$/, "...", usage)
        sub(/ - [A-Z][a-z0-9].*/, "", usage)
        usage = gensub(/\[\s*(\S+)\s+(\[\s*[^\[\]]+\](\.\.\.)?)\s*\]$/, "\\1 \\2", 1, usage)
        splitUsage(usage, words)
        isCmd = 1
        for (i in words) {
            word = words[i]
            if (i == 1) {
                continue
            }
            if (isCmd && match(word, /^[a-z0-9_][A-Za-z0-9_:.-]*$/)) {
                continue
            }
            isCmd = 0
            if (match(word, /^(\[\s*-|\(\s*-|<\s*-|\{\s*-|\[\{\s*-|-)/)) {
                continue
            }
            wordLower = tolower(word)
            if (match(wordLower, /argument|switches|option|flag/)) {
                continue
            }
            arguments[length(arguments) + 1] = word
        }
    }
    split("", tidyArguments)
    tidyArgumentsNum = 0
    argumentsNum = length(arguments)
    enumIdx = 0
    for (i in arguments) {
        argument = arguments[i]
        if (i < length(arguments) && extraArgName(argument) == extraArgName(arguments[i + 1])) {
            continue
        }
        splitAt = splitArgment(argument)
        argumentVal = substr(argument, 1, splitAt)
        argumentVal = gensub(/\([Ss]\)/, "...", 1, argumentVal)
        argumentVal = gensub(/(\s*\|\s*-[^)}|\]]+)+/, "", 1, argumentVal)
        if (argumentsNum == i) {
            if (!match(argumentVal, /\|/) && !match(tolower(argumentVal), /(alias|seconds|ss)\>/)) {
                argumentVal = gensub(/([Ss]\s*)([>\]])?$/, "\\1...\\2", 1, argumentVal)
            }
        }
        split("", descValues)
        parseDesc(substr(argument, splitAt + 1), descValues, 1, "argument `" optionVal "`")
        if (match(argumentVal, /^\{([A-Za-z0-9_-]+\|)+[A-Za-z0-9_-]+\}$/) ||
            match(argumentVal, /^\{([A-Za-z0-9_-]+,)+[A-Za-z0-9_-]+\}$/) ||
            match(argumentVal, /^\(([A-Za-z0-9_-]+\|)+[A-Za-z0-9_-]+\)$/)) {
            tidyArgumentsNum = tidyArgumentsNum + 1
            if (enumIdx == 0) {
                tidyArguments[tidyArgumentsNum, 1] = "enum"
            } else {
                tidyArguments[tidyArgumentsNum, 1] = "enum" enumIdx
            }
            enumIdx += 1
            tidyArguments[tidyArgumentsNum, 2] = descValues[1]
            choicesVal = "[" substr(argumentVal, 2, length(argumentVal) -2) "]"
            gsub(",", "|", choicesVal)
            tidyArguments[tidyArgumentsNum, 3] = choicesVal
        } else {
            tidyArgumentsNum = tidyArgumentsNum + 1
            tidyArguments[tidyArgumentsNum, 1] = argumentVal
            tidyArguments[tidyArgumentsNum, 2] = descValues[1]
            if (length(descValues[2]) > 0) {
                tidyArguments[tidyArgumentsNum, 3] = descValues[2]
            }
        }
    }
    prevSkipArgument = 0
    for (i = 1; i <= tidyArgumentsNum; i++) {
        argumentVal = tidyArguments[i, 1]
        argumentValLower = tolower(argumentVal)
        if (match(argumentValLower, /(command|subcommand)/)) {
            if (i == 1 && length(commands) > 0) {
                prevSkipArgument = 1
                continue
            } else if (prevSkipArgument == 1) {
                prevSkipArgument = 1
                continue
            }
        } else if (match(argumentValLower, /arg/)) {
            if (i == tidyArgumentsNum && prevSkipArgument == 1) {
                continue
            }
        }
        print "argument # " argumentVal " # " tidyArguments[i, 2] " # " tidyArguments[i, 3]
        prevSkipArgument = 0
    }
    for (i in commands) {
        command = commands[i]
        splitAt = splitCommand(command)
        commandVal = substr(command, 1, splitAt)
        gsub(/^\*|\*$/, "", commandVal)
        split("", descValues)
        parseDesc(substr(command, splitAt + 1), descValues, 0)
        if (commandVal != "" && !match(commandVal, /^[0-9]+$/)) {
            print "command # " commandVal " # " descValues[1]
        }
    }
}

function isOptionLine(idx) {
    santizedLine = tolower(LINES[idx, 2])
    if (match(santizedLine, /^-{1,2}[^- \t]/)) {
        yes = 0
        if (match(santizedLine, /(  +|\t+)/) && !match(santizedLine, /^-{1,2}[^- \t]+( \w+){3,}/)) {
            yes = 1
        } else if (LINES[idx+1, 3] == LINES[idx, 3] && match(LINES[idx+1, 2], /^-{1,2}[^- \t]/)) {
            yes = 1
        } else if (match(santizedLine, /^(-\S,? )?--[^-]\S* (\[|<)/)) {
            yes = 1
        } else if (match(santizedLine, /^-{1,2}[^- \t]+ [^-]\S+\s*[|,]\s*-{1,2}[^- \t]+ [^-]\S+/)) {
            yes = 1
        } else if (match(santizedLine, /^(-\S,? )?--[^-]\S*( \S+)?\s*$/) && !match(santizedLine, /\.$/)) {
            yes = 1
        } else if (match(santizedLine, /^-\S \S+\s*$/) && !match(santizedLine, /\.$/)) {
            yes = 1
        } else if (LINES[idx+1, 3] > LINES[idx, 3]) {
            yes = 1
        }
        return yes
    }
    return 0
}

function isCommandLine(idx) {
    santizedLine = tolower(LINES[idx, 2])
    return match(santizedLine, /^([a-z0-9_-]+,( )?){0,2}([a-z0-9_-]+)(,)?($|  +|\t)/)
}

function checkIndent(optionIndent, spaces, prevSpaces) {
    if (optionIndent == spaces || (spaces != prevSpaces && (optionIndent - spaces <= 4 || spaces - optionIndent <= 4))) {
        return 1
    } else {
        return 0
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
        if (ch == "\n") {
            return i - 1
        } else if (match(ch, /[[:space:]]/)) {
            if (length(balances) == 0) {
                if (length(word) == 0) {
                    if (i - wordBreakAt > 1 && substr(input, i + 1, 1) != "-") {
                        return wordBreakAt
                    }
                } else {
                    words[length(words) + 1] = word
                    word = ""
                    wordBreakAt = i - 1
                    if (ch == "\t") {
                        return wordBreakAt
                    }
                }
            } else {
                word = word ch
            }
        } else if (ch == "\x27" || ch == "\x22") {
            if (substr(balances, length(balances), 1) == ch) {
                balances = substr(balances, 1, length(balances) - 1)
            } else {
                balances = balances ch
            }
            word = word ch
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
                trimedInput = substr(input, i)
                if (match(words[length(words)], /^-/) && match(trimedInput, /^\S+( -|  |\.{3}| \[|\n|$)/)) {
                    isBreak = 0
                } else if (match(trimedInput, /^[A-Z0-9]+( [A-Z0-9]+){,2}( -|  |\.{3}| \[|\n|$)/) ||
                           match(trimedInput, /^[a-z0-9]+( [a-z0-9]+){,2}( -|  |\.{3}| \[|\n|$)/)) {
                    isBreak = 0
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
    wordBreakAt = 0
    for (i=1; i <= length(input); i++) {
        ch = chars[i]
        if (ch == "\n") {
            return i - 1
        } else if (match(ch, /[[:space:]]/)) {
            if (length(balances) == 0) {
                if (length(word) == 0) {
                    continue
                } else {
                    words[length(words)+1] = word;
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
            word = word ch
        }
    }
    if (length(word) > 0) {
        words[length(words)+1] = word;
        word = ""
    }
}

function splitArgment(input) {
    return nextWord(input)
}

function splitCommand(input) {
    split(input, chars, "")
    split("", words)
    balances = ""
    word = ""
    wordBreakAt = 0
    for (i=1; i <= length(input); i++) {
        ch = chars[i]
        if (ch == "\n") {
            return i - 1
        } else if (match(ch, /[[:space:]]/)) {
            if (length(balances) == 0) {
                if (length(word) == 0) {
                    if (i - wordBreakAt > 1 && substr(input, i + 1, 1) != "-") {
                        return wordBreakAt
                    }
                } else {
                    words[length(words) + 1] = word
                    word = ""
                    wordBreakAt = i - 1
                    if (ch == "\t") {
                        return wordBreakAt
                    }
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
                trimedInput = substr(input, i)
                if (match(trimedInput, /^\S+(  | \.{3}| \[|\n|$)/)) {
                    isBreak = 0
                } else if (match(words[length(words)], /,$/)) {
                    isBreak = 0
                } else if (match(trimedInput, /^[A-Z0-9=]+( [A-Z0-9=]+){,2}(  |\.{3}| \[|\n|$)/) ||
                           match(trimedInput, /^[a-z0-9=]+( [a-z0-9=]+){,2}(  |\.{3}| \[|\n|$)/)) {
                    isBreak = 0
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

function parseDesc(descVal, output, extractChoice, logPrefix)  {
    descVal = trim(descVal)
    gsub(/ #/, " ♯", descVal)
    split(descVal, lines, "\n")
    if (length(lines) == 0) {
        return
    }
    spaces = ""
    concatedDescVal = ""
    truncatedAt = 0
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
            if (truncatedAt == 0) {
                truncatedAt = length(concatedDescVal)
            }
            concatedDescVal = concatedDescVal "\n" trimStarts(line)
        } else {
            if (truncatedAt == 0) {
                if (testValueDesc(line)) {
                    for (j = i + 1; j <= length(lines); j++) {
                        if (testValueDesc(trimStarts(lines[j]))) {
                            outputLog(logPrefix " maybe have choices with description")
                            truncatedAt = length(concatedDescVal)
                            break
                        }
                    }
                }
            }
            concatedDescVal = concateLine(concatedDescVal, line)
        }
    }
    truncatedDescVal = ""
    if (truncatedAt == 0) {
        truncatedDescVal = concatedDescVal
    } else {
        truncatedDescVal = substr(concatedDescVal, 1, truncatedAt)
    }
    choicesVal = ""
    matchVal = ""
    if (match(concatedDescVal, / ?\(default\)/)) {
        concatedDescVal = replace(concatedDescVal, substr(concatedDescVal, RSTART, RLENGTH), "")
    }
    if (extractChoice == 1 && choicesVal == "" ) {
        if (index(concatedDescVal, "]") > 0) {
            if (match(concatedDescVal, / ?\[(possible values|choices): (([A-Za-z0-9_\.\/,:-]+, )*[A-Za-z0-9_\.\/,:-]+)\]/, arr)) {
                choicesVal = arr[2]
                matchVal = arr[0]
            } else if (match(concatedDescVal, / ?\[(possible values|choices): (("([A-Za-z0-9_\.\/,-]+)", )*"([A-Za-z0-9_\.\/,-]+)")\]/, arr)) {
                choicesVal = arr[2]
                matchVal = arr[0]
            } else if (match(concatedDescVal, / ?\[(([A-Za-z0-9_-]+(,|, |\|| \| )){2,}[A-Za-z0-9_-]+)\]/, arr)) {
                choicesVal = arr[1]
                matchVal = arr[0]
            } else if (match(concatedDescVal, / ?\[(("([A-Za-z0-9_-]+)"(,|, |\|| \| )){2,}"([A-Za-z0-9_-]+)")\]/, arr)) {
                choicesVal = arr[1]
                matchVal = arr[0]
            }
        }
        if (index(concatedDescVal, ")") > 0) {
            if (match(concatedDescVal, / ?\(([^:]*: ?)?(([A-Za-z0-9_-]+,)+[A-Za-z0-9_-]+)\)/, arr)) {
                choicesVal = arr[2]
                matchVal = arr[0]
            } else if (match(concatedDescVal, / ?\(([^:]*: ?)?(([A-Za-z0-9_-]+(, | \| ))+[A-Za-z0-9_-]+)\)/, arr)) {
                choicesVal = arr[2]
                matchVal = arr[0]
            } else if (match(concatedDescVal, / ?\(([^:]*: ?)?(("([A-Za-z0-9_-]+)"(,|\|))+"([A-Za-z0-9_-]+)")\)/, arr)) {
                choicesVal = arr[2]
                matchVal = arr[0]
            } else if (match(concatedDescVal, / ?\(([^:]*: ?)?(("([A-Za-z0-9_-]+)"(, | \| ))+"([A-Za-z0-9_-]+)")\)/, arr)) {
                choicesVal = arr[2]
                matchVal = arr[0]
            }
        }
        if (index(concatedDescVal, "}") > 0) {
            if (match(concatedDescVal, /\{(([A-Za-z0-9_-]+\|)+[A-Za-z0-9_-]+)\}/, arr)) {
                choicesVal = arr[1]
                matchVal = arr[0]
            } else if (match(concatedDescVal, /\{(([A-Za-z0-9_-]+, )+[A-Za-z0-9_-]+)\}/, arr)) {
                choicesVal = arr[1]
                matchVal = arr[0]
            }
        }
        if (choicesVal == "") {
            if (match(concatedDescVal, /: (([A-Za-z0-9_-]+, )+[A-Za-z0-9_-]+)(\s*$|\.)/, arr)) {
                choicesVal = arr[1]
            } else if (match(concatedDescVal, /: (("([A-Za-z0-9_-]+)", )+"([A-Za-z0-9_-]+)")(\s*$|\.)/, arr)) {
                choicesVal = arr[1]
            }
        }
    }
    if (choicesVal != "") {
        if (match(choicesVal, /^-/) || match(choicesVal, /[0-9]+-[0-9]+/)) {
            choicesVal = ""
        }
    }
    if (choicesVal != "") {
        matchIdx = index(concatedDescVal, matchVal)
        if (matchIdx < 120 || length(concatedDescVal) - matchIdx < 120) {
            gsub(/(,|, |\|| \| )/, "|", choicesVal)
            gsub(/"/, "", choicesVal) # "
            truncatedDescVal = replace(truncatedDescVal, matchVal, "")
            output[2] = "[" choicesVal "]"
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
    gsub(/(\s{3,}|\t+)/, "  ", truncatedDescVal)
    output[1] = truncatedDescVal
}

function nextWord(input,    i) {
    split(input, chars, "")
    balances = ""
    for (i=1; i <= length(input); i++) {
        ch = chars[i]
        if (ch == "\n") {
            return i - 1
        } else if (match(ch, /[[:space:]]/)) {
            if (length(balances) == 0) {
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

function outputLog(value) {
    if (LOG) {
        print "[info] " CMDS ":" value  > "/dev/stderr"
    }
}

function concateLine(value, line) {
    value = trimEnds(value)
    line = trimStarts(line)
    valueLen = length(value)
    if (valueLen == 0) {
        return line
    }
    if (match(value, /-$/)) {
        output = value line
    } else if (match(value, /‐$/)) {
        output = substr(value, 1, valueLen - 1) line
    } else {
        output = value " " line
    }
    return output
}

function getNoneEmptyLineIndex(idx,      i) {
    for (i = idx + 1; i <= LINES_LEN; i++) {
        if (length(LINES[i, 2]) > 0) {
            return i
        }
    }
    return 0
}

function isEmpty(input) {
    return match(input, /^\s*$/)
}

function extraArgName(input) {
    gsub(/[\[\]\.<>]/, "", input)
    return input
}


function testMultilineDesc(input) {
    if (match(input, /^\s*\S/)) {
        testSpaces = substr(input, 1, RLENGTH - 1)
        gsub("\t", "    ", testSpaces)
        return length(testSpaces) >= 8
    }
    return 0
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

function replace(input, from, to, all,       fromLen, idx) {
    fromLen = length(from)
    while (idx = index(input, from)) {
        input = substr(input, 1, idx - 1) to substr(input, idx + fromLen)
        if (!all) {
            break
        }
    }
    return input
}