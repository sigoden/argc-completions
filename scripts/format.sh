#!/usr/bin/env bash

set -e

# @describe Format src script
# @flag -p --print          Print formated script, don't edit file in place
# @flag -c --check          Is the format ok?
# @arg cmd!

main() {
    ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"

    cmd_file="${argc_cmd}.sh"
    src_file="$ROOT_DIR/src/$cmd_file"
    comp_file="$ROOT_DIR/completions/$cmd_file"

    if [[ ! -f "$src_file" ]]; then
        echo "Not found src/$cmd_file"
        exit 1
    fi

    if [[ ! -f "$comp_file" ]]; then
        echo "Not found completions/$cmd_file"
        exit 1
    fi

    if [[ "$OS" == "Windows_NT" ]]; then
        comp_file="$(cygpath -w "$comp_file")"
    fi

    json="$(argc --argc-export "$comp_file")"
    commands="$(echo "$json" | cmd="$argc_cmd" yq '
        .path = env(cmd) |
        .. | select(has("subcommands")) | 
        .path = (parent | parent | .path) + " " + .name | 
        .path'
    )"
    options="$(echo "$json" | cmd="$argc_cmd" yq '
        .path = env(cmd) |
        .. | select(has("subcommands")) | 
        .path = (parent | parent | .path) + " " + .name | 
        .path as $path |
        .options[] | $path + " " + .option_names[0]'
    )"
    choice_fns="$(cat "$comp_file" | extract_choice_fns)"
    content="$({
        echo "__COMMANDS__";
        echo "$commands";
        echo "__OPTIONS__";
        echo "$options";
        echo "__CHOICE_FNS__";
        echo "$choice_fns";
        echo "__SRC__";
        cat "$src_file";
    })"

    output="$(echo "$content" | format)"
    if [[ -n "$argc_print" ]]; then
        echo "$output"
    elif [[ -n "$argc_check" ]]; then
        echo "$output" | diff -u "$src_file" -
    else
        echo "$output" > "$src_file"
    fi
}

format() {
    gawk '
BEGIN {
    split("", COMMANDS)
    COMMAND_LEN = 0
    split("", OPTIONS)
    OPTION_LEN = 0
    split("", CHOICE_FNS)
    CHOICE_FN_LEN = 0
    split("", LINES)
    LINE_NUM = 0
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
    if ($0 == "__COMMANDS__") {
        kind = "commands"
        next
    } else if ($0 == "__OPTIONS__") {
        kind = "options"
        next
    } else if ($0 == "__CHOICE_FNS__") {
        kind = "choice_fns"
        next
    } else if ($0 == "__SRC__") {
        kind = "src"
        next
    }
    if (kind == "commands") {
        COMMAND_LEN += 1
        COMMANDS[$0] = COMMAND_LEN
    } else if (kind == "options") {
        OPTION_LEN += 1
        OPTIONS[$0] = OPTION_LEN
    } else if (kind == "choice_fns") {
        CHOICE_FN_LEN += 1
        CHOICE_FNS[$0] = CHOICE_FN_LEN
    } else if (kind == "src") {
        LINE_NUM += 1
        LINES[LINE_NUM] = $0
    }
}
END {

    for (i = 1; i <= LINE_NUM; i++) {
        line = LINES[i]
        if (match(line, /^(\w+)\(\)\s*\{\s*$/, arr)) {
            fnName = arr[1]
            fnEntry = i
            fnZone = 1
            if (HEADER_LINE_NUM == -1) {
                HEADER_LINE_NUM = i - 1
            }
            if (!match(fnName, /^_patch/)) {
                FUNC_NAMES[length(FUNC_NAMES) + 1] = fnName
            }
        } else if (match(line, /^\}\s*$/) && fnZone == 1) {
            FUNC_NUM = FUNC_NUM + 1
            FUNCS[FUNC_NUM, 1] = fnName
            FUNCS[FUNC_NUM, 2] = fnEntry
            FUNCS[FUNC_NUM, 3] = i 
            FUNC_NAME_NUMS[fnName] = FUNC_NUM
            fnZone = 0
            if (fnName == "_patch_help") {
                PATCH_HELP_FUNC_NUM = FUNC_NUM
            } else if (fnName == "_patch_table") {
                PATCH_TABLE_FUNC_NUM = FUNC_NUM
            }
           debug("funcs:" FUNCS[FUNC_NUM, 1] ":" fnEntry ":" i)
        }
    }

    if (HEADER_LINE_NUM > 0) {
        printLines(1, HEADER_LINE_NUM)
    }

    if (PATCH_HELP_FUNC_NUM > 0) {
        beginFn = FUNCS[PATCH_HELP_FUNC_NUM, 2]
        endFn = FUNCS[PATCH_HELP_FUNC_NUM, 3]
        print LINES[beginFn]
        printPatchFn(beginFn + 1, endFn - 1, 1, CMD_NAME)
        print LINES[endFn]
    }

    if (PATCH_TABLE_FUNC_NUM > 0) {
        if (PATCH_HELP_FUNC_NUM > 0) { print "" }
        beginFn = FUNCS[PATCH_TABLE_FUNC_NUM, 2]
        endFn = FUNCS[PATCH_TABLE_FUNC_NUM, 3]
        print LINES[beginFn]
        IS_PATCH_TABLE = 1
        printPatchFn(beginFn + 1, endFn - 1, 1, CMD_NAME)
        IS_PATCH_TABLE = 0
        print LINES[endFn]
    }
    asort(FUNC_NAMES, SORTED_FUNC_NAMES, "sortFunc")
    for (i in SORTED_FUNC_NAMES) {
        print ""
        funcNum = FUNC_NAME_NUMS[SORTED_FUNC_NAMES[i]]
        printLines(FUNCS[funcNum, 2], FUNCS[funcNum, 3])
    }
}

function printPatchFn(begin, end, indentLevel, cmdPaths,            i, arr, header, footer, zonesNum, zones, zoneNames, \
                                                                    sortedZoneNames, zoneNameNums, elseZoneNum, zoneNum, \
                                                                    indent, indentString) {
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

    sortPrintLines(begin, header, cmdPaths)
    asort(zoneNames, sortedZoneNames, "sortCmd")
    for (i in sortedZoneNames) {
        zoneNum = zoneNameNums[sortedZoneNames[i]]
        exprType = "elif"
        if (int(i) == 1) {
            exprType = "if"
        }
        printCmds(zones[zoneNum, 3], exprType, indentString)
        printPatchFn(zones[zoneNum, 1], zones[zoneNum, 2], indentLevel + 1, sortedZoneNames[i])
    }
    if (elseZoneNum > 0) {
        print indentString "else"
        printPatchFn(zones[elseZoneNum, 1], zones[elseZoneNum, 2], indentLevel + 1, cmdPaths)
    }
    if (footer <= end) {
        printPatchFn(footer, end, indentLevel, cmdPaths)
    }
}

function matchCmds(output, lineNum, indentString,         i, j, line, cmds, sortedCmds, arr) {
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
            asort(cmds, sortedCmds, "sortCmd")
            output[1] = sortedCmds[1]
            output[2] =  i + 1
            output[3] = join(sortedCmds, ":")
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

function sortPrintLines(begin, end, cmdPaths,           i, j, k, p, line, indentString, fnName, paramArr, matchArr, \
                                                        paramKey, paramKeyArr, sortedParamKeyArr) {
    if (IS_PATCH_TABLE) {
        for (i = begin; i <= end; i++) {
            line = LINES[i]
            if (match(line, /^(\s+)(_patch_table_(dedup_options|edit_options|edit_commands))\s+\\$/, matchArr)) {
                print line DEBUG_SYMBOL
                indentString = matchArr[1] repeat(" ", INDENT_SIZE)
                fnName = matchArr[2]
                
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
                    split("", paramKeyArr)
                    for (k in paramArr) {
                        paramKey = cmdPaths " " gensub(/^([^;(]+).*$/, "\\1", 1, paramArr[k])
                        paramKeyArr[paramKey] = k
                    }
                    if (match(fnName, /options$/)) {
                        asorti(paramKeyArr, sortedParamKeyArr, "sortOptionKey")
                    } else if (match(fnName, /commands$/)) {
                        asorti(paramKeyArr, sortedParamKeyArr, "sortCmdKey")
                    }
                    for (p in sortedParamKeyArr) {
                        paramKey = sortedParamKeyArr[p]
                        k = paramKeyArr[paramKey]
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

function sortFunc(i1, v1, i2, v2,    o1, o2) {
    o1 = CHOICE_FNS[v1]
    o2 = CHOICE_FNS[v2]
    debug("sortFunc:" v1 ":" o1 " vs " v2 ":" o2)
    return sortBase(o1, v1, o2, v2)
}

function sortCmd(i1, v1, i2, v2,    v1Len, v2Len, g1, g2, o1, o2) {
    v1Len = length(v1)
    v2Len = length(v2)
    g1 = gsub(/\*$/, "", v1)
    g2 = gsub(/\*$/, "", v2)
    if (g1 && v1Len <= v2Len && index(v2, substr(v1, 1, v1Len - 1)) > 0) {
        return 1
    }
    if (g2 && v2Len <= v1Len && index(v1, substr(v2, 1, v2Len - 1)) > 0) {
        return 0
    }
    o1 = COMMANDS[v1]
    o2 = COMMANDS[v2]
    debug("sortCmd:" v1 ":" o1 " vs " v2 ":" o2)
    return sortBase(o1, v1, o2, v2)
}

function sortOptionKey(i1, v1, i2, v2,    o1, o2) {
    o1 = OPTIONS[i1]
    o2 = OPTIONS[i2]
    debug("sortOptionKey:" i1 ":" o1 " vs " i2 ":" o2)
    return sortBase(o1, i1, o2, i2)
}

function sortCmdKey(i1, v1, i2, v2,    o1, o2) {
    o1 = COMMANDS[i1]
    o2 = COMMANDS[i2]
    debug("sortCmdKey:" i1 ":" o1 " vs " i2 ":" o2)
    return sortBase(o1, i1, o2, i2)
}

function sortBase(x1, y1, x2, y2) {
    if (!x1) { x1 = 999 }
    if (!x2) { x2 = 999 }
    if (x1 < x2) {
        return -1
    } else if (x1 > x2) {
        return 1
    } else {
        if (y1 < y2) {
            return -1
        } else if (y1 > y2) {
            return 1
        } else {
            return 0
        }
    }
}

function formatCmdPaths(name) {
    gsub(/\./, " ", name)
    gsub(/^[[:space:]]+|[[:space:]]+$/,"", name)
    return CMD_NAME " " name
}

function debug(msg) {
    # print ">>> " msg
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
'
}

extract_choice_fns() {
    gawk '
    BEGIN {
        VALUE_LEN = 0
        split("", VALUES)
        split("", DEDUP_VALUES)
        
    }
    {
        if (match($0, /^# @(option|arg).*\S+\[`(\S+)`\]/, arr)) {
            if (!DEDUP_VALUES[arr[2]]) {
                VALUE_LEN += 1
                VALUES[VALUE_LEN] = arr[2]
                DEDUP_VALUES[arr[2]] = 1
            }
        }
    }
    END {
        for (i in VALUES) {
            print VALUES[i]
        }
    }'
}

eval "$(argc --argc-eval "$0" "$@")"