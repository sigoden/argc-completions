BEGIN {
    split("", LINES)
    LINE_NUM = 0
}
{
    LINE_NUM += 1
    LINES[LINE_NUM] = $0
}
END {
    for (i = 1; i <= LINE_NUM; i++) {
        noPrint = 0
        line = LINES[i]
        if (i == 1 && !match(tolower(line), /^usage/)) {
            line = "usage: " line
        } else if (match(line, /^(Arguments|Positionals):/)) {
            zone = "argument"
        } else if (match(line, /^Commands:/)) {
            zone = "command"
        } else if (match(line, /Options:/)) {
            zone = "option"
        } else if (match(line, /^[A-Z]/)) {
            zone = ""
        } else if (match(line, /^  [a-z]/) && zone == "argument") {
            noPrint = 1
            split("", obj)
            process(obj, i)
            i = obj["index"]
            choices = obj["choices"]
            if (choices) {
                choices = " [choices: " choices "]"
            }
            print "  " obj["main"] "    " obj["description"] choices
        } else if (match(line, /^  [a-z]/) && zone == "command") {
            noPrint = 1
            split("", obj)
            process(obj, i)
            i = obj["index"]
            split(obj["main"], words, " ")
            cmdNames = ""
            for (k in words) {
                if (match(words[k], /^[a-z]/)) {
                    cmdNames = words[k]
                } else {
                    break
                }
            }
            if (obj["aliases"]) {
                cmdNames = cmdNames ", " obj["aliases"]
            }
            print "  " cmdNames "    " obj["description"]
        } else if (match(line, /^\s+-/) && zone == "option") {
            noPrint = 1
            split("", obj)
            process(obj, i)
            i = obj["index"]
            notation = ""
            if (obj["kind"] == "array") {
                notation = " string..."
            } else if (obj["kind"] == "boolean") {
            } else if (obj["kind"]) {
                notation = " " obj["kind"]
            } else {
                notation = " string"
            }
            choices = obj["choices"]
            if (choices) {
                choices = " [choices: " choices "]"
            }
            print "  " obj["main"] notation "    " obj["description"] choices
        }
        if (noPrint == 0) {
            print line
        }
    }
}

function process(output, i,         idx, arr, arr2, arr3, meta) {
    combineDescription(output, i)
    combinedLine = output["combinedLine"]
    combinedLine = trim(combinedLine)
    description = ""
    if (match(combinedLine, / {2,}/)) {
        output["main"] = substr(combinedLine, 1, RSTART - 1)
        description = substr(combinedLine, RSTART + RLENGTH)
    } else {
        output["main"] = combinedLine
        return
    }
    # print ">> description: " description 
    if (match(description, /( \[[^]]+\])+\s*$/, arr))  {
        output["description"] = trim(substr(description, 1, RSTART - 1))
        meta = substr(description, RSTART + 1)
        # print ">> meta: " meta
        while (match(meta, /^\s*\[([^\]]+)\]/, arr2)) {
            meta = substr(meta, RSTART + RLENGTH)
            if (match(arr2[1], /: /)) {
                output[substr(arr2[1], 1, RSTART - 1)] = substr(arr2[1], RSTART + RLENGTH)
            } else {
                output["kind"] = arr2[1]
            }
        }
    } else {
        output["description"] = description
    }
}


function combineDescription(output, i,          k) {
    combinedLine = LINES[i]
    output["index"] = i
    for (j = i + 1; j <= LINE_NUM; j++) {
        line = LINES[j]
        if (match(line, /^ {8,}/) || match(line, /^\S/)) {
            combinedLine = combinedLine " " trim(line)
        } else {
            break
        }
    }
    output["index"] = j - 1
    output["combinedLine"] = combinedLine
}

function trim(input) {
    gsub(/^[[:space:]]+|[[:space:]]+$/,"", input)
    return input
}