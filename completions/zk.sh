#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                    Show context-sensitive help.
# @option --notebook-dir <PATH>      Turn off notebook auto-discovery and set manually the notebook where commands are run.
# @option -W --working-dir <PATH>    Run as if zk was started in <PATH> instead of the current working directory.
# @flag --no-input                   Never prompt or ask for confirmation.

# {{ zk init
# @cmd Create a new notebook in the given directory.
# @flag -h --help                    Show context-sensitive help.
# @option --notebook-dir <PATH>      Turn off notebook auto-discovery and set manually the notebook where commands are run.
# @option -W --working-dir <PATH>    Run as if zk was started in <PATH> instead of the current working directory.
# @flag --no-input                   Never prompt or ask for confirmation.
# @arg directory                     Directory containing the notebook.
init() {
    :;
}
# }} zk init

# {{ zk index
# @cmd Index the notes to be searchable.
# @flag -h --help                    Show context-sensitive help.
# @option --notebook-dir <PATH>      Turn off notebook auto-discovery and set manually the notebook where commands are run.
# @option -W --working-dir <PATH>    Run as if zk was started in <PATH> instead of the current working directory.
# @flag --no-input                   Never prompt or ask for confirmation.
# @flag -f --force                   Force indexing all the notes.
# @flag -v --verbose                 Print detailed information about the indexing process.
# @flag -q --quiet                   Do not print statistics nor progress.
index() {
    :;
}
# }} zk index

# {{ zk new
# @cmd Create a new note in the given notebook directory.
# @flag -h --help                    Show context-sensitive help.
# @option --notebook-dir <PATH>      Turn off notebook auto-discovery and set manually the notebook where commands are run.
# @option -W --working-dir <PATH>    Run as if zk was started in <PATH> instead of the current working directory.
# @flag --no-input                   Never prompt or ask for confirmation.
# @flag -i --interactive             Read contents from standard input.
# @option -t --title                 Title of the new note.
# @option --date                     Set the current date.
# @option -g --group <NAME>          Name of the config group this note belongs to.
# @option --extra* <KEY=VALUE,>      Extra variables passed to the templates.
# @option --template <PATH>          Custom template used to render the note.
# @flag -p --print-path              Print the path of the created note instead of editing it.
# @flag -n --dry-run                 Don't actually create the note.
# @option --id                       Skip id generation and use provided value.
# @arg directory                     Directory in which to create the note.
new() {
    :;
}
# }} zk new

# {{ zk list
# @cmd List notes matching the given criteria.
# @flag -h --help                     Show context-sensitive help.
# @option --notebook-dir <PATH>       Turn off notebook auto-discovery and set manually the notebook where commands are run.
# @option -W --working-dir <PATH>     Run as if zk was started in <PATH> instead of the current working directory.
# @flag --no-input                    Never prompt or ask for confirmation.
# @option -f --format[oneline|short|medium|long|full|json|jsonl] <TEMPLATE>  Pretty print the list using a custom template or one of the predefined formats: oneline, short, medium, long, full, json, jsonl.
# @option --header <STRING>           Arbitrary text printed at the start of the list.
# @option --footer <"n">              Arbitrary text printed at the end of the list.
# @option -d --delimiter <"n">        Print notes delimited by the given separator.
# @flag -0 --delimiter0               Print notes delimited by ASCII NUL characters.
# @flag -P --no-pager                 Do not pipe output into a pager.
# @flag -q --quiet                    Do not print the total number of notes found.
# @flag -i --interactive              Select notes interactively with fzf.
# @option -n --limit <COUNT>          Limit the number of notes found.
# @option -m --match* <QUERY,>        Terms to search for in the notes.
# @option -M --match-strategy[fts|re|exact] <STRATEGY>  Text matching strategy among: fts, re, exact.
# @option -x --exclude* <PATH,>       Ignore notes matching the given path, including its descendants.
# @option -t --tag* <TAG,>            Find notes tagged with the given tags.
# @option --mention* <PATH,>          Find notes mentioning the title of the given ones.
# @option --mentioned-by* <PATH,>     Find notes whose title is mentioned in the given ones.
# @option -l --link-to* <PATH,>       Find notes which are linking to the given ones.
# @option --no-link-to* <PATH,>       Find notes which are not linking to the given notes.
# @option -L --linked-by* <PATH,>     Find notes which are linked by the given ones.
# @option --no-linked-by* <PATH,>     Find notes which are not linked by the given ones.
# @flag --orphan                      Find notes which are not linked by any other note.
# @option --related* <PATH,>          Find notes which might be related to the given ones.
# @option --max-distance <COUNT>      Maximum distance between two linked notes.
# @flag -r --recursive                Follow links recursively.
# @option --created <DATE>
# @option --created-before <DATE>     Find notes created before the given date.
# @option --created-after <DATE>      Find notes created after the given date.
# @option --modified <DATE>           Find notes modified on the given date.
# @option --modified-before <DATE>    Find notes modified before the given date.
# @option --modified-after <DATE>     Find notes modified after the given date.
# @option -s --sort* <TERM,>          Order the notes by the given criterion.
# @arg path*                          Find notes matching the given path, including its descendants.
list() {
    :;
}
# }} zk list

# {{ zk graph
# @cmd Produce a graph of the notes matching the given criteria.
# @flag -h --help                     Show context-sensitive help.
# @option --notebook-dir <PATH>       Turn off notebook auto-discovery and set manually the notebook where commands are run.
# @option -W --working-dir <PATH>     Run as if zk was started in <PATH> instead of the current working directory.
# @flag --no-input                    Never prompt or ask for confirmation.
# @option -f --format <STRING>        Format of the graph among: json.
# @flag -q --quiet                    Do not print the total number of notes found.
# @flag -i --interactive              Select notes interactively with fzf.
# @option -n --limit <COUNT>          Limit the number of notes found.
# @option -m --match* <QUERY,>        Terms to search for in the notes.
# @option -M --match-strategy[fts|re|exact] <STRATEGY>  Text matching strategy among: fts, re, exact.
# @option -x --exclude* <PATH,>       Ignore notes matching the given path, including its descendants.
# @option -t --tag* <TAG,>            Find notes tagged with the given tags.
# @option --mention* <PATH,>          Find notes mentioning the title of the given ones.
# @option --mentioned-by* <PATH,>     Find notes whose title is mentioned in the given ones.
# @option -l --link-to* <PATH,>       Find notes which are linking to the given ones.
# @option --no-link-to* <PATH,>       Find notes which are not linking to the given notes.
# @option -L --linked-by* <PATH,>     Find notes which are linked by the given ones.
# @option --no-linked-by* <PATH,>     Find notes which are not linked by the given ones.
# @flag --orphan                      Find notes which are not linked by any other note.
# @option --related* <PATH,>          Find notes which might be related to the given ones.
# @option --max-distance <COUNT>      Maximum distance between two linked notes.
# @flag -r --recursive                Follow links recursively.
# @option --created <DATE>
# @option --created-before <DATE>     Find notes created before the given date.
# @option --created-after <DATE>      Find notes created after the given date.
# @option --modified <DATE>           Find notes modified on the given date.
# @option --modified-before <DATE>    Find notes modified before the given date.
# @option --modified-after <DATE>     Find notes modified after the given date.
# @option -s --sort* <TERM,>          Order the notes by the given criterion.
# @arg path*                          Find notes matching the given path, including its descendants.
graph() {
    :;
}
# }} zk graph

# {{ zk edit
# @cmd Edit notes matching the given criteria.
# @flag -h --help                     Show context-sensitive help.
# @option --notebook-dir <PATH>       Turn off notebook auto-discovery and set manually the notebook where commands are run.
# @option -W --working-dir <PATH>     Run as if zk was started in <PATH> instead of the current working directory.
# @flag --no-input                    Never prompt or ask for confirmation.
# @flag -f --force                    Do not confirm before editing many notes at the same time.
# @flag -i --interactive              Select notes interactively with fzf.
# @option -n --limit <COUNT>          Limit the number of notes found.
# @option -m --match* <QUERY,>        Terms to search for in the notes.
# @option -M --match-strategy[fts|re|exact] <STRATEGY>  Text matching strategy among: fts, re, exact.
# @option -x --exclude* <PATH,>       Ignore notes matching the given path, including its descendants.
# @option -t --tag* <TAG,>            Find notes tagged with the given tags.
# @option --mention* <PATH,>          Find notes mentioning the title of the given ones.
# @option --mentioned-by* <PATH,>     Find notes whose title is mentioned in the given ones.
# @option -l --link-to* <PATH,>       Find notes which are linking to the given ones.
# @option --no-link-to* <PATH,>       Find notes which are not linking to the given notes.
# @option -L --linked-by* <PATH,>     Find notes which are linked by the given ones.
# @option --no-linked-by* <PATH,>     Find notes which are not linked by the given ones.
# @flag --orphan                      Find notes which are not linked by any other note.
# @option --related* <PATH,>          Find notes which might be related to the given ones.
# @option --max-distance <COUNT>      Maximum distance between two linked notes.
# @flag -r --recursive                Follow links recursively.
# @option --created <DATE>
# @option --created-before <DATE>     Find notes created before the given date.
# @option --created-after <DATE>      Find notes created after the given date.
# @option --modified <DATE>           Find notes modified on the given date.
# @option --modified-before <DATE>    Find notes modified before the given date.
# @option --modified-after <DATE>     Find notes modified after the given date.
# @option -s --sort* <TERM,>          Order the notes by the given criterion.
# @arg path*                          Find notes matching the given path, including its descendants.
edit() {
    :;
}
# }} zk edit

# {{ zk tag
# @cmd Manage the note tags.
# @flag -h --help                    Show context-sensitive help.
# @option --notebook-dir <PATH>      Turn off notebook auto-discovery and set manually the notebook where commands are run.
# @option -W --working-dir <PATH>    Run as if zk was started in <PATH> instead of the current working directory.
# @flag --no-input                   Never prompt or ask for confirmation.
tag() {
    :;
}
# }} zk tag

command eval "$(argc --argc-eval "$0" "$@")"