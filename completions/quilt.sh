#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --trace               Runs the command in bash trace mode (-x).
# @option --quiltrc <file>    Use the specified configuration file instead of ~/.quiltrc (or /etc/quilt.quiltrc if ~/.quiltrc does not exist).
# @flag --version             Print the version number and exit immediately.

# {{ quilt add
# @cmd Add one or more files to the topmost or named patch.
# @option -P <patch>    Patch to add files to.
# @arg file*
add() {
    :;
}
# }} quilt add

# {{ quilt annotate
# @cmd Print an annotated listing of the specified file showing which patches modify which lines.
# @option -P <patch>    Stop checking for changes at the specified rather than the topmost patch.
# @arg file
annotate() {
    :;
}
# }} quilt annotate

# {{ quilt applied
# @cmd Print a list of applied patches, or all patches up to and including the specified patch in the file series.
# @arg patch
applied() {
    :;
}
# }} quilt applied

# {{ quilt delete
# @cmd Remove the specified or topmost patch from the series file.
# @flag -n          Delete the next patch after topmost, rather than the specified or topmost patch.
# @flag -r          Remove the deleted patch file from the patches directory as well.
# @flag --backup    Rename the patch file to patch~ rather than deleting it.
# @arg patch
delete() {
    :;
}
# }} quilt delete

# {{ quilt diff
# @cmd Produces a diff of the specified file(s) in the topmost or specified patch.
# @option -p <ab>                       Create a -p1 style patch, but use a/file and b/file as the original and new filenames instead of the default dir.orig/file and dir/file names.
# @option -u <num>                      Create a unified diff (-u, -U) with num lines of context.
# @option -U <num>                      Create a unified diff (-u, -U) with num lines of context.
# @option -c <num>                      Create a unified diff (-u, -U) with num lines of context.
# @option -C <num>                      Create a unified diff (-u, -U) with num lines of context.
# @flag --no-timestamps                 Do not include file timestamps in patch headers.
# @flag --no-index                      Do not output Index: lines.
# @flag -z                              Write to standard output the changes that have been made relative to the topmost or specified patch.
# @flag -R                              Create a reverse diff.
# @option -P <patch>                    Create a diff for the specified patch.
# @option --combine <patch>             Create a combined diff for all patches between this patch and the patch specified with -P.
# @flag --snapshot                      Diff against snapshot (see `quilt snapshot -h').
# @option --diff <utility>              Use the specified utility for generating the diff.
# @option --color[always|auto|never]    Use syntax coloring (auto activates it only if the output is a tty).
# @flag --sort                          Sort files by their name instead of preserving the original order.
# @arg file*
diff() {
    :;
}
# }} quilt diff

# {{ quilt edit
# @cmd Edit the specified file(s) in $EDITOR after adding it (them) to the topmost patch.
edit() {
    :;
}
# }} quilt edit

# {{ quilt files
# @cmd Print the list of files that the topmost or specified patch changes.
# @flag -a                     List all files in all applied patches.
# @flag -l                     Add patch name to output.
# @flag -v                     Verbose, more user friendly output.
# @option --combine <patch>    Create a listing for all patches between this patch and the topmost or specified patch.
# @arg patch
files() {
    :;
}
# }} quilt files

# {{ quilt fold
# @cmd Integrate the patch read from standard input into the topmost patch: After making sure that all files modified are part of the topmost patch, the patch is applied with the specified strip level (which defaults to 1).
# @flag -R                    Apply patch in reverse.
# @flag -q                    Quiet operation.
# @flag -f                    Force apply, even if the patch has rejects.
# @option -p <strip-level>    The number of pathname components to strip from file names when applying patchfile.
fold() {
    :;
}
# }} quilt fold

# {{ quilt fork
# @cmd Fork the topmost patch.
# @arg new_name
fork() {
    :;
}
# }} quilt fork

# {{ quilt graph
# @cmd Generate a dot(1) directed graph showing the dependencies between applied patches.
# @flag --all                      Generate a graph including all applied patches and their dependencies.
# @flag --reduce                   Eliminate transitive edges from the graph.
# @option --lines <num>            Compute dependencies by looking at the lines the patches modify.
# @option --edge-labels <files>    Label graph edges with the file names that the adjacent patches modify.
# @option -T <ps>                  Directly produce a PostScript output file.
# @arg patch
graph() {
    :;
}
# }} quilt graph

# {{ quilt grep
# @cmd Grep through the source files, recursively, skipping patches and quilt meta-information.
# @flag -h    Print this help.
# @arg pattern
grep() {
    :;
}
# }} quilt grep

# {{ quilt header
# @cmd Print or change the header of the topmost or specified patch.
# @flag --strip-diffstat               Strip diffstat output from the header.
# @flag --strip-trailing-whitespace    Strip trailing whitespace at the end of lines of the header.
# @flag --backup                       Create a backup copy of the old version of a patch as patch~.
# @arg patch
header() {
    :;
}
# }} quilt header

# {{ quilt import
# @cmd Import external patches.
# @option -P <patch>    Patch filename to use inside quilt.
# @flag -f              Overwrite/update existing patches.
# @option -d[o|a|n]     When overwriting in existing patch, keep the old (o), all (a), or new (n) patch header.
# @arg patchfile*
import() {
    :;
}
# }} quilt import

# {{ quilt mail
# @cmd Create mail messages from a specified range of patches, or all patches in the series file, and either store them in a mailbox file, or send them immediately.
# @option -m <text>               Text to use as the text in the introduction.
# @option -M <file>               Like the -m option, but read the introduction from file.
# @option --prefix <prefix>       Use an alternate prefix in the bracketed part of the subjects generated.
# @option --mbox <file>           Store all messages in the specified file in mbox format.
# @flag --send                    Send the messages directly.
# @flag --sender                  The envelope sender address to use.
# @flag --from                    The values for the From and Subject headers to use.
# @flag --subject                 The values for the From and Subject headers to use.
# @flag --to                      Append a recipient to the To, Cc, or Bcc header.
# @flag --cc                      Append a recipient to the To, Cc, or Bcc header.
# @flag --bcc                     Append a recipient to the To, Cc, or Bcc header.
# @flag --charset                 Specify a particular message encoding on systems which don't use UTF-8 or ISO-8859-15.
# @option --signature <file>      Append the specified signature to messages (defaults to ~/.signature if found; use `-' for no signature).
# @option --reply-to <message>    Add the appropriate headers to reply to the specified message.
# @arg first_patch
# @arg last_patch
mail() {
    :;
}
# }} quilt mail

# {{ quilt new
# @cmd Create a new patch with the specified file name, and insert it after the topmost patch.
# @option -p <ab>    Create a -p1 style patch, but use a/file and b/file as the original and new filenames instead of the default dir.orig/file and dir/file names.
# @arg patchname
new() {
    :;
}
# }} quilt new

# {{ quilt next
# @cmd Print the name of the next patch after the specified or topmost patch in the series file.
# @arg patch
next() {
    :;
}
# }} quilt next

# {{ quilt patches
# @cmd Print the list of patches that modify any of the specified files.
# @flag -v                              Verbose, more user friendly output.
# @option --color[always|auto|never]    Use syntax coloring (auto activates it only if the output is a tty).
# @arg file
# @arg files*
patches() {
    :;
}
# }} quilt patches

# {{ quilt pop
# @cmd Remove patch(es) from the stack of applied patches.
# @flag -a           Remove all applied patches.
# @flag -f           Force remove.
# @flag -R           Always verify if the patch removes cleanly; don't rely on timestamp checks.
# @flag -q           Quiet operation.
# @flag -v           Verbose operation.
# @flag --refresh    Automatically refresh every patch before it gets unapplied.
# @arg num-patch <num|patch>
pop() {
    :;
}
# }} quilt pop

# {{ quilt previous
# @cmd Print the name of the previous patch before the specified or topmost patch in the series file.
# @arg patch
previous() {
    :;
}
# }} quilt previous

# {{ quilt push
# @cmd Apply patch(es) from the series file.
# @flag -a                              Apply all patches in the series file.
# @flag -q                              Quiet operation.
# @flag -f                              Force apply, even if the patch has rejects.
# @flag -v                              Verbose operation.
# @option --fuzz <N>                    Set the maximum fuzz factor (default: 2).
# @option -m --merge <merge|diff3>      Merge the patch file into the original files (see patch(1)).
# @flag --leave-rejects                 Leave around the reject files patch produced, even if the patch is not actually applied.
# @option --color[always|auto|never]    Use syntax coloring (auto activates it only if the output is a tty).
# @flag --refresh                       Automatically refresh every patch after it was successfully applied.
# @arg num-patch <num|patch>
push() {
    :;
}
# }} quilt push

# {{ quilt refresh
# @cmd Refreshes the specified patch, or the topmost patch by default.
# @option -p <ab>                      Create a -p1 style patch, but use a/file and b/file as the original and new filenames instead of the default dir.orig/file and dir/file names.
# @option -u <num>                     Create a unified diff (-u, -U) with num lines of context.
# @option -U <num>                     Create a unified diff (-u, -U) with num lines of context.
# @option -c <num>                     Create a unified diff (-u, -U) with num lines of context.
# @option -C <num>                     Create a unified diff (-u, -U) with num lines of context.
# @option -z <new_name>                Create a new patch containing the changes instead of refreshing the topmost patch.
# @flag --no-timestamps                Do not include file timestamps in patch headers.
# @flag --no-index                     Do not output Index: lines.
# @flag --diffstat                     Add a diffstat section to the patch header, or replace the existing diffstat section.
# @flag -f                             Enforce refreshing of a patch that is not on top.
# @flag --backup                       Create a backup copy of the old version of a patch as patch~.
# @flag --sort                         Sort files by their name instead of preserving the original order.
# @flag --strip-trailing-whitespace    Strip trailing whitespace at the end of lines.
# @arg patch
refresh() {
    :;
}
# }} quilt refresh

# {{ quilt remove
# @cmd Remove one or more files from the topmost or named patch.
# @option -P <patch>    Remove named files from the named patch.
# @arg file*
remove() {
    :;
}
# }} quilt remove

# {{ quilt rename
# @cmd Rename the topmost or named patch.
# @option -P <patch>    Patch to rename.
# @arg new_name
rename() {
    :;
}
# }} quilt rename

# {{ quilt revert
# @cmd Revert uncommitted changes to the topmost or named patch for the specified file(s): after the revert, 'quilt diff -z' will show no differences for those files.
# @option -P <patch>    Revert changes in the named patch.
# @arg file*
revert() {
    :;
}
# }} quilt revert

# {{ quilt series
# @cmd Print the names of all patches in the series file.
# @option --color[always|auto|never]    Use syntax coloring (auto activates it only if the output is a tty).
# @flag -v                              Verbose, more user friendly output.
series() {
    :;
}
# }} quilt series

# {{ quilt setup
# @cmd Initializes a source tree from an rpm spec file or a quilt series file.
# @flag -d              Optional path prefix for the resulting source tree.
# @flag --sourcedir     Directory that contains the package sources.
# @flag -v              Verbose debug output.
# @option --fuzz <N>    Set the maximum fuzz factor (needs rpm 4.6 or later).
# @flag --slow          Use the original, slow method to process the spec file.
# @flag --fast          Use the new, faster method to process the spec file.
# @arg enum[specfile|seriesfile]
setup() {
    :;
}
# }} quilt setup

# {{ quilt snapshot
# @cmd Take a snapshot of the current working state.
# @flag -d    Only remove current snapshot.
snapshot() {
    :;
}
# }} quilt snapshot

# {{ quilt top
# @cmd Print the name of the topmost patch on the current stack of applied patches.
top() {
    :;
}
# }} quilt top

# {{ quilt unapplied
# @cmd Print a list of patches that are not applied, or all patches that follow the specified patch in the series file.
# @arg patch
unapplied() {
    :;
}
# }} quilt unapplied

# {{ quilt upgrade
# @cmd Upgrade the meta-data in a working tree from an old version of quilt to the current version.
upgrade() {
    :;
}
# }} quilt upgrade

command eval "$(argc --argc-eval "$0" "$@")"