#!/usr/bin/awk -f 

# Parse csv table, output argc script.

BEGIN {
    PAIRS[">"] = "<";
    PAIRS["]"] = "[";
    PAIRS[")"] = "(";
    RE_SKIP_ARGUMENT = "^(flag|option|command|subcommand)"
    RE_SKIP_SBUCOMMAND =  "help|command|none|n\\/a"
    RE_REMOVE_NOTATION_PREFIX = "[=!]"
    EXISTS_SUBCOMMANDS = ",help,"
    DESCRIPTION = ""
    paramLineNum = 0
    maxWidthParamLine = 0
    split("", paramLines)
    commandLineNum = 0
    split("", commandLines)
    numCols = 1
}
{
    if (NR == 1) {
        line=$0
        numCols = count+=gsub(/\|/,"", line) - 1
    }
    firstIndex = index($0, "|")
    part0 = substr($0, firstIndex + 1)
    secondIndex = index(part0, "|")
    part1 = substr(part0, secondIndex + 1)
    split("", words1)
    thirdIndex = splitWords(part1, words1)
    part2 = substr(part1, thirdIndex + 1)
    if (length(words1) > 0) {
        kind = ""
        partKind = substr(part0, 1, secondIndex - 1)
        if (match(partKind, /option|flag/) || match(part1, /^ *(-[^- ]|--[^- ]+)/)) {
            kind = "option"
        } else if (match(partKind, /argument/)) {
            kind = "argument"
        } else if (match(partKind, /command/)) {
            kind = "command"
        }
        if (kind == "option") {
            split("", words2)
            forthIndex = extractChoices(part2, words2)
            part3 = substr(part2, forthIndex + 1)
            if (numCols > 3) {
                extractDescription(part3)
            }
            parseOptions(words1, words2)
        } else if (kind == "argument") {
            split("", words2)
            forthIndex = extractChoices(part2, words2)
            part3 = substr(part2, forthIndex + 1)
            if (numCols > 3) {
                extractDescription(part3)
            }
            parseArgument(words1, words2)
        } else if (kind == "command") {
            split("", words2)
            forthIndex = splitWords(part2, words2)
            part3 = substr(part2, forthIndex + 1)
            if (numCols > 3) {
                extractDescription(part3)
            }
            parseCommand(words1)
        }
    }
}
END {
    if (numCols > 3) {
        paramLineWidth = maxWidthParamLine + 2
        if (paramLineWidth > 50) {
            paramLineWidth  = 50
        }
        for (i = 1; i <= paramLineNum; i++) {
            body = paramLines[i, 1]
            description = "  " paramLines[i, 2]
            printf "%*-s%s\n", paramLineWidth, body, description
        }
    } else {
        for (i = 1; i <= paramLineNum; i++) {
            print paramLines[i, 1]
        }
    }
    for (i = 1; i <= commandLineNum; i++) {
        body = commandLines[i, 1];
        description = commandLines[i, 2];
        print body "||" description
    }
}

function parseOptions(words1, words2) {
    split("", shorts)
    split("", longs)
    split("", notations)
    split("", choices)
    extra["multiple"] = 0
    notation = ""
    word = ""
    name = ""
    for (i in words1) {
        word = words1[i]
        if (index(word, "--") == 1) {
            delete notations
            word = substr(word, 3)
            if (index(word, "[no-]")) {
                word = substr(word, 6)
                name = extractName(word)
                longs[length(longs) + 1] = name
                longs[length(longs) + 1] = "no-" name
                notation = substr(word, length(name) + 1)
            } else {
                name = extractName(word)
                longs[length(longs) + 1] = name
                notation = substr(word, length(name) + 1)
            }
        } else if (index(word, "-") == 1) {
            delete notations
            word = substr(word, 2)
            if (length(word) > 1) {
                name = extractName(word)
                if (length(name) == 1) {
                    shorts[length(shorts) + 1] = name
                    notation = substr(word, length(name) + 1)
                }
            } else {
                shorts[length(shorts) + 1] = word
            }
        } else {
            notation = word
        }
        if (length(notation) > 0) {
            addNotations(notation, notations, extra)
        }
    }
    for (i in words2) {
        addChoices(words2[i], choices)
    }

    shortsLen = length(shorts)
    longsLen = length(longs)

    modifierVal = ""
    if (extra["multiple"] == 1) {
        modifierVal = "*"
    }

    choicesVal = ""
    if (length(choices) > 0) {
        choicesVal = "[" join(choices, "|") "]"
    }
    notationsVal = ""
    for (i in notations) {
        notationsVal = notationsVal " <" notations[i] ">"
    }
    kindVal = "# @option "
    if (choicesVal == "" && notationsVal == "") {
        kindVal = "# @flag "
    }
    if (shortsLen <= 1 && longsLen == 1) {
        tailVal = modifierVal choicesVal notationsVal
        if (" <" toupper(longs[1]) ">" == notationsVal) {
            tailVal = modifierVal choicesVal
        }
        if (shortsLen == 0) {
            addParamLine(kindVal "--" longs[1] tailVal)
        } else {
            addParamLine(kindVal "-" shorts[1] " --" longs[1] tailVal)
        }
    }  else {
        tailVal = modifierVal choicesVal notationsVal

        for (i in shorts) {
            addParamLine(kindVal "-" shorts[i] tailVal)
        }
        for (i in longs) {
            addParamLine(kindVal "--" longs[i] tailVal)
        }
    }
}

function parseArgument(words1, words2) {
    split("", choices)
    extra["multiple"] = 0
    extra["required"] = 0
    value = words1[1] words1[2]
    split("", notations)
    addNotations(value, notations, extra)
    notation = notations[1]
    name = getArgName(notation)
    if (match(tolower(name), RE_SKIP_ARGUMENT)) {
        return
    }
    if (length(name) == 0) {
        return
    }
    for (i in words2) {
        addChoices(words2[i], choices)
    }
    modifierVal = ""
    if (extra["multiple"] == 1 && extra["required"] == 1) {
        modifierVal = "+"
    } else if (extra["multiple"] == 1 && extra["required"] == 0) {
        modifierVal = "*"
    } else if (extra["multiple"] == 0 && extra["required"] == 1) {
        modifierVal = "!"
    }
    choicesVal = ""
    if (length(choices) > 0) {
        choicesVal = "[" join(choices, "|") "]"
    }
    notationVal = ""
    if (notation != name && length(notation) != length(name)) {
        notationVal = " <"  notation ">"
    }
    addParamLine("# @arg " name modifierVal choicesVal notationVal)
}

function parseCommand(words1) {
    split("", names)
    split("", shortNames)
    for (i in words1) {
        word = words1[i]
        start = substr(word, 1, 1)
        if (start == "<" || start == "[") {
            return
        }
        if (match(tolower(word), RE_SKIP_ARGUMENT)) {
            return
        }
        if (index(EXISTS_SUBCOMMANDS, "," word ",") > 0) {
            continue
        }
        if (length(word) < 3) {
            shortNames[length(shortNames) + 1] = word
        } else {
            names[length(names) + 1] = word
        }
        EXISTS_SUBCOMMANDS = EXISTS_SUBCOMMANDS word "," 
    }
    split("", allNames);
    for (i in names) {
        allNames[length(allNames) + 1] = names[i]
    }
    for (i in shortNames) {
        allNames[length(allNames) + 1] = shortNames[i]
    }
    if (length(allNames) > 0) {
        addCommandLine(join(allNames, " "))
    }
}

function addNotations(item, array, extra) {
    len = length(item)
    if (len > 1 && match(substr(item, 1, 1), RE_REMOVE_NOTATION_PREFIX)) {
        item = substr(item, 2)
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
        if (index("<[(", ch) > 0) {
            balances = balances ch
            idx += 1
            balanceIndexes[idx] = i
        } else if (index(">])", ch) > 0) {
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
    if (index(">])", substr(item2, length(item2))) == 0) {
        item = item2
        if (extra2["multiple"] == 1) {
            extra["multiple"] = 1
        }
    }
    if (length(item) > 0) {
        array[length(array) + 1] = item
    }
}

function addChoices(item, array) {
    len = length(item)
    first = substr(item, 1, 1) 
    last = substr(item, len)
    if (len > 2) {
        if (first == "*" && last == "*") {
            item = substr(item, 2, len - 2);
        }
    }
    array[length(array) + 1] = item
}

function addParamLine(text) {
    paramLineNum = paramLineNum + 1
    paramLines[paramLineNum, 1] = text
    paramLines[paramLineNum, 2] = DESCRIPTION
    textLen = length(text)
    if (maxWidthParamLine < textLen) {
        maxWidthParamLine = textLen
    }
}

function addCommandLine(text) {
    commandLineNum = commandLineNum + 1
    commandLines[commandLineNum, 1] = text
    commandLines[commandLineNum, 2] = DESCRIPTION
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
    return join(words, "-")
}

function extractName(input,     result, len, idx, end, last) {
    if (match(input, /[0-9a-zA-Z._-]+/)) {
        result = substr(input, RSTART, RLENGTH)
        return takeTailEllipsis(result)
    }
}

function extractDescription(input) {
    idx = index(input, "|")
    if (idx > 0) {
        text = substr(input, 0, idx - 1)
        gsub(/^[[:space:]]+|[[:space:]]+$/, "", text)
        DESCRIPTION = text
    }
    return idx
}

function extractChoices(input, words) {
    idx = splitWords(input, words)
    part = substr(input, 1, idx - 1)
    wordsLen = length(words)
    if (wordsLen > 2) {
        if (index(part, "|") > 0) {
            num = gsub("|", "|", input);
        } else if (index(part, ",") > 0) {
            num = gsub(",", ",", input);
        } else {
            num = 0
        }
        if (num < wordsLen - 2) {
            delete words
        }
    }
    return idx
}

function splitWords(input, words) {
    split(input, chars, "")
    balances = ""
    word = ""
    for (i=1; i <= length(input); i++) {
        ch = chars[i]
        if (match(ch, /[[:space:],/]/)) {
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
        } else if (ch == "|") {
            if (length(balances) == 0) {
                if (length(word) != 0) {
                    words[length(words)+1] = word;
                    word = ""
                }
                return i
            } else {
                word = word ch
            }
        } else if (index("<[(", ch) > 0) {
            balances = balances ch
            word = word ch
        } else if (index(">])", ch) > 0) {
            if (substr(balances, length(balances), 1) == PAIRS[ch]) {
                balances = substr(balances, 1, length(balances) - 1)
                word = word ch
            } else {
                word = word ch
            }
        } else if (ch == "\\") {
        } else {
            word = word ch
        }
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