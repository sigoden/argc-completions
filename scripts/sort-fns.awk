#!/usr/bin/env awk

# Sort fn names of the src file

BEGIN {
    split("", LINES)
    split("", FUNCS)
    split("", FUNC_NAME_NUMS)
    split("", FUNC_NAMES)
    FUNC_NUM = 0
    LINE_NUM = 0
    LAST_PATCH_FN_NUM = 0
}

{
    line = $0
    LINE_NUM += 1
    LINES[LINE_NUM] = line
    if (match(line, /^(\w+)\(\)\s*\{/, arr)) {
        fnName = arr[1]
        fnEntry = LINE_NUM
        fnZone = 1
        if (!match(fnName, /^_patch/)) {
            if(LAST_PATCH_FN_NUM == 0) {
                LAST_PATCH_FN_NUM = LINE_NUM - 1
            }
            FUNC_NAMES[length(FUNC_NAMES) + 1] = fnName
        }
    } else if (match(line, /^\}$/) && fnZone == 1) {
        FUNC_NUM = FUNC_NUM + 1
        FUNCS[FUNC_NUM, 1] = fnName
        FUNCS[FUNC_NUM, 2] = fnEntry
        FUNCS[FUNC_NUM, 3] = LINE_NUM 
        FUNC_NAME_NUMS[fnName] = FUNC_NUM
        fnZone = 0
        # print FUNCS[FUNC_NUM, 1] ":" fnEntry ":" LINE_NUM 
    }
}

END {
    patchCode = ""
    if (LAST_PATCH_FN_NUM == 0) {
        patchLineNum = LINE_NUM
    } else {
        patchLineNum = LAST_PATCH_FN_NUM
    }
    
    for (i = 1; i <= patchLineNum; i++) {
        patchCode = patchCode "\n" LINES[i]
    }
    gsub(/(^\n+|\n+$)/, "", patchCode)
    print patchCode

    asort(FUNC_NAMES)
    for (i in FUNC_NAMES) {
        print ""
        funcNum = FUNC_NAME_NUMS[FUNC_NAMES[i]]
        for (i = FUNCS[funcNum, 2]; i <= FUNCS[funcNum, 3]; i++) {
            print LINES[i]
        }
    }
}
