#!/usr/bin/env awk

# Format src file

BEGIN {
    split("", LINES)
    split("", FUNCS)
    split("", FUNC_NAME_NUMS)
    split("", FUNC_NAMES)
    PATCH_HELP_FUNC_NUM = 0
    PATCH_TABLE_FUNC_NUM = 0
    FUNC_NUM = 0
    LINE_NUM = 0
    HEADER_LINE_NUM = -1
    INDENT_SIZE = 4
    IS_PATCH_TABLE = 0
    # DEBUG_SYMBOL = " <<<"
}

{
    line = $0
    LINE_NUM += 1
    LINES[LINE_NUM] = line
    if (match(line, /^(\w+)\(\)\s*\{/, arr)) {
        fnName = arr[1]
        fnEntry = LINE_NUM
        fnZone = 1
        if (HEADER_LINE_NUM == -1) {
            HEADER_LINE_NUM = LINE_NUM - 1
        }
        if (!match(fnName, /^_patch/)) {
            FUNC_NAMES[length(FUNC_NAMES) + 1] = fnName
        }
    } else if (match(line, /^\}$/) && fnZone == 1) {
        FUNC_NUM = FUNC_NUM + 1
        FUNCS[FUNC_NUM, 1] = fnName
        FUNCS[FUNC_NUM, 2] = fnEntry
        FUNCS[FUNC_NUM, 3] = LINE_NUM 
        FUNC_NAME_NUMS[fnName] = FUNC_NUM
        fnZone = 0
        if (fnName == "_patch_help") {
            PATCH_HELP_FUNC_NUM = FUNC_NUM
        } else if (fnName == "_patch_table") {
            PATCH_TABLE_FUNC_NUM = FUNC_NUM
        }
        # print FUNCS[FUNC_NUM, 1] ":" fnEntry ":" LINE_NUM 
    }
}

END {
    if (HEADER_LINE_NUM > 0) {
        printLines(1, HEADER_LINE_NUM)
    }

    if (PATCH_HELP_FUNC_NUM > 0) {
        beginFn = FUNCS[PATCH_HELP_FUNC_NUM, 2]
        endFn = FUNCS[PATCH_HELP_FUNC_NUM, 3]
        print LINES[beginFn]
        printPatchFn(beginFn + 1, endFn - 1, 1)
        print LINES[endFn]
    }

    if (PATCH_TABLE_FUNC_NUM > 0) {
        if (PATCH_HELP_FUNC_NUM > 0) { print "" }
        beginFn = FUNCS[PATCH_TABLE_FUNC_NUM, 2]
        endFn = FUNCS[PATCH_TABLE_FUNC_NUM, 3]
        print LINES[beginFn]
        IS_PATCH_TABLE = 1
        printPatchFn(beginFn + 1, endFn - 1, 1)
        IS_PATCH_TABLE = 0
        print LINES[endFn]
    }
    asort(FUNC_NAMES)
    for (i in FUNC_NAMES) {
        print ""
        funcNum = FUNC_NAME_NUMS[FUNC_NAMES[i]]
        printLines(FUNCS[funcNum, 2], FUNCS[funcNum, 3])
    }
}

function printPatchFn(begin, end, indentLevel,          i, arr, header, footer, zonesNum, zones, zoneNames, \
                                                        sortedZoneNames, zoneNameNums, elseZoneNum, zoneNum, indent, indentString) {
    header = -1
    footer = -1
    zonesNum = 0
    split("", zones)
    split("", zoneNames)
    split("", zoneNameNums)
    elseZoneNum = 0
    indent = indentLevel * INDENT_SIZE
    indentString = repeat(" ", indent)
    split("", matchCmdsResult)

    for (i = begin; i <= end; i++) {
        line = LINES[i]
        if (matchCmds(matchCmdsResult, i, indentString)) {
            if (matchCmdsResult[4] == "elif") {
                zones[zonesNum, 2] = i - 1
            }
            zonesNum = zonesNum + 1
            zoneNames[zonesNum] = matchCmdsResult[1]
            zoneNameNums[matchCmdsResult[1]] = zonesNum
            zones[zonesNum, 1] = matchCmdsResult[2]
            zones[zonesNum, 3] = matchCmdsResult[3]
            if (header == -1) {
                header = i - 1
            }
        } else if(match(line, /^( +)else\s*$/, arr) && arr[1] == indentString && zonesNum > 0) {
            zones[zonesNum, 2] = i - 1
            zonesNum = zonesNum + 1
            zones[zonesNum, 1] = i + 1
            elseZoneNum = zonesNum
        } else if(match(line, /^( +)fi\s*$/, arr) && arr[1] == indentString && zonesNum > 0) {
            zones[zonesNum, 2] = i - 1
            footer = i
            break
        }
    }

    if (zonesNum == 0) {
        header = end
        footer = end + 1
    } else if (!zones[zonesNum, 2]) {
        zones[zonesNum, 2] = end
        footer = end + 1
    }

    sortPrintLines(begin, header)
    asort(zoneNames, sortedZoneNames, "sortCmd")
    for (i in sortedZoneNames) {
        zoneNum = zoneNameNums[sortedZoneNames[i]]
        exprType = "elif"
        if (int(i) == 1) {
            exprType = "if"
        }
        printCmds(zones[zoneNum, 3], exprType, indentString)
        printPatchFn(zones[zoneNum, 1], zones[zoneNum, 2], indentLevel + 1)
    }
    if (elseZoneNum > 0) {
        print indentString "else"
        printPatchFn(zones[elseZoneNum, 1], zones[elseZoneNum, 2], indentLevel + 1)
    }
    if (footer <= end) {
        printPatchFn(footer, end, indentLevel)
    }
}

function matchCmds(output, lineNum, indentString,         i, j, line, cmds, arr) {
    line = LINES[lineNum]
    if (match(line, /^( +)(if|elif) \[\[\s+"\$\*"\s+==\s+"([^\x22]+)"\*?\s+\]\]/, arr) && arr[1] == indentString) {
        cmdsLine = ""
        exprType = arr[2]
        for (i = lineNum; lineNum <= LINE_NUM; i++) {
            line = LINES[i]
            if (match(line, / then\s*$/)) {
                cmdsLine = cmdsLine line
                break
            } else if (match(line, /\s+\\$/)) {
                cmdsLine = cmdsLine line
            } else {
                break
            }
        }
        gsub(/\s+\\\s+/, " ", cmdsLine)
        split(cmdsLine, rawCmds, /\|\|/)
        split("", cmds)
        for (j in rawCmds) {
            if (match(rawCmds[j], /\[\[\s+"\$\*"\s+==\s+"([^\x22]+)"(\*)?\s+\]\]/, arr)) {
               cmds[length(cmds)+1] = arr[1] arr[2]
            }
        }
        if (length(cmds) > 0) {
            asort(cmds)
            output[1] = cmds[1]
            output[2] =  i + 1
            output[3] = join(cmds, ":")
            output[4] = exprType
        }
        return 1
    }
    return 0
}

function printCmds(rawCmds, exprType, indentString,           i, cmds, prefix, prefix2) {
    split(rawCmds, cmds, ":")
    cmdsLen = length(cmds)
    prefix = indentString exprType " "
    if (exprType == "if") {
        prefix2 = indentString "|| "
    } else {
        prefix2 = indentString "  || "
    }
    if (cmdsLen == 1) {
        print prefix printCmdExpr(cmds[1]) "; then" DEBUG_SYMBOL
    } else {
        for (i in cmds) {
            if (int(i) == 1) {
                print prefix printCmdExpr(cmds[i]) " \\" DEBUG_SYMBOL
            } else {
                print prefix2 printCmdExpr(cmds[i]) " \\"
            }
        }
        print indentString "; then"
    }
}

function printCmdExpr(cmd) {
    cmdLen = cmdLen
    asterisk = "" 
    if (substr(cmd, length(cmd)) == "*") {
        cmd = substr(cmd, 1, length(cmd) - 1)
        asterisk = "*"
    }
    return "[[ \"$*\" == \"" cmd "\"" asterisk " ]]"
}

function sortCmd(i1, v1, i2, v2,    v1Len, v2Len) {
    v1Len = length(v1)
    v2Len = length(v2)
    if (match(v1, /\*$/) && v1Len <= v2Len && index(v2, substr(v1, 1, v1Len - 1)) > 0) {
        return 1
    }
    if (match(v2, /\*$/) && v2Len <= v1Len && index(v1, substr(v2, 1, v2Len - 1)) > 0) {
        return 0
    }
    if (v1 < v2) {
        return -1
    } else if (v1 == v2) {
        return 0
    } else {
        return 1
    }
}

function sortPrintLines(begin, end,         i, j, k, line, indentString, paramArr, matchArr) {
    if (IS_PATCH_TABLE) {
        for (i = begin; i <= end; i++) {
            line = LINES[i]
            if (match(line, /^(\s+)(_patch_table_(dedup_options|edit_options|edit_commands))\s+\\$/, matchArr)) {
                print line DEBUG_SYMBOL
                indentString = matchArr[1] repeat(" ", INDENT_SIZE)
                split("", paramArr)
                for (j = i + 1; j <= end; j++) {
                    line = LINES[j]
                    if (match(line, /^\s+\x27([^\x27]+)\x27\s*\\$/, matchArr) && matchArr[1] != ";;") {
                        paramArr[length(paramArr)+1] = matchArr[1]
                        continue
                    } else if (match(line, /^\s+\x22([^\x22]+)\x22\s*\\$/, matchArr) && matchArr[1] != ";;") {
                        paramArr[length(paramArr)+1] = matchArr[1]
                        continue
                    } else {
                        break
                    }
                }
                if (length(paramArr) > 0) {
                    i = j - 1
                    asort(paramArr)
                    for (k in paramArr) {
                        print indentString "\x27" paramArr[k] "\x27 \\" DEBUG_SYMBOL
                    }
                }
            } else {
                print line
            }
        }
    } else {
        printLines(begin, end)
    }
}

function printLines(from, to,       i) {
    if (from <= 0) {
        from = 1
    }
    if (to > LINE_NUM) {
        to = LINE_NUM
    }
    for (i = from; i <= to; i++) {
        print LINES[i]
    }
}

function repeat(value, count,       i, output) {
    for (i = 1; i <= count; i++) {
        output = output value
    }
    return output
}

function join(array, sep,       result, i) {
    result = array[1]
    for (i = 2; i <= length(array); i++)
        result = result sep array[i]
    return result
}