#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --typecheck             Typecheck lenses.
# @flag -b --backup                When files are changed, preserve the originals in a file with extension '.augsave'
# @flag -n --new                   Save changes in files with extension '.augnew', do not modify the original files
# @option -r --root                Use directory ROOT as the root of the filesystem.
# @option -I --include <DIR>       Add DIR to the module loadpath.
# @option -t --transform <XFM>     Add a file transform; uses the 'transform' command syntax, e.g. "-t 'Fstab incl /etc/fstab.bak'".
# @option -l --load-file <FILE>    Load an individual FILE into the tree.
# @option -f --file                Read commands from FILE.
# @flag -i --interactive           Read commands from the terminal.
# @flag -e --echo                  When reading commands from a file via stdin, echo the commands before printing their output.
# @flag -s --autosave              Automatically save all changes at the end of the session.
# @flag -S --nostdinc              Do not search any of the default directories for modules.
# @flag -L --noload                Do not load any files on startup.
# @flag -A --noautoload            Do not load any lens modules, and therefore no files, on startup.
# @flag --span                     Load span positions for nodes in the tree, as they relate to the original file.
# @flag --timing                   After executing each command, print how long, in milliseconds, executing the command took.
# @flag --version                  Print version information and exit.

# {{ augtool load
# @cmd Load files according to the transforms in "/augeas/load".
load() {
    :;
}
# }} augtool load

# {{ augtool quit
# @cmd Exit the program
quit() {
    :;
}
# }} augtool quit

# {{ augtool retrieve
# @cmd Transform tree at PATH back into text using lens LENS and store the resulting string at NODE_OUT.
# @arg lens!
# @arg node_in!
# @arg path!
# @arg node_out!
retrieve() {
    :;
}
# }} augtool retrieve

# {{ augtool save
# @cmd Save all pending changes to disk.
save() {
    :;
}
# }} augtool save

# {{ augtool store
# @cmd Parse NODE using LENS and store the resulting tree at PATH.
# @arg lens!
# @arg node!
# @arg path!
store() {
    :;
}
# }} augtool store

# {{ augtool transform
# @cmd Add a transform for FILE using LENS.
# @arg lens!
# @arg filter!
# @arg file!
transform() {
    :;
}
# }} augtool transform

# {{ augtool load-file
# @cmd Load a specific FILE, automatically determining the proper lens from the information in /augeas/load; without further intervention, the lens that would oridnarily be used for this file will be used.
# @arg file!
load-file() {
    :;
}
# }} augtool load-file

# {{ augtool dump-xml
# @cmd Print entries in the tree as XML.
# @arg path
dump-xml() {
    :;
}
# }} augtool dump-xml

# {{ augtool get
# @cmd Print the value associated with PATH
# @arg path!
get() {
    :;
}
# }} augtool get

# {{ augtool label
# @cmd Get and print the label associated with PATH
# @arg path!
label() {
    :;
}
# }} augtool label

# {{ augtool ls
# @cmd List the direct children of PATH
# @arg path!
ls() {
    :;
}
# }} augtool ls

# {{ augtool match
# @cmd Find all paths that match PATTERN.
# @arg pattern!
# @arg value
match() {
    :;
}
# }} augtool match

# {{ augtool print
# @cmd Print entries in the tree.
# @arg path
print() {
    :;
}
# }} augtool print

# {{ augtool span
# @cmd Print the name of the file from which the node PATH was generated, as well as information about the positions in the file corresponding to the label, the value, and the entire node.
# @arg path!
span() {
    :;
}
# }} augtool span

# {{ augtool clear
# @cmd Set the value for PATH to NULL.
# @arg path!
clear() {
    :;
}
# }} augtool clear

# {{ augtool clearm
# @cmd Clear multiple nodes values in one operation.
# @arg base!
# @arg sub!
clearm() {
    :;
}
# }} augtool clearm

# {{ augtool ins
# @cmd Insert a new node with label LABEL right before or after PATH into the tree.
# @arg label!
# @arg where!
# @arg path!
ins() {
    :;
}
# }} augtool ins

# {{ augtool insert
# @cmd Alias of ins.
# @arg label!
# @arg where!
# @arg path!
insert() {
    :;
}
# }} augtool insert

# {{ augtool mv
# @cmd Move node SRC to DST.
# @arg src!
# @arg dst!
mv() {
    :;
}
# }} augtool mv

# {{ augtool move
# @cmd Alias of mv.
# @arg src!
# @arg dst!
move() {
    :;
}
# }} augtool move

# {{ augtool cp
# @cmd Copy node SRC to DST.
# @arg src!
# @arg dst!
cp() {
    :;
}
# }} augtool cp

# {{ augtool copy
# @cmd Alias of cp.
# @arg src!
# @arg dst!
copy() {
    :;
}
# }} augtool copy

# {{ augtool rename
# @cmd Rename the label of all nodes matching SRC to LBL.
# @arg src!
# @arg lbl!
rename() {
    :;
}
# }} augtool rename

# {{ augtool rm
# @cmd Delete PATH and all its children from the tree
# @arg path!
rm() {
    :;
}
# }} augtool rm

# {{ augtool set
# @cmd Associate VALUE with PATH.
# @arg path!
# @arg value!
set() {
    :;
}
# }} augtool set

# {{ augtool setm
# @cmd Set multiple nodes in one operation.
# @arg base!
# @arg sub!
# @arg value
setm() {
    :;
}
# }} augtool setm

# {{ augtool touch
# @cmd Create PATH with the value NULL if it is not in the tree yet.
# @arg path!
touch() {
    :;
}
# }} augtool touch

# {{ augtool defnode
# @cmd Define the variable NAME to the result of evaluating EXPR, which must be a nodeset.
# @arg name!
# @arg expr!
# @arg value
defnode() {
    :;
}
# }} augtool defnode

# {{ augtool defvar
# @cmd Define the variable NAME to the result of evaluating EXPR.
# @arg name!
# @arg expr!
defvar() {
    :;
}
# }} augtool defvar

command eval "$(argc --argc-eval "$0" "$@")"