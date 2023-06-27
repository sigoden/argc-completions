BEGIN {
    split(RAW_ARGS, args, "###")
    split("", TABLE)
    split("", EXIST_OPTION_NAMES)
    TABLE_SIZE = length(args)
    SEP_INDEX = 0
    for (i in args) {
        arg = args[i]
        if (arg == ";;") {
            SEP_INDEX = i
        }
        split(arg, argParts, ";")
        name = argParts[1]
        notation = ""
        if (match(name, /\(.*\)$/)) {
            notation = substr(name, RSTART + 1, RLENGTH - 2)
            name = substr(name, 1, RSTART - 1)
        }
        choice = argParts[2]
        desc = argParts[3]
        split("", values)
        TABLE[i, 1] = name
        TABLE[i, 2] = notation
        TABLE[i, 3] = choice
        TABLE[i, 4] = desc
    }
    if (SEP_INDEX == 0)  {
        SEP_INDEX = TABLE_SIZE + 1
    }
}
{
    if (KIND == "option" && index($0, "option # ") == 1) {
        if (SEP_INDEX > 1) {
            editOption($0)
        }
    } else if (KIND == "argument" && index($0, "argument # ") == 1) {
        if (SEP_INDEX > 1) {
            editArgument($0)
        }
    } else {
        print $0
    }
}
END {
    for (i = SEP_INDEX + 1; i <= TABLE_SIZE; i++) {
        name = TABLE[i, 1] 
        notation = TABLE[i, 2] 
        choice = TABLE[i, 3] 
        desc = TABLE[i, 4] 
        if (KIND == "option") {
            print "option # " name " " notation " # " desc " # " choice
        } else if (KIND == "argument") {
            print "argument # " name " # " desc " # " choice
        }
    }
}


function editOption(line) {
    option = substr(line, 9)
    split(option, parts, " #")
    optionBody = parts[1] " " 
    optionDesc = parts[2] " " 
    optionChoice = parts[3]
    optionName = extractOptionName(optionBody)
    for (i = 1; i < SEP_INDEX; i++) {
        name = TABLE[i, 1]
        if (name == "") {
            continue
        }
        if (optionName ~ " " name "[^A-Za-z0-9_-]") {
            notation = TABLE[i, 2]
            choice = TABLE[i, 3]
            desc = TABLE[i, 4]
            if (notation == "" && choice == "" && desc == "") {
                return
            }
            if (EXIST_OPTION_NAMES[optionName] == 1) {
                return
            }
            if (notation != "") {
                optionBody = optionName notation " "
            }
            if (desc != "") {
                optionDesc = " " desc " "
            }
            if (choice != "") {
                optionChoice = " " choice
            }
            print "option #" optionBody "#" optionDesc "#" optionChoice
            EXIST_OPTION_NAMES[optionName] = 1
            return
        }
    }
    print line
}

function editArgument(line) {
    argument = substr(line, 11)
    split(argument, parts, " #")
    argumentName = parts[1] " " 
    argumentDesc = parts[2] " " 
    argumentChoice = parts[3]
    for (i = 1; i < SEP_INDEX; i++) {
        name = TABLE[i, 1]
        if (name == "") {
            continue
        }
        nameIdx = index(argumentName, name)
        if (nameIdx > 0) {
            chekChars = substr(argumentName, nameIdx - 1, 1) substr(argumentName, nameIdx + length(name), 1)
            if (!match(chekChars, /[A-Za-z0-9_\|-]/)) {
                notation = TABLE[i, 2]
                choice = TABLE[i, 3]
                desc = TABLE[i, 4]
                if (notation == "" && choice == "" && desc == "") {
                    return
                }
                if (notation != "") {
                    argumentName = notation
                }
                if (desc != "") {
                    argumentDesc = " " desc " "
                }
                if (choice != "") {
                    argumentChoice = " " choice
                }
                print "argument #" argumentName "#" argumentDesc "#" argumentChoice
                return
            }
        }
    }
    print line
}

function extractOptionName(optionBody) {
    split(optionBody, hyphenParts, " -")
    len = length(hyphenParts)
    idx = (len - 1) * 2
    for (i in hyphenParts) {
        if (i == len) {
            idx = idx + index(hyphenParts[i], " ")
        } else {
            idx = idx + length(hyphenParts[i])
        }
    }
    return substr(optionBody, 1, idx)
}