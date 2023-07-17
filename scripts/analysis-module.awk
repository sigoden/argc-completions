#!/usr/bin/env awk

# Analsys utils/_modules/*.sh

BENGIN {
    split("", LINES)
    split("", FUNCS)
    LIEN_NUM = 0
    FUNC_NUM = 0
}
{
    LINE_NUM = LINE_NUM + 1
    LINES[LINE_NUM] = $0
}
END {
    for (i = 1; i <= LINE_NUM; i++) {
        line = LINES[i]
        if (match(line, /^_module_\w+\(\) \{/)) {
            fnName = substr(line, 1, RLENGTH - 4);
            fnEntry = i
            fnZone = 1
            fnDeps = ""
        } else if (match(line, /^\}$/) && fnZone == 1) {
            FUNC_NUM = FUNC_NUM + 1
            FUNCS[FUNC_NUM, 1] = fnName
            FUNCS[FUNC_NUM, 2] = fnEntry
            FUNCS[FUNC_NUM, 3] = i
            FUNCS[FUNC_NUM, 4] = fnDeps
            fnZone = 0
        } else if (fnZone == 1) {
            idx = 1
            while (match(substr(line, idx), /\<_module_\w+\>/)) {
                depFnName = substr(line, idx + RSTART - 1, RLENGTH)
                if (fnDeps == "") {
                    fnDeps = depFnName
                } else {
                    fnDeps = fnDeps " " depFnName
                }
                idx = idx + RSTART + RLENGTH
            }
        }
    }
    for (i = 1; i <= FUNC_NUM; i++) {
        print FUNCS[i, 1] ";" FUNCS[i, 2] ";" FUNCS[i, 3] ";" FUNCS[i, 4]
    }
}