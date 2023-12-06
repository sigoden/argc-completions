#!/usr/bin/env awk

# Parse table to script

BEGIN {
    PAIRS[">"] = "<";
    PAIRS["]"] = "[";
    PAIRS[")"] = "(";
    PAIRS["}"] = "{";
    PAIRS_OPEN = "<[({"
    PAIRS_CLOSE = ">])}"
    RE_SKIP_ARGUMENT = "^(flag|option|switches)"
    RE_SKIP_SBUCOMMAND =  "\\<(help|command|none|n\\/a)\\>"
    RE_SHADOW_COMMAND = "^(do|echo|cat|tail|head|command|select|eval|function|time)$"
    RE_REMOVE_NOTATION_PREFIX = "[=!]"
    EXISTS_SUBCOMMANDS = ",help,"
    argumentLine = 0
    paramLineNum = 0
    paramLineWidth = 0
    paramLineMaxWidth = 48
    split("", paramLines)
    commandLineNum = 0
    split("", commandLines)
    metaLineNum = 0
    split("", metaLines)
}
{
    gsub(/‐/, "-", $0)
    index1 = index($0, "#")
    part1 = substr($0, index1 + 1)
    split("", words1)
    kind = substr($0, 1, index1 - 2)
    index2 = splitWords(part1, words1, kind)
    part2 = substr(part1, index2 + 1)
    if (length(words1) > 0) {
        if (kind == "meta") {
            metaLineNum += 1
            metaLines[metaLineNum] = join(words1, " ")
        } else if (kind == "option") {
            split("", descRet)
            extractDesc(descRet, part2)
            part3 = substr(part2, descRet[2] + 1)
            parseOptions(words1, descRet[1], trim(part3))
        } else if (kind == "argument") {
            split("", descRet)
            extractDesc(descRet, part2)
            part3 = substr(part2, descRet[2] + 1)
            parseArgument(words1, descRet[1], trim(part3))
        } else if (kind == "command") {
            split("", descRet)
            extractDesc(descRet, part2)
            parseCommand(words1, descRet[1])
        }
    }
}

END {
    for (i = 1; i <= metaLineNum; i++) {
        print "# @meta " metaLines[i]
    }
    paramLineWidth = paramLineWidth + 2
    for (i = 1; i <= paramLineNum; i++) {
        body = "# @" paramLines[i, 1] " " paramLines[i, 2]
        description = paramLines[i, 3]
        if (length(description) == 0) {
            print body
        } else {
            if (length(body) >= paramLineWidth) {
                print body "  " description
            } else {
                printf "%*-s  %s\n", paramLineWidth, body, description
            }
        }
    }
    for (i = 1; i <= commandLineNum; i++) {
        body = commandLines[i, 1];
        description = commandLines[i, 2];
        print body "#" description
    }
}

function parseOptions(words1, descVal, choicesVal) {
    split("", shorts)
    split("", longs)
    split("", longsDedup)
    split("", notationGroup)
    split("", notationListSize)
    extra["multiple"] = 0
    notation = ""
    word = ""
    name = ""
    notationGroupNum = 0
    notationListNum = 0
    for (i in words1) {
        word = words1[i]
        notation = ""
        if (index(word, "--") == 1) {
            notationGroupNum += 1
            notationListNum = 0
            word = substr(word, 3)
            if (index(word, "[no-]")) {
                word = substr(word, 6)
                name = extractName(word)
                longs[length(longs) + 1] = "--" name
                longs[length(longs) + 1] = "--no-" name
                notation = substr(word, length(name) + 1)
            } else if (index(word, "[no]")) {
                word = substr(word, 5)
                name = extractName(word)
                longs[length(longs) + 1] = "--" name
                longs[length(longs) + 1] = "--no" name
                notation = substr(word, length(name) + 1)
            } else {
                name = extractName(word)
                longValue = "--" name
                if (longsDedup[longValue] != 1) {
                    longsDedup[longValue] = 1
                    longs[length(longs) + 1] = longValue
                }
                notation = substr(word, length(name) + 1)
            }
        } else if (index(word, "-") == 1 || index(word, "+") == 1) {
            if (word == "-" || word == "+") {
                continue
            }
            sign = substr(word, 1, 1)
            notationGroupNum += 1
            notationListNum = 0
            word = substr(word, 2)
            if (index(word, "[no-]")) {
                word = substr(word, 6)
                name = extractName(word)
                longs[length(longs) + 1] = sign name
                longs[length(longs) + 1] = "-no-" name
                notation = substr(word, length(name) + 1)
            } else if (index(word, "[no]")) {
                word = substr(word, 5)
                name = extractName(word)
                longs[length(longs) + 1] = sign name
                longs[length(longs) + 1] = "-no" name
                notation = substr(word, length(name) + 1)
            } else if (length(word) > 1) {
                name = extractName(word)
                if (length(name) == 1) {
                    shorts[length(shorts) + 1] = sign name
                } else {
                    longValue =sign name
                    if (longsDedup[longValue] != 1) {
                        longsDedup[longValue] = 1
                        longs[length(longs) + 1] = longValue
                    }
                }
                notation = substr(word, length(name) + 1)
            } else {
                shorts[length(shorts) + 1] = sign word
            }
        } else {
            notation = word
        }
        if (length(notation) > 0) {
            parseNotation(notation, extra)
            if (extra["notation"] != "") {
                notationListNum += 1
                notationListSize[notationGroupNum] = notationListNum
                notationGroup[notationGroupNum, notationListNum] = extra["notation"]
            }
        }
    }
    shortsLen = length(shorts)
    longsLen = length(longs)

    split("", notations)
    for (j = notationGroupNum; j > 0; j--) {
        if (notationListSize[j] > 0) {
            if (j == notationGroupNum - 1 && notationListSize[j] == 1 && match(notationGroup[j, 1], /^(or|\/|\|)$/)) {
                break
            }
            for (k = 1; k <= notationListSize[j]; k++) {
                notations[length(notations) + 1] = notationGroup[j, k]
            }
            break
        }
    }

    if (extra["multiple"] == 1 && length(notations) == 2 && notations[1] == notations[2]) {
        extra["multiple"] = 0
        delete notations[2] 
        notations[1] = notations[1] "+"
    }

    modifierVal = ""
    if (extra["multiple"] == 1 && (choicesVal == "" || substr(choicesVal, 0, 1) == "[")) {
        modifierVal = "*"
    }

    notationVal = ""
    if (choicesVal == "" && length(notations) == 1 && match(notations[1], /^[a-z0-9][a-z0-9_-]+(\|[a-z0-9][a-z0-9_-]+){2,}$/)) {
        choicesVal = "[" notations[1] "]"
    } else {
        for (i in notations) {
            notationVal = notationVal " <" notations[i] ">"
        }
    }
    kindVal = "option"
    if (choicesVal == "" && notationVal == "") {
        kindVal = "flag"
    }
    if (notationVal == " <\"\">" || notationVal == " <=>") {
        notationVal = ""
    }
    if (shortsLen <= 1 && longsLen == 1) {
        tailVal = modifierVal choicesVal notationVal
        if (" <" longNameToValueName(longs[1]) ">" == notationVal) {
            tailVal = modifierVal choicesVal
        }
        if (shortsLen == 0) {
            addParamLine(kindVal, longs[1] tailVal, descVal)
        } else {
            addParamLine(kindVal, shorts[1] " " longs[1] tailVal, descVal)
        }
    }  else {
        tailVal = modifierVal choicesVal notationVal

        for (i in shorts) {
            addParamLine(kindVal, shorts[i] tailVal, descVal)
        }
        for (i in longs) {
            addParamLine(kindVal, longs[i] tailVal, descVal)
        }
    }
}

function parseArgument(words1, descVal, choicesVal) {
    split("", choices)
    extra["multiple"] = 0
    extra["required"] = 0
    value = words1[1]
    split("", notations)
    parseNotation(value, extra)
    notation = extra["notation"]
    if (match(notation, /^[a-z0-9]([A-Za-z0-9_-]+)(\|[a-z0-9]([A-Za-z0-9_-]+)){2,}$/)) {
        name = "enum"
        choicesVal = "[" notation "]"
        notation = name
    } else if (notation == "true|false") {
        name = "bool"
        choicesVal = "[" notation "]"
        notation = "bool"
    } else if (match(value, /^\{[a-z0-9]([A-Za-z0-9_-]+)(\|[a-z0-9]([A-Za-z0-9_-]+))+\}$/)) {
        name = "enum"
        choicesVal = "[" notation "]"
        notation = name
    } else {
        name = getArgName(notation)
    }
    if (length(name) == 0) {
        return
    }
    if (argumentLine == 0 && match(name, RE_SKIP_ARGUMENT)) {
        return
    }
    modifierVal = ""
    if (choicesVal == "" || substr(choicesVal, 0, 1) == "[") {
        if (extra["multiple"] == 1 && extra["required"] == 1) {
            modifierVal = "+"
        } else if (extra["multiple"] == 1 && extra["required"] == 0) {
            modifierVal = "*"
        } else if (extra["multiple"] == 0 && extra["required"] == 1) {
            modifierVal = "!"
        }
    }
    notationVal = ""
    if (length(words1[2]) > 0) {
        notationVal = " " words1[2]
    } else if (tolower(notation) != name) {
        notationVal = " <"  notation ">"
    }
    argumentLine += 1
    addParamLine("arg", name modifierVal choicesVal notationVal, descVal)
}

function parseCommand(words1, descVal) {
    split("", names)
    prevComma = 1
    for (i in words1) {
        word = words1[i]
        comma = gsub(/,$/, "", word)
        if (prevComma != 0 && match(word, /^([a-z0-9]+[A-Za-z0-9_:.-]*|-[A-Za-z0-9_.-]+)$/)) {
            if (match(tolower(word), RE_SKIP_SBUCOMMAND)) {
                return
            }
            if (index(EXISTS_SUBCOMMANDS, "," word ",") > 0) {
                continue
            }
            if (match(word, RE_SHADOW_COMMAND)) {
                names[length(names) + 1] = word "_"
            } else {
                names[length(names) + 1] = word
            }
            EXISTS_SUBCOMMANDS = EXISTS_SUBCOMMANDS word "," 
        } else {
            break
        }
        prevComma = comma
    }
    if (length(names) > 1 && length(names[1]) < 2) {
        word = names[1]
        names[1] = names[2]
        names[2] = word

    }
    if (length(names) > 0) {
        addCommandLine(join(names, " "), descVal)
    }
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
    item = trim(item)
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

function addParamLine(kind, text, descVal) {
    nextParam = 1
    if (paramLineNum > 0) {
        prevKind = paramLines[paramLineNum, 1]
        if (kind == prevKind) {
            prevText = paramLines[paramLineNum, 2]
            textIdx = index(text, prevText)
            if (textIdx == 1 && match(substr(text, length(prevText) + 1), /^(|\*|-N)$/)) {
                nextParam = 0
            }
        } else if (kind == "option" && prevKind == "flag") {
            prevText = paramLines[paramLineNum, 2]
            if (!match(prevText, /-$/) && match(text, "^" prevText "($| |\\[|-$|- |-\\[)")) {
                nextParam = 0
            }
        } else if (kind == "flag" && prevKind == "option") {
            prevText = paramLines[paramLineNum, 2]
            if (!match(text, /-$/) && match(prevText, "^" text "($| |\\[|-$|- |-\\[)")) {
                return
            }
        }
    }
    paramLineNum = paramLineNum + nextParam
    paramLines[paramLineNum, 1] = kind
    paramLines[paramLineNum, 2] = text
    paramLines[paramLineNum, 3] = descVal
    bodyLen = length(text) + length(kind) + 4
    if (length(descVal) > 0 && bodyLen < paramLineMaxWidth && paramLineWidth < bodyLen) {
        paramLineWidth = bodyLen
    }
}

function addCommandLine(text, descVal) {
    commandLineNum = commandLineNum + 1
    commandLines[commandLineNum, 1] = text
    commandLines[commandLineNum, 2] = descVal
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

function extractName(input,     result, len, idx, end, last) {
    if (match(input, /[0-9a-zA-Z.:_-]+/)) {
        result = substr(input, RSTART, RLENGTH)
        return takeTailEllipsis(result)
    }
}

function extractDesc(result, input) {
    idx = index(input, " #")
    if (idx == 0) {
        idx = length(input) + 1
    }
    text = substr(input, 0, idx)
    result[1] = trim(text)
    result[2] = idx + 1
}

function splitWords(input, words, kind) {
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
        } else if (ch == "," && match(chars[i+1], /^(\s|$)/)) {
            if (kind == "command") {
                word = word ch
            }
        } else if (ch == "#" && length(word) == 0) {
            if (length(balances) == 0) {
                if (length(word) != 0) {
                    words[length(words)+1] = word;
                    word = ""
                }
                return i
            } else {
                word = word ch
            }
        } else if (ch == "'") {
            idx = index(substr(input, i + 1), "'")
            if (idx > 0) {
                word = word substr(input, i, idx + 1)
                i = i + idx
            } else {
                words[length(words)+1] = word substr(input, i);
                word = ""
                return length(input) + 1
            }
        } else if (index(PAIRS_OPEN, ch) > 0) {
            balances = balances ch
            word = word ch
        } else if (index(PAIRS_CLOSE, ch) > 0) {
            if (substr(balances, length(balances), 1) == PAIRS[ch]) {
                balances = substr(balances, 1, length(balances) - 1)
            }
            word = word ch
        } else if (ch == "\\") {
        } else {
            word = word ch
        }
    }
    if (length(word) > 0) {
        words[length(words)+1] = word;
        word = ""
    }
    return length(input) + 1
}

function longNameToValueName(val) {
    gsub(/^-{1,2}/, "", val)
    return toupper(val)
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