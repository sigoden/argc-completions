#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ darcs initialize
# @cmd Create an empty repository.
# @flag --darcs-3                  New darcs patch format
# @flag --darcs-2                  Standard darcs patch format [DEFAULT]
# @flag --darcs-1                  Older patch format (for compatibility)
# @flag --with-working-dir         Create a working tree (normal repository) [DEFAULT]
# @flag --no-working-dir           Do not create a working tree (bare repository)
# @option --repo-name <DIRECTORY>
# @option --repodir <DIRECTORY>    path of output directory
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --with-patch-index         build patch index
# @flag --no-patch-index           don't build patch index [DEFAULT]
# @flag --hashed                   deprecated, use --darcs-1 instead
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg directory
initialize() {
    :;
}
# }} darcs initialize

# {{ darcs add
# @cmd Add new files to version control.
# @flag --boring                   don't skip boring files
# @flag --no-boring                skip boring files [DEFAULT]
# @flag --case-ok                  don't refuse to add files differing only in case
# @flag --no-case-ok               refuse to add files whose name differ only in case [DEFAULT]
# @flag --reserved-ok              don't refuse to add files with Windows-reserved names
# @flag --no-reserved-ok           refuse to add files with Windows-reserved names [DEFAULT]
# @flag -r --recursive             recurse into subdirectories
# @flag --not-recursive
# @flag --no-recursive             don't recurse into subdirectories [DEFAULT]
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --dry-run                  don't actually take the action
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg file-or-directory+ <FILE or DIRECTORY>
add() {
    :;
}
# }} darcs add

# {{ darcs whatsnew
# @cmd List unrecorded changes in the working tree.
# @flag -s --summary               summarize changes
# @flag --no-summary               don't summarize changes
# @flag -u --unified               output changes in a darcs-specific format similar to diff -u
# @flag --no-unified               output changes in darcs' usual format [DEFAULT]
# @flag --human-readable           normal human-readable output [DEFAULT]
# @flag --machine-readable         machine-readable output
# @flag -l --look-for-adds         look for (non-boring) files that could be added
# @flag --dont-look-for-adds
# @flag --no-look-for-adds         don't look for any files that could be added [DEFAULT]
# @flag --look-for-replaces        look for replaces that could be marked
# @flag --dont-look-for-replaces
# @flag --no-look-for-replaces     don't look for any replaces [DEFAULT]
# @flag --look-for-moves           look for files that may be moved/renamed
# @flag --dont-look-for-moves
# @flag --no-look-for-moves        don't look for any files that could be moved/renamed [DEFAULT]
# @flag --myers                    use myers diff algorithm
# @flag --patience                 use patience diff algorithm [DEFAULT]
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag -a --all
# @flag --no-interactive           answer yes to all patches
# @flag -i --interactive           prompt user interactively
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --ignore-times             don't trust the file modification times
# @flag --no-ignore-times          trust modification times to find modified files [DEFAULT]
# @flag --boring                   don't skip boring files
# @flag --no-boring                skip boring files [DEFAULT]
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg file-or-directory* <FILE or DIRECTORY>
whatsnew() {
    :;
}
# }} darcs whatsnew

# {{ darcs record
# @cmd Create a patch from unrecorded changes.
# @option -m --name <PATCHNAME>        name of patch
# @option -A --author <EMAIL>          specify author id
# @flag --test                         run the test script
# @flag --no-test                      don't run the test script [DEFAULT]
# @flag --leave-test-directory         don't remove the test directory
# @flag --remove-test-directory        remove the test directory [DEFAULT]
# @flag -a --all
# @flag --no-interactive               answer yes to all patches
# @flag -i --interactive               prompt user interactively
# @flag --pipe                         ask user interactively for the patch metadata
# @flag --ask-deps                     manually select dependencies
# @flag --no-ask-deps                  automatically select dependencies [DEFAULT]
# @flag --edit-long-comment            edit the long comment by default
# @flag --skip-long-comment            don't give a long comment
# @flag --prompt-long-comment          prompt for whether to edit the long comment
# @flag -l --look-for-adds             look for (non-boring) files that could be added
# @flag --dont-look-for-adds
# @flag --no-look-for-adds             don't look for any files that could be added [DEFAULT]
# @flag --look-for-replaces            look for replaces that could be marked
# @flag --dont-look-for-replaces
# @flag --no-look-for-replaces         don't look for any replaces [DEFAULT]
# @flag --look-for-moves               look for files that may be moved/renamed
# @flag --dont-look-for-moves
# @flag --no-look-for-moves            don't look for any files that could be moved/renamed [DEFAULT]
# @option --repodir <DIRECTORY>        specify the repository directory in which to run
# @flag -u --unified                   output changes in a darcs-specific format similar to diff -u
# @flag --no-unified                   output changes in darcs' usual format [DEFAULT]
# @flag --myers                        use myers diff algorithm
# @flag --patience                     use patience diff algorithm [DEFAULT]
# @flag --help                         show a description of the command and its options
# @flag --list-options                 show plain list of available options and commands, for auto-completion
# @flag --disable                      disable this command
# @flag -q --quiet                     suppress informational output
# @flag --standard-verbosity           neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                   enable verbose output
# @option --logfile <FILE>             give patch name and comment in file
# @flag --delete-logfile               delete the logfile when done
# @flag --no-delete-logfile            keep the logfile when done [DEFAULT]
# @flag --compress                     compress patch data [DEFAULT]
# @flag --dont-compress
# @flag --no-compress                  don't compress patch data
# @flag --ignore-times                 don't trust the file modification times
# @flag --no-ignore-times              trust modification times to find modified files [DEFAULT]
# @option --umask                      specify umask to use when writing
# @flag --set-scripts-executable       make scripts executable
# @flag --dont-set-scripts-executable
# @flag --no-set-scripts-executable    don't make scripts executable [DEFAULT]
# @flag --boring                       don't skip boring files
# @flag --no-boring                    skip boring files [DEFAULT]
# @flag --no-cache                     don't use patch caches
# @option --prehook <COMMAND>          specify command to run before this darcs command
# @flag --no-prehook                   don't run prehook command [DEFAULT]
# @flag --prompt-prehook               prompt before running prehook
# @flag --run-prehook                  run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>         specify command to run after this darcs command
# @flag --no-posthook                  don't run posthook command [DEFAULT]
# @flag --prompt-posthook              prompt before running posthook
# @flag --run-posthook                 run posthook command without prompting [DEFAULT]
# @flag --debug                        enable general debug output
# @flag --debug-http                   debug output from libcurl
# @flag --timings                      provide debugging timings information
# @arg file-or-directory* <FILE or DIRECTORY>
record() {
    :;
}
# }} darcs record

# {{ darcs clone
# @cmd Make a copy of an existing repository.
# @option --repo-name <DIRECTORY>
# @option --repodir <DIRECTORY>        path of output directory
# @flag --lazy                         get patch files only as needed
# @flag --complete                     get a complete copy of the repository
# @option --to-match <PATTERN>         select changes up to a patch matching PATTERN
# @option --to-patch <REGEXP>          select changes up to a patch matching REGEXP
# @option --to-hash <HASH>             select changes up to a patch with HASH
# @option -t --tag <REGEXP>            select tag matching REGEXP
# @option --context <FILENAME>         version specified by the context in FILENAME
# @flag --set-default                  set default repository
# @flag --no-set-default               don't set default repository
# @flag --inherit-default              inherit default repository
# @flag --no-inherit-default           don't inherit default repository [DEFAULT]
# @flag --set-scripts-executable       make scripts executable
# @flag --dont-set-scripts-executable
# @flag --no-set-scripts-executable    don't make scripts executable [DEFAULT]
# @flag --with-working-dir             Create a working tree (normal repository) [DEFAULT]
# @flag --no-working-dir               Do not create a working tree (bare repository)
# @flag --help                         show a description of the command and its options
# @flag --list-options                 show plain list of available options and commands, for auto-completion
# @flag --disable                      disable this command
# @flag -q --quiet                     suppress informational output
# @flag --standard-verbosity           neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                   enable verbose output
# @flag --packs                        use repository packs [DEFAULT]
# @flag --no-packs                     don't use repository packs
# @flag --with-patch-index             build patch index
# @flag --no-patch-index               don't build patch index [DEFAULT]
# @option --umask                      specify umask to use when writing
# @flag --no-http-pipelining           disable HTTP pipelining
# @option --remote-darcs <COMMAND>     name of the darcs executable on the remote server
# @flag --no-cache                     don't use patch caches
# @option --prehook <COMMAND>          specify command to run before this darcs command
# @flag --no-prehook                   don't run prehook command [DEFAULT]
# @flag --prompt-prehook               prompt before running prehook
# @flag --run-prehook                  run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>         specify command to run after this darcs command
# @flag --no-posthook                  don't run posthook command [DEFAULT]
# @flag --prompt-posthook              prompt before running posthook
# @flag --run-posthook                 run posthook command without prompting [DEFAULT]
# @flag --debug                        enable general debug output
# @flag --debug-http                   debug output from libcurl
# @flag --timings                      provide debugging timings information
# @arg repository!
# @arg directory
clone() {
    :;
}
# }} darcs clone

# {{ darcs pull
# @cmd Copy and apply patches from another repository to this one.
# @option --matches <PATTERN>             select patches matching PATTERN
# @option -p --patches <REGEXP>           select patches matching REGEXP
# @option -t --tags <REGEXP>              select tags matching REGEXP
# @option -h --hash                       select a single patch with HASH
# @flag --reorder-patches                 put local-only patches on top of remote ones
# @flag --no-reorder-patches              put remote-only patches on top of local ones [DEFAULT]
# @flag -a --all
# @flag --no-interactive                  answer yes to all patches
# @flag -i --interactive                  prompt user interactively
# @flag --mark-conflicts                  mark conflicts [DEFAULT]
# @flag --allow-conflicts                 allow conflicts, but don't mark them
# @flag --dont-allow-conflicts
# @flag --no-allow-conflicts
# @flag --no-resolve-conflicts            fail if there are patches that would create conflicts
# @flag --skip-conflicts                  filter out any patches that would create conflicts
# @option --external-merge <COMMAND>      use external tool to merge conflicts
# @flag --test                            run the test script
# @flag --no-test                         don't run the test script [DEFAULT]
# @flag --dry-run                         don't actually take the action
# @flag --xml-output                      generate XML formatted output
# @flag -s --summary                      summarize changes
# @flag --no-summary                      don't summarize changes
# @flag --no-deps                         don't automatically fulfill dependencies
# @flag --auto-deps
# @flag --dont-prompt-for-dependencies    don't ask about patches that are depended on by matched patches (with --match or --patch)
# @flag --prompt-deps
# @flag --prompt-for-dependencies         prompt about patches that are depended on by matched patches [DEFAULT]
# @flag --set-default                     set default repository
# @flag --no-set-default                  don't set default repository
# @flag --inherit-default                 inherit default repository
# @flag --no-inherit-default              don't inherit default repository [DEFAULT]
# @option --repodir <DIRECTORY>           specify the repository directory in which to run
# @flag --ignore-unrelated-repos          do not check if repositories are unrelated
# @flag --myers                           use myers diff algorithm
# @flag --patience                        use patience diff algorithm [DEFAULT]
# @flag --help                            show a description of the command and its options
# @flag --list-options                    show plain list of available options and commands, for auto-completion
# @flag --disable                         disable this command
# @flag -q --quiet                        suppress informational output
# @flag --standard-verbosity              neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                      enable verbose output
# @flag --intersection                    take intersection of all repositories
# @flag --union                           take union of all repositories [DEFAULT]
# @flag --complement                      take complement of repositories (in order listed)
# @flag --compress                        compress patch data [DEFAULT]
# @flag --dont-compress
# @flag --no-compress                     don't compress patch data
# @flag --ignore-times                    don't trust the file modification times
# @flag --no-ignore-times                 trust modification times to find modified files [DEFAULT]
# @option --remote-repo <URL>             specify the remote repository URL to work with
# @flag --set-scripts-executable          make scripts executable
# @flag --dont-set-scripts-executable
# @flag --no-set-scripts-executable       don't make scripts executable [DEFAULT]
# @option --umask                         specify umask to use when writing
# @flag --reverse                         show/consider changes in reverse order
# @flag --no-reverse                      show/consider changes in the usual order [DEFAULT]
# @flag --pause-for-gui                   pause for an external diff or merge command to finish [DEFAULT]
# @flag --no-pause-for-gui                return immediately after external diff or merge command finishes
# @flag --no-http-pipelining              disable HTTP pipelining
# @option --remote-darcs <COMMAND>        name of the darcs executable on the remote server
# @flag --no-cache                        don't use patch caches
# @option --prehook <COMMAND>             specify command to run before this darcs command
# @flag --no-prehook                      don't run prehook command [DEFAULT]
# @flag --prompt-prehook                  prompt before running prehook
# @flag --run-prehook                     run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>            specify command to run after this darcs command
# @flag --no-posthook                     don't run posthook command [DEFAULT]
# @flag --prompt-posthook                 prompt before running posthook
# @flag --run-posthook                    run posthook command without prompting [DEFAULT]
# @flag --debug                           enable general debug output
# @flag --debug-http                      debug output from libcurl
# @flag --timings                         provide debugging timings information
# @arg repository*
pull() {
    :;
}
# }} darcs pull

# {{ darcs push
# @cmd Copy and apply patches from this repository to another one.
# @option --matches <PATTERN>             select patches matching PATTERN
# @option -p --patches <REGEXP>           select patches matching REGEXP
# @option -t --tags <REGEXP>              select tags matching REGEXP
# @option -h --hash                       select a single patch with HASH
# @flag --no-deps                         don't automatically fulfill dependencies
# @flag --auto-deps
# @flag --dont-prompt-for-dependencies    don't ask about patches that are depended on by matched patches (with --match or --patch)
# @flag --prompt-deps
# @flag --prompt-for-dependencies         prompt about patches that are depended on by matched patches [DEFAULT]
# @flag -a --all
# @flag --no-interactive                  answer yes to all patches
# @flag -i --interactive                  prompt user interactively
# @flag --sign                            sign the patch with your gpg key
# @option --sign-as <KEYID>               sign the patch with a given keyid
# @option --sign-ssl <IDFILE>             sign the patch using openssl with a given private key
# @flag --dont-sign
# @flag --no-sign                         don't sign the patch [DEFAULT]
# @flag --dry-run                         don't actually take the action
# @flag --xml-output                      generate XML formatted output
# @flag -s --summary                      summarize changes
# @flag --no-summary                      don't summarize changes
# @option --repodir <DIRECTORY>           specify the repository directory in which to run
# @flag --set-default                     set default repository
# @flag --no-set-default                  don't set default repository
# @flag --inherit-default                 inherit default repository
# @flag --no-inherit-default              don't inherit default repository [DEFAULT]
# @flag --ignore-unrelated-repos          do not check if repositories are unrelated
# @flag --help                            show a description of the command and its options
# @flag --list-options                    show plain list of available options and commands, for auto-completion
# @flag --disable                         disable this command
# @flag -q --quiet                        suppress informational output
# @flag --standard-verbosity              neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                      enable verbose output
# @option --apply-as <USERNAME>           apply patch as another user using sudo
# @flag --no-apply-as                     don't use sudo to apply as another user [DEFAULT]
# @option --remote-repo <URL>             specify the remote repository URL to work with
# @flag --reverse                         show/consider changes in reverse order
# @flag --no-reverse                      show/consider changes in the usual order [DEFAULT]
# @flag --compress                        compress patch data [DEFAULT]
# @flag --dont-compress
# @flag --no-compress                     don't compress patch data
# @flag --no-http-pipelining              disable HTTP pipelining
# @option --remote-darcs <COMMAND>        name of the darcs executable on the remote server
# @flag --no-cache                        don't use patch caches
# @option --prehook <COMMAND>             specify command to run before this darcs command
# @flag --no-prehook                      don't run prehook command [DEFAULT]
# @flag --prompt-prehook                  prompt before running prehook
# @flag --run-prehook                     run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>            specify command to run after this darcs command
# @flag --no-posthook                     don't run posthook command [DEFAULT]
# @flag --prompt-posthook                 prompt before running posthook
# @flag --run-posthook                    run posthook command without prompting [DEFAULT]
# @flag --debug                           enable general debug output
# @flag --debug-http                      debug output from libcurl
# @flag --timings                         provide debugging timings information
# @arg repository
push() {
    :;
}
# }} darcs push

# {{ darcs move
# @cmd Move or rename files.
# @flag --case-ok                  don't refuse to add files differing only in case
# @flag --no-case-ok               refuse to add files whose name differ only in case [DEFAULT]
# @flag --reserved-ok              don't refuse to add files with Windows-reserved names
# @flag --no-reserved-ok           refuse to add files with Windows-reserved names [DEFAULT]
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg source!
# @arg destination!
move() {
    :;
}
# }} darcs move

# {{ darcs remove
# @cmd Remove files from version control.
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag -r --recursive             recurse into subdirectories
# @flag --not-recursive
# @flag --no-recursive             don't recurse into subdirectories [DEFAULT]
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --ignore-times             don't trust the file modification times
# @flag --no-ignore-times          trust modification times to find modified files [DEFAULT]
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg file-or-directory+ <FILE or DIRECTORY>
remove() {
    :;
}
# }} darcs remove

# {{ darcs replace
# @cmd Substitute one word for another.
# @option --token-chars <"[CHARS]">    define token to contain these characters
# @flag -f --force                     proceed with replace even if 'new' token already exists
# @flag --no-force                     don't force the replace if it looks scary [DEFAULT]
# @option --repodir <DIRECTORY>        specify the repository directory in which to run
# @flag --help                         show a description of the command and its options
# @flag --list-options                 show plain list of available options and commands, for auto-completion
# @flag --disable                      disable this command
# @flag -q --quiet                     suppress informational output
# @flag --standard-verbosity           neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                   enable verbose output
# @flag --ignore-times                 don't trust the file modification times
# @flag --no-ignore-times              trust modification times to find modified files [DEFAULT]
# @option --umask                      specify umask to use when writing
# @flag --no-cache                     don't use patch caches
# @option --prehook <COMMAND>          specify command to run before this darcs command
# @flag --no-prehook                   don't run prehook command [DEFAULT]
# @flag --prompt-prehook               prompt before running prehook
# @flag --run-prehook                  run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>         specify command to run after this darcs command
# @flag --no-posthook                  don't run posthook command [DEFAULT]
# @flag --prompt-posthook              prompt before running posthook
# @flag --run-posthook                 run posthook command without prompting [DEFAULT]
# @flag --debug                        enable general debug output
# @flag --debug-http                   debug output from libcurl
# @flag --timings                      provide debugging timings information
# @arg old!
# @arg new!
# @arg file+
replace() {
    :;
}
# }} darcs replace

# {{ darcs log
# @cmd List patches in the repository.
# @option --to-match <PATTERN>        select changes up to a patch matching PATTERN
# @option --to-patch <REGEXP>         select changes up to a patch matching REGEXP
# @option --to-hash <HASH>            select changes up to a patch with HASH
# @option --to-tag <REGEXP>           select changes up to a tag matching REGEXP
# @option --from-match <PATTERN>      select changes starting with a patch matching PATTERN
# @option --from-patch <REGEXP>       select changes starting with a patch matching REGEXP
# @option --from-hash <HASH>          select changes starting with a patch with HASH
# @option --from-tag <REGEXP>         select changes starting with a tag matching REGEXP
# @option --last <NUMBER>             select the last NUMBER patches
# @option -n --index <N-M>            select a range of patches
# @option --matches <PATTERN>         select patches matching PATTERN
# @option -p --patches <REGEXP>       select patches matching REGEXP
# @option -t --tags <REGEXP>          select tags matching REGEXP
# @option -h --hash                   select a single patch with HASH
# @option --max-count <NUMBER>        return only NUMBER results
# @flag --only-to-files               show only changes to specified files
# @flag --no-only-to-files            show changes to all files [DEFAULT]
# @flag --context                     produce output suitable for clone --context
# @flag --xml-output                  generate XML formatted output
# @flag --human-readable              normal human-readable output
# @flag --machine-readable            machine-readable output
# @flag --number                      number the changes
# @flag --count                       output count of changes
# @flag -s --summary                  summarize changes
# @flag --no-summary                  don't summarize changes
# @flag --reverse                     show/consider changes in reverse order
# @flag --no-reverse                  show/consider changes in the usual order [DEFAULT]
# @option --repo <URL>                specify the repository URL
# @option --repodir <DIRECTORY>       specify the repository directory in which to run
# @flag -a --all
# @flag --no-interactive              answer yes to all patches
# @flag -i --interactive              prompt user interactively
# @flag --help                        show a description of the command and its options
# @flag --list-options                show plain list of available options and commands, for auto-completion
# @flag --disable                     disable this command
# @flag -q --quiet                    suppress informational output
# @flag --standard-verbosity          neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                  enable verbose output
# @flag --no-http-pipelining          disable HTTP pipelining
# @option --remote-darcs <COMMAND>    name of the darcs executable on the remote server
# @flag --with-patch-index            build patch index [DEFAULT]
# @flag --no-patch-index              don't build patch index
# @flag --no-cache                    don't use patch caches
# @option --prehook <COMMAND>         specify command to run before this darcs command
# @flag --no-prehook                  don't run prehook command [DEFAULT]
# @flag --prompt-prehook              prompt before running prehook
# @flag --run-prehook                 run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>        specify command to run after this darcs command
# @flag --no-posthook                 don't run posthook command [DEFAULT]
# @flag --prompt-posthook             prompt before running posthook
# @flag --run-posthook                run posthook command without prompting [DEFAULT]
# @flag --debug                       enable general debug output
# @flag --debug-http                  debug output from libcurl
# @flag --timings                     provide debugging timings information
# @arg file-or-directory* <FILE or DIRECTORY>
log() {
    :;
}
# }} darcs log

# {{ darcs annotate
# @cmd Annotate lines of a file with the last patch that modified it.
# @flag --human-readable           normal human-readable output [DEFAULT]
# @flag --machine-readable         machine-readable output
# @option --match <PATTERN>        select a single patch matching PATTERN
# @option -p --patch <REGEXP>      select a single patch matching REGEXP
# @option -h --hash                select a single patch with HASH
# @option -t --tag <REGEXP>        select tag matching REGEXP
# @option -n --index <N>           select one patch
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --with-patch-index         build patch index [DEFAULT]
# @flag --no-patch-index           don't build patch index
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg file-or-directory <FILE or DIRECTORY>
annotate() {
    :;
}
# }} darcs annotate

# {{ darcs diff
# @cmd Create a diff between two versions of the repository.
# @option --match <PATTERN>           select a single patch matching PATTERN
# @option -p --patch <REGEXP>         select a single patch matching REGEXP
# @option -h --hash                   select a single patch with HASH
# @option --to-match <PATTERN>        select changes up to a patch matching PATTERN
# @option --to-patch <REGEXP>         select changes up to a patch matching REGEXP
# @option --to-hash <HASH>            select changes up to a patch with HASH
# @option --to-tag <REGEXP>           select changes up to a tag matching REGEXP
# @option --from-match <PATTERN>      select changes starting with a patch matching PATTERN
# @option --from-patch <REGEXP>       select changes starting with a patch matching REGEXP
# @option --from-hash <HASH>          select changes starting with a patch with HASH
# @option --from-tag <REGEXP>         select changes starting with a tag matching REGEXP
# @option --last <NUMBER>             select the last NUMBER patches
# @option -n --index <N-M>            select a range of patches
# @option --diff-command <COMMAND>    specify diff command (ignores --diff-opts)
# @option --diff-opts <OPTIONS>       options to pass to diff
# @flag -u --unified                  pass -u option to diff [DEFAULT]
# @flag --no-unified                  output patch in diff's dumb format
# @option --repodir <DIRECTORY>       specify the repository directory in which to run
# @flag --store-in-memory             do patch application in memory rather than on disk
# @flag --no-store-in-memory          do patch application on disk [DEFAULT]
# @flag --help                        show a description of the command and its options
# @flag --list-options                show plain list of available options and commands, for auto-completion
# @flag --disable                     disable this command
# @flag -q --quiet                    suppress informational output
# @flag --standard-verbosity          neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                  enable verbose output
# @flag --pause-for-gui               pause for an external diff or merge command to finish [DEFAULT]
# @flag --no-pause-for-gui            return immediately after external diff or merge command finishes
# @flag --ignore-times                don't trust the file modification times
# @flag --no-ignore-times             trust modification times to find modified files [DEFAULT]
# @flag --no-cache                    don't use patch caches
# @option --prehook <COMMAND>         specify command to run before this darcs command
# @flag --no-prehook                  don't run prehook command [DEFAULT]
# @flag --prompt-prehook              prompt before running prehook
# @flag --run-prehook                 run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>        specify command to run after this darcs command
# @flag --no-posthook                 don't run posthook command [DEFAULT]
# @flag --prompt-posthook             prompt before running posthook
# @flag --run-posthook                run posthook command without prompting [DEFAULT]
# @flag --debug                       enable general debug output
# @flag --debug-http                  debug output from libcurl
# @flag --timings                     provide debugging timings information
# @arg file-or-directory* <FILE or DIRECTORY>
diff() {
    :;
}
# }} darcs diff

# {{ darcs show
# @cmd Show information about the given repository.
# @flag --help            show a description of the command and its options
# @flag --list-options    show plain list of available options and commands, for auto-completion
# @flag --disable         disable this command
show() {
    :;
}

# {{{ darcs show contents
# @cmd Outputs a specific version of a file.
# @option --match <PATTERN>        select a single patch matching PATTERN
# @option -p --patch <REGEXP>      select a single patch matching REGEXP
# @option -h --hash                select a single patch with HASH
# @option -t --tag <REGEXP>        select tag matching REGEXP
# @option -n --index <N>           select one patch
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg file*
show::contents() {
    :;
}
# }}} darcs show contents

# {{{ darcs show dependencies
# @cmd Generate the graph of dependencies.
# @option --to-match <PATTERN>      select changes up to a patch matching PATTERN
# @option --to-patch <REGEXP>       select changes up to a patch matching REGEXP
# @option --to-hash <HASH>          select changes up to a patch with HASH
# @option --to-tag <REGEXP>         select changes up to a tag matching REGEXP
# @option --from-match <PATTERN>    select changes starting with a patch matching PATTERN
# @option --from-patch <REGEXP>     select changes starting with a patch matching REGEXP
# @option --from-hash <HASH>        select changes starting with a patch with HASH
# @option --from-tag <REGEXP>       select changes starting with a tag matching REGEXP
# @option --last <NUMBER>           select the last NUMBER patches
# @option -n --index <N-M>          select a range of patches
# @flag --help                      show a description of the command and its options
# @flag --list-options              show plain list of available options and commands, for auto-completion
# @flag --disable                   disable this command
# @flag -q --quiet                  suppress informational output
# @flag --standard-verbosity        neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                enable verbose output
# @flag --no-cache                  don't use patch caches
# @option --prehook <COMMAND>       specify command to run before this darcs command
# @flag --no-prehook                don't run prehook command [DEFAULT]
# @flag --prompt-prehook            prompt before running prehook
# @flag --run-prehook               run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>      specify command to run after this darcs command
# @flag --no-posthook               don't run posthook command [DEFAULT]
# @flag --prompt-posthook           prompt before running posthook
# @flag --run-posthook              run posthook command without prompting [DEFAULT]
# @flag --debug                     enable general debug output
# @flag --debug-http                debug output from libcurl
# @flag --timings                   provide debugging timings information
show::dependencies() {
    :;
}
# }}} darcs show dependencies

# {{{ darcs show files
# @cmd Show version-controlled files in the working tree.
# @flag --files                    include files in output [DEFAULT]
# @flag --no-files                 don't include files in output
# @flag --directories              include directories in output [DEFAULT]
# @flag --no-directories           don't include directories in output
# @flag --pending                  reflect pending patches in output [DEFAULT]
# @flag --no-pending               only include recorded patches in output
# @flag -0 --null                  separate file names by NUL characters
# @option --match <PATTERN>        select a single patch matching PATTERN
# @option -p --patch <REGEXP>      select a single patch matching REGEXP
# @option -h --hash                select a single patch with HASH
# @option -t --tag <REGEXP>        select tag matching REGEXP
# @option -n --index <N>           select one patch
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg file-or-directory* <FILE or DIRECTORY>
show::files() {
    :;
}
# }}} darcs show files

# {{{ darcs show index
# @cmd Dump contents of working tree index.
# @flag -0 --null                  separate file names by NUL characters
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
show::index() {
    :;
}
# }}} darcs show index

# {{{ darcs show pristine
# @cmd Dump contents of pristine cache.
# @flag -0 --null                  separate file names by NUL characters
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
show::pristine() {
    :;
}
# }}} darcs show pristine

# {{{ darcs show repo
# @cmd Show repository summary information
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --xml-output               generate XML formatted output
# @flag --enum-patches             include statistics requiring enumeration of patches [DEFAULT]
# @flag --no-enum-patches          don't include statistics requiring enumeration of patches
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
show::repo() {
    :;
}
# }}} darcs show repo

# {{{ darcs show authors
# @cmd List authors by patch count.
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
show::authors() {
    :;
}
# }}} darcs show authors

# {{{ darcs show tags
# @cmd Show all tags in the repository.
# @option --repo <URL>            specify the repository URL
# @flag --help                    show a description of the command and its options
# @flag --list-options            show plain list of available options and commands, for auto-completion
# @flag --disable                 disable this command
# @flag -q --quiet                suppress informational output
# @flag --standard-verbosity      neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose              enable verbose output
# @flag --no-cache                don't use patch caches
# @option --prehook <COMMAND>     specify command to run before this darcs command
# @flag --no-prehook              don't run prehook command [DEFAULT]
# @flag --prompt-prehook          prompt before running prehook
# @flag --run-prehook             run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>    specify command to run after this darcs command
# @flag --no-posthook             don't run posthook command [DEFAULT]
# @flag --prompt-posthook         prompt before running posthook
# @flag --run-posthook            run posthook command without prompting [DEFAULT]
# @flag --debug                   enable general debug output
# @flag --debug-http              debug output from libcurl
# @flag --timings                 provide debugging timings information
show::tags() {
    :;
}
# }}} darcs show tags

# {{{ darcs show patch-index
# @cmd Check integrity of patch index
# @flag -0 --null                  separate file names by NUL characters
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
show::patch-index() {
    :;
}
# }}} darcs show patch-index
# }} darcs show

# {{ darcs test
# @cmd Run tests and search for the patch that introduced a bug.
# @flag --once                         run test on current version only [DEFAULT]
# @flag --linear                       locate the most recent version lacking an error
# @flag --backoff                      exponential backoff search
# @flag --bisect                       binary instead of linear search
# @flag --leave-test-directory         don't remove the test directory
# @flag --remove-test-directory        remove the test directory [DEFAULT]
# @option --repodir <DIRECTORY>        specify the repository directory in which to run
# @flag --help                         show a description of the command and its options
# @flag --list-options                 show plain list of available options and commands, for auto-completion
# @flag --disable                      disable this command
# @flag -q --quiet                     suppress informational output
# @flag --standard-verbosity           neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                   enable verbose output
# @flag --set-scripts-executable       make scripts executable
# @flag --dont-set-scripts-executable
# @flag --no-set-scripts-executable    don't make scripts executable [DEFAULT]
# @flag --no-cache                     don't use patch caches
# @option --prehook <COMMAND>          specify command to run before this darcs command
# @flag --no-prehook                   don't run prehook command [DEFAULT]
# @flag --prompt-prehook               prompt before running prehook
# @flag --run-prehook                  run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>         specify command to run after this darcs command
# @flag --no-posthook                  don't run posthook command [DEFAULT]
# @flag --prompt-posthook              prompt before running posthook
# @flag --run-posthook                 run posthook command without prompting [DEFAULT]
# @flag --debug                        enable general debug output
# @flag --debug-http                   debug output from libcurl
# @flag --timings                      provide debugging timings information
# @arg initialization-command <[INITIALIZATION] COMMAND>
test() {
    :;
}
# }} darcs test

# {{ darcs revert
# @cmd Discard unrecorded changes.
# @flag -a --all
# @flag --no-interactive           answer yes to all patches
# @flag -i --interactive           prompt user interactively
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag -u --unified               output changes in a darcs-specific format similar to diff -u
# @flag --no-unified               output changes in darcs' usual format [DEFAULT]
# @flag --myers                    use myers diff algorithm
# @flag --patience                 use patience diff algorithm [DEFAULT]
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --ignore-times             don't trust the file modification times
# @flag --no-ignore-times          trust modification times to find modified files [DEFAULT]
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg file-or-directory* <FILE or DIRECTORY>
revert() {
    :;
}
# }} darcs revert

# {{ darcs unrevert
# @cmd Undo the last revert.
# @flag --ignore-times             don't trust the file modification times
# @flag --no-ignore-times          trust modification times to find modified files [DEFAULT]
# @flag -a --all
# @flag --no-interactive           answer yes to all patches
# @flag -i --interactive           prompt user interactively
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag -u --unified               output changes in a darcs-specific format similar to diff -u
# @flag --no-unified               output changes in darcs' usual format [DEFAULT]
# @flag --myers                    use myers diff algorithm
# @flag --patience                 use patience diff algorithm [DEFAULT]
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
unrevert() {
    :;
}
# }} darcs unrevert

# {{ darcs amend
# @cmd Improve a patch before it leaves your repository.
# @flag --unrecord                      remove changes from the patch
# @flag --record                        add more changes to the patch [DEFAULT]
# @option --not-in-remote <URL/PATH>    select all patches not in the default push/pull repository or at location URL/PATH
# @option --match <PATTERN>             select a single patch matching PATTERN
# @option -p --patch <REGEXP>           select a single patch matching REGEXP
# @option -h --hash                     select a single patch with HASH
# @flag --test                          run the test script
# @flag --no-test                       don't run the test script [DEFAULT]
# @flag --leave-test-directory          don't remove the test directory
# @flag --remove-test-directory         remove the test directory [DEFAULT]
# @flag -a --all
# @flag --no-interactive                answer yes to all patches
# @flag -i --interactive                prompt user interactively
# @option -A --author <EMAIL>           specify author id
# @flag --select-author                 select author id from a menu
# @option -m --name <PATCHNAME>         name of patch
# @flag --ask-deps                      manually select dependencies
# @flag --no-ask-deps                   automatically select dependencies [DEFAULT]
# @flag --edit-long-comment             edit the long comment by default
# @flag --skip-long-comment             don't give a long comment
# @flag --prompt-long-comment           prompt for whether to edit the long comment
# @flag --keep-date                     keep the date of the original patch
# @flag --no-keep-date                  use the current date for the amended patch [DEFAULT]
# @flag -l --look-for-adds              look for (non-boring) files that could be added
# @flag --dont-look-for-adds
# @flag --no-look-for-adds              don't look for any files that could be added [DEFAULT]
# @flag --look-for-replaces             look for replaces that could be marked
# @flag --dont-look-for-replaces
# @flag --no-look-for-replaces          don't look for any replaces [DEFAULT]
# @flag --look-for-moves                look for files that may be moved/renamed
# @flag --dont-look-for-moves
# @flag --no-look-for-moves             don't look for any files that could be moved/renamed [DEFAULT]
# @option --repodir <DIRECTORY>         specify the repository directory in which to run
# @flag -u --unified                    output changes in a darcs-specific format similar to diff -u
# @flag --no-unified                    output changes in darcs' usual format [DEFAULT]
# @flag --myers                         use myers diff algorithm
# @flag --patience                      use patience diff algorithm [DEFAULT]
# @flag --help                          show a description of the command and its options
# @flag --list-options                  show plain list of available options and commands, for auto-completion
# @flag --disable                       disable this command
# @flag -q --quiet                      suppress informational output
# @flag --standard-verbosity            neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                    enable verbose output
# @flag --compress                      compress patch data [DEFAULT]
# @flag --dont-compress
# @flag --no-compress                   don't compress patch data
# @flag --ignore-times                  don't trust the file modification times
# @flag --no-ignore-times               trust modification times to find modified files [DEFAULT]
# @option --umask                       specify umask to use when writing
# @flag --set-scripts-executable        make scripts executable
# @flag --dont-set-scripts-executable
# @flag --no-set-scripts-executable     don't make scripts executable [DEFAULT]
# @flag --no-cache                      don't use patch caches
# @option --prehook <COMMAND>           specify command to run before this darcs command
# @flag --no-prehook                    don't run prehook command [DEFAULT]
# @flag --prompt-prehook                prompt before running prehook
# @flag --run-prehook                   run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>          specify command to run after this darcs command
# @flag --no-posthook                   don't run posthook command [DEFAULT]
# @flag --prompt-posthook               prompt before running posthook
# @flag --run-posthook                  run posthook command without prompting [DEFAULT]
# @flag --debug                         enable general debug output
# @flag --debug-http                    debug output from libcurl
# @flag --timings                       provide debugging timings information
# @arg file-or-directory* <FILE or DIRECTORY>
amend() {
    :;
}
# }} darcs amend

# {{ darcs rebase
# @cmd Edit several patches at once.
# @flag --help            show a description of the command and its options
# @flag --list-options    show plain list of available options and commands, for auto-completion
# @flag --disable         disable this command
rebase() {
    :;
}

# {{{ darcs rebase pull
# @cmd Copy and apply patches from another repository, suspending any local patches that conflict.
# @option --matches <PATTERN>             select patches matching PATTERN
# @option -p --patches <REGEXP>           select patches matching REGEXP
# @option -t --tags <REGEXP>              select tags matching REGEXP
# @option -h --hash                       select a single patch with HASH
# @flag --reorder-patches                 put local-only patches on top of remote ones
# @flag --no-reorder-patches              put remote-only patches on top of local ones [DEFAULT]
# @flag -a --all
# @flag --no-interactive                  answer yes to all patches
# @flag -i --interactive                  prompt user interactively
# @flag --mark-conflicts                  mark conflicts [DEFAULT]
# @flag --allow-conflicts                 allow conflicts, but don't mark them
# @flag --dont-allow-conflicts
# @flag --no-allow-conflicts
# @flag --no-resolve-conflicts            fail if there are patches that would create conflicts
# @flag --skip-conflicts                  filter out any patches that would create conflicts
# @option --external-merge <COMMAND>      use external tool to merge conflicts
# @flag --test                            run the test script
# @flag --no-test                         don't run the test script [DEFAULT]
# @flag --dry-run                         don't actually take the action
# @flag --xml-output                      generate XML formatted output
# @flag -s --summary                      summarize changes
# @flag --no-summary                      don't summarize changes
# @flag --no-deps                         don't automatically fulfill dependencies
# @flag --auto-deps
# @flag --dont-prompt-for-dependencies    don't ask about patches that are depended on by matched patches (with --match or --patch)
# @flag --prompt-deps
# @flag --prompt-for-dependencies         prompt about patches that are depended on by matched patches [DEFAULT]
# @option --repodir <DIRECTORY>           specify the repository directory in which to run
# @flag --ignore-unrelated-repos          do not check if repositories are unrelated
# @flag --myers                           use myers diff algorithm
# @flag --patience                        use patience diff algorithm [DEFAULT]
# @flag --help                            show a description of the command and its options
# @flag --list-options                    show plain list of available options and commands, for auto-completion
# @flag --disable                         disable this command
# @flag -q --quiet                        suppress informational output
# @flag --standard-verbosity              neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                      enable verbose output
# @flag --intersection                    take intersection of all repositories
# @flag --union                           take union of all repositories [DEFAULT]
# @flag --complement                      take complement of repositories (in order listed)
# @flag --compress                        compress patch data [DEFAULT]
# @flag --dont-compress
# @flag --no-compress                     don't compress patch data
# @flag --ignore-times                    don't trust the file modification times
# @flag --no-ignore-times                 trust modification times to find modified files [DEFAULT]
# @option --remote-repo <URL>             specify the remote repository URL to work with
# @flag --set-scripts-executable          make scripts executable
# @flag --dont-set-scripts-executable
# @flag --no-set-scripts-executable       don't make scripts executable [DEFAULT]
# @option --umask                         specify umask to use when writing
# @flag --reverse                         show/consider changes in reverse order
# @flag --no-reverse                      show/consider changes in the usual order [DEFAULT]
# @flag --no-http-pipelining              disable HTTP pipelining
# @option --remote-darcs <COMMAND>        name of the darcs executable on the remote server
# @flag --no-cache                        don't use patch caches
# @option --prehook <COMMAND>             specify command to run before this darcs command
# @flag --no-prehook                      don't run prehook command [DEFAULT]
# @flag --prompt-prehook                  prompt before running prehook
# @flag --run-prehook                     run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>            specify command to run after this darcs command
# @flag --no-posthook                     don't run posthook command [DEFAULT]
# @flag --prompt-posthook                 prompt before running posthook
# @flag --run-posthook                    run posthook command without prompting [DEFAULT]
# @flag --debug                           enable general debug output
# @flag --debug-http                      debug output from libcurl
# @flag --timings                         provide debugging timings information
# @arg repository*
rebase::pull() {
    :;
}
# }}} darcs rebase pull

# {{{ darcs rebase apply
# @cmd Apply a patch bundle, suspending any local patches that conflict.
# @option --verify <PUBRING>           verify that the patch was signed by a key in PUBRING
# @option --verify-ssl <KEYS>          verify using openSSL with authorized keys from file KEYS
# @flag --no-verify                    don't verify patch signature [DEFAULT]
# @flag --reorder-patches              put local-only patches on top of remote ones
# @flag --no-reorder-patches           put remote-only patches on top of local ones [DEFAULT]
# @flag -a --all
# @flag --no-interactive               answer yes to all patches
# @flag -i --interactive               prompt user interactively
# @flag --dry-run                      don't actually take the action
# @flag --xml-output                   generate XML formatted output
# @option --matches <PATTERN>          select patches matching PATTERN
# @option -p --patches <REGEXP>        select patches matching REGEXP
# @option -t --tags <REGEXP>           select tags matching REGEXP
# @option -h --hash                    select a single patch with HASH
# @option --repodir <DIRECTORY>        specify the repository directory in which to run
# @flag --myers                        use myers diff algorithm
# @flag --patience                     use patience diff algorithm [DEFAULT]
# @flag --help                         show a description of the command and its options
# @flag --list-options                 show plain list of available options and commands, for auto-completion
# @flag --disable                      disable this command
# @flag -q --quiet                     suppress informational output
# @flag --standard-verbosity           neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                   enable verbose output
# @flag --ignore-times                 don't trust the file modification times
# @flag --no-ignore-times              trust modification times to find modified files [DEFAULT]
# @flag --compress                     compress patch data [DEFAULT]
# @flag --dont-compress
# @flag --no-compress                  don't compress patch data
# @flag --set-scripts-executable       make scripts executable
# @flag --dont-set-scripts-executable
# @flag --no-set-scripts-executable    don't make scripts executable [DEFAULT]
# @option --umask                      specify umask to use when writing
# @flag --reverse                      show/consider changes in reverse order
# @flag --no-reverse                   show/consider changes in the usual order [DEFAULT]
# @flag --pause-for-gui                pause for an external diff or merge command to finish [DEFAULT]
# @flag --no-pause-for-gui             return immediately after external diff or merge command finishes
# @flag --no-cache                     don't use patch caches
# @option --prehook <COMMAND>          specify command to run before this darcs command
# @flag --no-prehook                   don't run prehook command [DEFAULT]
# @flag --prompt-prehook               prompt before running prehook
# @flag --run-prehook                  run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>         specify command to run after this darcs command
# @flag --no-posthook                  don't run posthook command [DEFAULT]
# @flag --prompt-posthook              prompt before running posthook
# @flag --run-posthook                 run posthook command without prompting [DEFAULT]
# @flag --debug                        enable general debug output
# @flag --debug-http                   debug output from libcurl
# @flag --timings                      provide debugging timings information
# @arg patchfile!
rebase::apply() {
    :;
}
# }}} darcs rebase apply

# {{{ darcs rebase suspend
# @cmd Select patches to move into a suspended state at the end of the repo.
# @option --not-in-remote <URL/PATH>      select all patches not in the default push/pull repository or at location URL/PATH
# @option --from-match <PATTERN>          select changes starting with a patch matching PATTERN
# @option --from-patch <REGEXP>           select changes starting with a patch matching REGEXP
# @option --from-hash <HASH>              select changes starting with a patch with HASH
# @option --from-tag <REGEXP>             select changes starting with a tag matching REGEXP
# @option --last <NUMBER>                 select the last NUMBER patches
# @option --matches <PATTERN>             select patches matching PATTERN
# @option -p --patches <REGEXP>           select patches matching REGEXP
# @option -t --tags <REGEXP>              select tags matching REGEXP
# @option -h --hash                       select a single patch with HASH
# @flag --no-deps                         don't automatically fulfill dependencies
# @flag --auto-deps
# @flag --dont-prompt-for-dependencies    don't ask about patches that are depended on by matched patches (with --match or --patch)
# @flag --prompt-deps
# @flag --prompt-for-dependencies         prompt about patches that are depended on by matched patches [DEFAULT]
# @flag -a --all
# @flag --no-interactive                  answer yes to all patches
# @flag -i --interactive                  prompt user interactively
# @flag -s --summary                      summarize changes
# @flag --no-summary                      don't summarize changes
# @flag --myers                           use myers diff algorithm
# @flag --patience                        use patience diff algorithm [DEFAULT]
# @flag --help                            show a description of the command and its options
# @flag --list-options                    show plain list of available options and commands, for auto-completion
# @flag --disable                         disable this command
# @flag -q --quiet                        suppress informational output
# @flag --standard-verbosity              neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                      enable verbose output
# @flag --reverse                         show/consider changes in reverse order
# @flag --no-reverse                      show/consider changes in the usual order [DEFAULT]
# @flag --ignore-times                    don't trust the file modification times
# @flag --no-ignore-times                 trust modification times to find modified files [DEFAULT]
# @option --umask                         specify umask to use when writing
# @flag --no-cache                        don't use patch caches
# @option --prehook <COMMAND>             specify command to run before this darcs command
# @flag --no-prehook                      don't run prehook command [DEFAULT]
# @flag --prompt-prehook                  prompt before running prehook
# @flag --run-prehook                     run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>            specify command to run after this darcs command
# @flag --no-posthook                     don't run posthook command [DEFAULT]
# @flag --prompt-posthook                 prompt before running posthook
# @flag --run-posthook                    run posthook command without prompting [DEFAULT]
# @flag --debug                           enable general debug output
# @flag --debug-http                      debug output from libcurl
# @flag --timings                         provide debugging timings information
rebase::suspend() {
    :;
}
# }}} darcs rebase suspend

# {{{ darcs rebase unsuspend
# @cmd Select suspended patches to restore to the end of the repo.
# @flag --mark-conflicts                mark conflicts [DEFAULT]
# @flag --allow-conflicts               allow conflicts, but don't mark them
# @flag --dont-allow-conflicts
# @flag --no-allow-conflicts
# @flag --no-resolve-conflicts          fail if there are patches that would create conflicts
# @flag --skip-conflicts                filter out any patches that would create conflicts
# @option --to-match <PATTERN>          select changes up to a patch matching PATTERN
# @option --to-patch <REGEXP>           select changes up to a patch matching REGEXP
# @option --to-hash <HASH>              select changes up to a patch with HASH
# @option --to-tag <REGEXP>             select changes up to a tag matching REGEXP
# @option --last <NUMBER>               select the last NUMBER patches
# @option --matches <PATTERN>           select patches matching PATTERN
# @option -p --patches <REGEXP>         select patches matching REGEXP
# @option -t --tags <REGEXP>            select tags matching REGEXP
# @option -h --hash                     select a single patch with HASH
# @flag -a --all
# @flag --no-interactive                answer yes to all patches
# @flag -i --interactive                prompt user interactively
# @flag -s --summary                    summarize changes
# @flag --no-summary                    don't summarize changes
# @option --external-merge <COMMAND>    use external tool to merge conflicts
# @flag --keep-date                     keep the date of the original patch
# @flag --no-keep-date                  use the current date for the amended patch [DEFAULT]
# @option -A --author <EMAIL>           specify author id
# @flag --myers                         use myers diff algorithm
# @flag --patience                      use patience diff algorithm [DEFAULT]
# @flag --help                          show a description of the command and its options
# @flag --list-options                  show plain list of available options and commands, for auto-completion
# @flag --disable                       disable this command
# @flag -q --quiet                      suppress informational output
# @flag --standard-verbosity            neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                    enable verbose output
# @flag --ignore-times                  don't trust the file modification times
# @flag --no-ignore-times               trust modification times to find modified files [DEFAULT]
# @flag --no-cache                      don't use patch caches
# @option --prehook <COMMAND>           specify command to run before this darcs command
# @flag --no-prehook                    don't run prehook command [DEFAULT]
# @flag --prompt-prehook                prompt before running prehook
# @flag --run-prehook                   run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>          specify command to run after this darcs command
# @flag --no-posthook                   don't run posthook command [DEFAULT]
# @flag --prompt-posthook               prompt before running posthook
# @flag --run-posthook                  run posthook command without prompting [DEFAULT]
# @flag --debug                         enable general debug output
# @flag --debug-http                    debug output from libcurl
# @flag --timings                       provide debugging timings information
rebase::unsuspend() {
    :;
}
# }}} darcs rebase unsuspend

# {{{ darcs rebase obliterate
# @cmd Obliterate a patch that is currently suspended.
# @flag --myers                   use myers diff algorithm
# @flag --patience                use patience diff algorithm [DEFAULT]
# @flag --help                    show a description of the command and its options
# @flag --list-options            show plain list of available options and commands, for auto-completion
# @flag --disable                 disable this command
# @flag -q --quiet                suppress informational output
# @flag --standard-verbosity      neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose              enable verbose output
# @flag --no-cache                don't use patch caches
# @option --prehook <COMMAND>     specify command to run before this darcs command
# @flag --no-prehook              don't run prehook command [DEFAULT]
# @flag --prompt-prehook          prompt before running prehook
# @flag --run-prehook             run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>    specify command to run after this darcs command
# @flag --no-posthook             don't run posthook command [DEFAULT]
# @flag --prompt-posthook         prompt before running posthook
# @flag --run-posthook            run posthook command without prompting [DEFAULT]
# @flag --debug                   enable general debug output
# @flag --debug-http              debug output from libcurl
# @flag --timings                 provide debugging timings information
rebase::obliterate() {
    :;
}
# }}} darcs rebase obliterate

# {{{ darcs rebase log
# @cmd List the currently suspended changes.
# @flag -s --summary              summarize changes
# @flag --no-summary              don't summarize changes
# @flag -a --all
# @flag --no-interactive          answer yes to all patches
# @flag -i --interactive          prompt user interactively
# @flag --help                    show a description of the command and its options
# @flag --list-options            show plain list of available options and commands, for auto-completion
# @flag --disable                 disable this command
# @flag -q --quiet                suppress informational output
# @flag --standard-verbosity      neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose              enable verbose output
# @flag --no-cache                don't use patch caches
# @option --prehook <COMMAND>     specify command to run before this darcs command
# @flag --no-prehook              don't run prehook command [DEFAULT]
# @flag --prompt-prehook          prompt before running prehook
# @flag --run-prehook             run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>    specify command to run after this darcs command
# @flag --no-posthook             don't run posthook command [DEFAULT]
# @flag --prompt-posthook         prompt before running posthook
# @flag --run-posthook            run posthook command without prompting [DEFAULT]
# @flag --debug                   enable general debug output
# @flag --debug-http              debug output from libcurl
# @flag --timings                 provide debugging timings information
rebase::log() {
    :;
}
# }}} darcs rebase log

# {{{ darcs rebase upgrade
# @cmd Upgrade a repo with an old-style rebase in progress.
# @flag --help                    show a description of the command and its options
# @flag --list-options            show plain list of available options and commands, for auto-completion
# @flag --disable                 disable this command
# @flag -q --quiet                suppress informational output
# @flag --standard-verbosity      neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose              enable verbose output
# @flag --no-cache                don't use patch caches
# @option --prehook <COMMAND>     specify command to run before this darcs command
# @flag --no-prehook              don't run prehook command [DEFAULT]
# @flag --prompt-prehook          prompt before running prehook
# @flag --run-prehook             run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>    specify command to run after this darcs command
# @flag --no-posthook             don't run posthook command [DEFAULT]
# @flag --prompt-posthook         prompt before running posthook
# @flag --run-posthook            run posthook command without prompting [DEFAULT]
# @flag --debug                   enable general debug output
# @flag --debug-http              debug output from libcurl
# @flag --timings                 provide debugging timings information
rebase::upgrade() {
    :;
}
# }}} darcs rebase upgrade
# }} darcs rebase

# {{ darcs rollback
# @cmd Apply the inverse of recorded changes to the working tree.
# @option --from-match <PATTERN>    select changes starting with a patch matching PATTERN
# @option --from-patch <REGEXP>     select changes starting with a patch matching REGEXP
# @option --from-hash <HASH>        select changes starting with a patch with HASH
# @option --from-tag <REGEXP>       select changes starting with a tag matching REGEXP
# @option --last <NUMBER>           select the last NUMBER patches
# @option --matches <PATTERN>       select patches matching PATTERN
# @option -p --patches <REGEXP>     select patches matching REGEXP
# @option -t --tags <REGEXP>        select tags matching REGEXP
# @option -h --hash                 select a single patch with HASH
# @flag -a --all
# @flag --no-interactive            answer yes to all patches
# @flag -i --interactive            prompt user interactively
# @option --repodir <DIRECTORY>     specify the repository directory in which to run
# @flag --myers                     use myers diff algorithm
# @flag --patience                  use patience diff algorithm [DEFAULT]
# @flag --help                      show a description of the command and its options
# @flag --list-options              show plain list of available options and commands, for auto-completion
# @flag --disable                   disable this command
# @flag -q --quiet                  suppress informational output
# @flag --standard-verbosity        neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                enable verbose output
# @option --umask                   specify umask to use when writing
# @flag --no-cache                  don't use patch caches
# @option --prehook <COMMAND>       specify command to run before this darcs command
# @flag --no-prehook                don't run prehook command [DEFAULT]
# @flag --prompt-prehook            prompt before running prehook
# @flag --run-prehook               run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>      specify command to run after this darcs command
# @flag --no-posthook               don't run posthook command [DEFAULT]
# @flag --prompt-posthook           prompt before running posthook
# @flag --run-posthook              run posthook command without prompting [DEFAULT]
# @flag --debug                     enable general debug output
# @flag --debug-http                debug output from libcurl
# @flag --timings                   provide debugging timings information
# @arg file-or-directory* <FILE or DIRECTORY>
rollback() {
    :;
}
# }} darcs rollback

# {{ darcs unrecord
# @cmd Remove recorded patches without changing the working tree.
# @option --not-in-remote <URL/PATH>      select all patches not in the default push/pull repository or at location URL/PATH
# @option --from-match <PATTERN>          select changes starting with a patch matching PATTERN
# @option --from-patch <REGEXP>           select changes starting with a patch matching REGEXP
# @option --from-hash <HASH>              select changes starting with a patch with HASH
# @option --from-tag <REGEXP>             select changes starting with a tag matching REGEXP
# @option --last <NUMBER>                 select the last NUMBER patches
# @option --matches <PATTERN>             select patches matching PATTERN
# @option -p --patches <REGEXP>           select patches matching REGEXP
# @option -t --tags <REGEXP>              select tags matching REGEXP
# @option -h --hash                       select a single patch with HASH
# @flag --no-deps                         don't automatically fulfill dependencies
# @flag --auto-deps
# @flag --dont-prompt-for-dependencies    don't ask about patches that are depended on by matched patches (with --match or --patch)
# @flag --prompt-deps
# @flag --prompt-for-dependencies         prompt about patches that are depended on by matched patches [DEFAULT]
# @flag -a --all
# @flag --no-interactive                  answer yes to all patches
# @flag -i --interactive                  prompt user interactively
# @option --repodir <DIRECTORY>           specify the repository directory in which to run
# @flag --help                            show a description of the command and its options
# @flag --list-options                    show plain list of available options and commands, for auto-completion
# @flag --disable                         disable this command
# @flag -q --quiet                        suppress informational output
# @flag --standard-verbosity              neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                      enable verbose output
# @flag --compress                        compress patch data [DEFAULT]
# @flag --dont-compress
# @flag --no-compress                     don't compress patch data
# @option --umask                         specify umask to use when writing
# @flag --reverse                         show/consider changes in reverse order
# @flag --no-reverse                      show/consider changes in the usual order [DEFAULT]
# @flag --no-cache                        don't use patch caches
# @option --prehook <COMMAND>             specify command to run before this darcs command
# @flag --no-prehook                      don't run prehook command [DEFAULT]
# @flag --prompt-prehook                  prompt before running prehook
# @flag --run-prehook                     run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>            specify command to run after this darcs command
# @flag --no-posthook                     don't run posthook command [DEFAULT]
# @flag --prompt-posthook                 prompt before running posthook
# @flag --run-posthook                    run posthook command without prompting [DEFAULT]
# @flag --debug                           enable general debug output
# @flag --debug-http                      debug output from libcurl
# @flag --timings                         provide debugging timings information
unrecord() {
    :;
}
# }} darcs unrecord

# {{ darcs obliterate
# @cmd Delete selected patches from the repository.
# @option --not-in-remote <URL/PATH>           select all patches not in the default push/pull repository or at location URL/PATH
# @option --from-match <PATTERN>               select changes starting with a patch matching PATTERN
# @option --from-patch <REGEXP>                select changes starting with a patch matching REGEXP
# @option --from-hash <HASH>                   select changes starting with a patch with HASH
# @option --from-tag <REGEXP>                  select changes starting with a tag matching REGEXP
# @option --last <NUMBER>                      select the last NUMBER patches
# @option --matches <PATTERN>                  select patches matching PATTERN
# @option -p --patches <REGEXP>                select patches matching REGEXP
# @option -t --tags <REGEXP>                   select tags matching REGEXP
# @option -h --hash                            select a single patch with HASH
# @flag --no-deps                              don't automatically fulfill dependencies
# @flag --auto-deps
# @flag --dont-prompt-for-dependencies         don't ask about patches that are depended on by matched patches (with --match or --patch)
# @flag --prompt-deps
# @flag --prompt-for-dependencies              prompt about patches that are depended on by matched patches [DEFAULT]
# @flag -a --all
# @flag --no-interactive                       answer yes to all patches
# @flag -i --interactive                       prompt user interactively
# @option --repodir <DIRECTORY>                specify the repository directory in which to run
# @flag -s --summary                           summarize changes
# @flag --no-summary                           don't summarize changes
# @option -o --output <FILE>                   specify output filename
# @option -O --output-auto-name <DIRECTORY>    output to automatically named file in DIRECTORY, default: current directory
# @flag --minimize                             minimize context of patch bundle [DEFAULT]
# @flag --no-minimize                          don't minimize context of patch bundle
# @flag --myers                                use myers diff algorithm
# @flag --patience                             use patience diff algorithm [DEFAULT]
# @flag --dry-run                              don't actually take the action
# @flag --xml-output                           generate XML formatted output
# @flag --help                                 show a description of the command and its options
# @flag --list-options                         show plain list of available options and commands, for auto-completion
# @flag --disable                              disable this command
# @flag -q --quiet                             suppress informational output
# @flag --standard-verbosity                   neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                           enable verbose output
# @flag --compress                             compress patch data [DEFAULT]
# @flag --dont-compress
# @flag --no-compress                          don't compress patch data
# @flag --ignore-times                         don't trust the file modification times
# @flag --no-ignore-times                      trust modification times to find modified files [DEFAULT]
# @option --umask                              specify umask to use when writing
# @flag --reverse                              show/consider changes in reverse order
# @flag --no-reverse                           show/consider changes in the usual order [DEFAULT]
# @flag --no-cache                             don't use patch caches
# @option --prehook <COMMAND>                  specify command to run before this darcs command
# @flag --no-prehook                           don't run prehook command [DEFAULT]
# @flag --prompt-prehook                       prompt before running prehook
# @flag --run-prehook                          run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>                 specify command to run after this darcs command
# @flag --no-posthook                          don't run posthook command [DEFAULT]
# @flag --prompt-posthook                      prompt before running posthook
# @flag --run-posthook                         run posthook command without prompting [DEFAULT]
# @flag --debug                                enable general debug output
# @flag --debug-http                           debug output from libcurl
# @flag --timings                              provide debugging timings information
obliterate() {
    :;
}
# }} darcs obliterate

# {{ darcs tag
# @cmd Name the current repository state for future reference.
# @option -m --name <PATCHNAME>    name of patch
# @option -A --author <EMAIL>      specify author id
# @flag --pipe                     ask user interactively for the patch metadata
# @flag --edit-long-comment        edit the long comment by default
# @flag --skip-long-comment        don't give a long comment
# @flag --prompt-long-comment      prompt for whether to edit the long comment
# @flag --ask-deps                 manually select dependencies
# @flag --no-ask-deps              automatically select dependencies [DEFAULT]
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @flag --compress                 compress patch data [DEFAULT]
# @flag --dont-compress
# @flag --no-compress              don't compress patch data
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg tagname
tag() {
    :;
}
# }} darcs tag

# {{ darcs setpref
# @cmd Set a preference (test, predist, boringfile, or binariesfile).
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg pref!
# @arg value!
setpref() {
    :;
}
# }} darcs setpref

# {{ darcs send
# @cmd Prepare a bundle of patches to be applied to some target repository.
# @option --matches <PATTERN>                  select patches matching PATTERN
# @option -p --patches <REGEXP>                select patches matching REGEXP
# @option -t --tags <REGEXP>                   select tags matching REGEXP
# @option -h --hash                            select a single patch with HASH
# @flag --no-deps                              don't automatically fulfill dependencies
# @flag --auto-deps
# @flag --dont-prompt-for-dependencies         don't ask about patches that are depended on by matched patches (with --match or --patch)
# @flag --prompt-deps
# @flag --prompt-for-dependencies              prompt about patches that are depended on by matched patches [DEFAULT]
# @flag -a --all
# @flag --no-interactive                       answer yes to all patches
# @flag -i --interactive                       prompt user interactively
# @option --to <EMAIL>                         specify destination email
# @option --cc <EMAIL>                         mail results to additional EMAIL(s)
# @option --from <EMAIL>                       specify email address
# @option --subject                            specify mail subject
# @option --in-reply-to <EMAIL>                specify in-reply-to header
# @option -A --author <EMAIL>                  specify author id
# @option --charset                            specify mail charset
# @flag --mail                                 send patch using sendmail
# @option --sendmail-command <COMMAND>         specify sendmail command
# @option -o --output <FILE>                   specify output filename
# @option -O --output-auto-name <DIRECTORY>    output to automatically named file in DIRECTORY, default: current directory
# @flag --sign                                 sign the patch with your gpg key
# @option --sign-as <KEYID>                    sign the patch with a given keyid
# @option --sign-ssl <IDFILE>                  sign the patch using openssl with a given private key
# @flag --dont-sign
# @flag --no-sign                              don't sign the patch [DEFAULT]
# @flag --dry-run                              don't actually take the action
# @flag --xml-output                           generate XML formatted output
# @flag -s --summary                           summarize changes
# @flag --no-summary                           don't summarize changes
# @flag --edit-description                     edit the patch bundle description [DEFAULT]
# @flag --dont-edit-description
# @flag --no-edit-description                  don't edit the patch bundle description
# @flag --set-default                          set default repository
# @flag --no-set-default                       don't set default repository
# @flag --inherit-default                      inherit default repository
# @flag --no-inherit-default                   don't inherit default repository [DEFAULT]
# @option --repodir <DIRECTORY>                specify the repository directory in which to run
# @flag --minimize                             minimize context of patch bundle [DEFAULT]
# @flag --no-minimize                          don't minimize context of patch bundle
# @flag --ignore-unrelated-repos               do not check if repositories are unrelated
# @flag --help                                 show a description of the command and its options
# @flag --list-options                         show plain list of available options and commands, for auto-completion
# @flag --disable                              disable this command
# @flag -q --quiet                             suppress informational output
# @flag --standard-verbosity                   neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                           enable verbose output
# @option --logfile <FILE>                     give patch name and comment in file
# @flag --delete-logfile                       delete the logfile when done
# @flag --no-delete-logfile                    keep the logfile when done [DEFAULT]
# @option --remote-repo <URL>                  specify the remote repository URL to work with
# @option --context <FILENAME>                 send to context stored in FILENAME
# @flag --reverse                              show/consider changes in reverse order
# @flag --no-reverse                           show/consider changes in the usual order [DEFAULT]
# @flag --no-http-pipelining                   disable HTTP pipelining
# @option --remote-darcs <COMMAND>             name of the darcs executable on the remote server
# @flag --no-cache                             don't use patch caches
# @option --prehook <COMMAND>                  specify command to run before this darcs command
# @flag --no-prehook                           don't run prehook command [DEFAULT]
# @flag --prompt-prehook                       prompt before running prehook
# @flag --run-prehook                          run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>                 specify command to run after this darcs command
# @flag --no-posthook                          don't run posthook command [DEFAULT]
# @flag --prompt-posthook                      prompt before running posthook
# @flag --run-posthook                         run posthook command without prompting [DEFAULT]
# @flag --debug                                enable general debug output
# @flag --debug-http                           debug output from libcurl
# @flag --timings                              provide debugging timings information
# @arg repository
send() {
    :;
}
# }} darcs send

# {{ darcs apply
# @cmd Apply a patch bundle created by `darcs send'.
# @option --verify <PUBRING>            verify that the patch was signed by a key in PUBRING
# @option --verify-ssl <KEYS>           verify using openSSL with authorized keys from file KEYS
# @flag --no-verify                     don't verify patch signature [DEFAULT]
# @flag --reorder-patches               put local-only patches on top of remote ones
# @flag --no-reorder-patches            put remote-only patches on top of local ones [DEFAULT]
# @flag -a --all
# @flag --no-interactive                answer yes to all patches
# @flag -i --interactive                prompt user interactively
# @flag --dry-run                       don't actually take the action
# @flag --xml-output                    generate XML formatted output
# @option --matches <PATTERN>           select patches matching PATTERN
# @option -p --patches <REGEXP>         select patches matching REGEXP
# @option -t --tags <REGEXP>            select tags matching REGEXP
# @option -h --hash                     select a single patch with HASH
# @flag --mark-conflicts                mark conflicts
# @flag --allow-conflicts               allow conflicts, but don't mark them
# @flag --dont-allow-conflicts
# @flag --no-allow-conflicts
# @flag --no-resolve-conflicts          fail if there are patches that would create conflicts [DEFAULT]
# @flag --skip-conflicts                filter out any patches that would create conflicts
# @option --external-merge <COMMAND>    use external tool to merge conflicts
# @flag --test                          run the test script
# @flag --no-test                       don't run the test script [DEFAULT]
# @flag --leave-test-directory          don't remove the test directory
# @flag --remove-test-directory         remove the test directory [DEFAULT]
# @option --repodir <DIRECTORY>         specify the repository directory in which to run
# @flag --myers                         use myers diff algorithm
# @flag --patience                      use patience diff algorithm [DEFAULT]
# @flag --help                          show a description of the command and its options
# @flag --list-options                  show plain list of available options and commands, for auto-completion
# @flag --disable                       disable this command
# @flag -q --quiet                      suppress informational output
# @flag --standard-verbosity            neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                    enable verbose output
# @flag --ignore-times                  don't trust the file modification times
# @flag --no-ignore-times               trust modification times to find modified files [DEFAULT]
# @flag --compress                      compress patch data [DEFAULT]
# @flag --dont-compress
# @flag --no-compress                   don't compress patch data
# @flag --set-scripts-executable        make scripts executable
# @flag --dont-set-scripts-executable
# @flag --no-set-scripts-executable     don't make scripts executable [DEFAULT]
# @option --umask                       specify umask to use when writing
# @flag --reverse                       show/consider changes in reverse order
# @flag --no-reverse                    show/consider changes in the usual order [DEFAULT]
# @flag --pause-for-gui                 pause for an external diff or merge command to finish [DEFAULT]
# @flag --no-pause-for-gui              return immediately after external diff or merge command finishes
# @flag --no-cache                      don't use patch caches
# @option --prehook <COMMAND>           specify command to run before this darcs command
# @flag --no-prehook                    don't run prehook command [DEFAULT]
# @flag --prompt-prehook                prompt before running prehook
# @flag --run-prehook                   run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>          specify command to run after this darcs command
# @flag --no-posthook                   don't run posthook command [DEFAULT]
# @flag --prompt-posthook               prompt before running posthook
# @flag --run-posthook                  run posthook command without prompting [DEFAULT]
# @flag --debug                         enable general debug output
# @flag --debug-http                    debug output from libcurl
# @flag --timings                       provide debugging timings information
# @arg patchfile!
apply() {
    :;
}
# }} darcs apply

# {{ darcs optimize
# @cmd Optimize the repository.
# @flag --help            show a description of the command and its options
# @flag --list-options    show plain list of available options and commands, for auto-completion
# @flag --disable         disable this command
optimize() {
    :;
}

# {{{ darcs optimize clean
# @cmd garbage collect pristine, inventories and patches
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
optimize::clean() {
    :;
}
# }}} darcs optimize clean

# {{{ darcs optimize http
# @cmd optimize repository for getting over network
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
optimize::http() {
    :;
}
# }}} darcs optimize http

# {{{ darcs optimize reorder
# @cmd reorder the patches in the repository
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
optimize::reorder() {
    :;
}
# }}} darcs optimize reorder

# {{{ darcs optimize enable-patch-index
# @cmd Enable patch index
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
optimize::enable-patch-index() {
    :;
}
# }}} darcs optimize enable-patch-index

# {{{ darcs optimize disable-patch-index
# @cmd Disable patch index
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
optimize::disable-patch-index() {
    :;
}
# }}} darcs optimize disable-patch-index

# {{{ darcs optimize compress
# @cmd compress patches and inventories
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
optimize::compress() {
    :;
}
# }}} darcs optimize compress

# {{{ darcs optimize uncompress
# @cmd uncompress patches and inventories
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
optimize::uncompress() {
    :;
}
# }}} darcs optimize uncompress

# {{{ darcs optimize relink
# @cmd relink random internal data to a sibling
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @option --sibling <DIRECTORY>    specify a sibling directory
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
optimize::relink() {
    :;
}
# }}} darcs optimize relink

# {{{ darcs optimize pristine
# @cmd optimize hashed pristine layout
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
optimize::pristine() {
    :;
}
# }}} darcs optimize pristine

# {{{ darcs optimize upgrade
# @cmd upgrade repository to latest compatible format
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
optimize::upgrade() {
    :;
}
# }}} darcs optimize upgrade

# {{{ darcs optimize cache
# @cmd garbage collect global cache
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg directory+
optimize::cache() {
    :;
}
# }}} darcs optimize cache
# }} darcs optimize

# {{ darcs dist
# @cmd Create a distribution archive.
# @option -d --dist-name <DISTNAME>    name of version
# @flag --zip                          generate zip archive instead of gzip'ed tar
# @option --repodir <DIRECTORY>        specify the repository directory in which to run
# @option --match <PATTERN>            select a single patch matching PATTERN
# @option -p --patch <REGEXP>          select a single patch matching REGEXP
# @option -h --hash                    select a single patch with HASH
# @option -t --tag <REGEXP>            select tag matching REGEXP
# @option -n --index <N>               select one patch
# @flag --set-scripts-executable       make scripts executable
# @flag --dont-set-scripts-executable
# @flag --no-set-scripts-executable    don't make scripts executable [DEFAULT]
# @flag --store-in-memory              do patch application in memory rather than on disk
# @flag --no-store-in-memory           do patch application on disk [DEFAULT]
# @flag --help                         show a description of the command and its options
# @flag --list-options                 show plain list of available options and commands, for auto-completion
# @flag --disable                      disable this command
# @flag -q --quiet                     suppress informational output
# @flag --standard-verbosity           neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                   enable verbose output
# @flag --no-cache                     don't use patch caches
# @option --prehook <COMMAND>          specify command to run before this darcs command
# @flag --no-prehook                   don't run prehook command [DEFAULT]
# @flag --prompt-prehook               prompt before running prehook
# @flag --run-prehook                  run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>         specify command to run after this darcs command
# @flag --no-posthook                  don't run posthook command [DEFAULT]
# @flag --prompt-posthook              prompt before running posthook
# @flag --run-posthook                 run posthook command without prompting [DEFAULT]
# @flag --debug                        enable general debug output
# @flag --debug-http                   debug output from libcurl
# @flag --timings                      provide debugging timings information
dist() {
    :;
}
# }} darcs dist

# {{ darcs mark-conflicts
# @cmd Mark unresolved conflicts in working tree, for manual resolution.
# @flag --ignore-times             don't trust the file modification times
# @flag --no-ignore-times          trust modification times to find modified files [DEFAULT]
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --myers                    use myers diff algorithm
# @flag --patience                 use patience diff algorithm [DEFAULT]
# @flag --dry-run                  don't actually take the action
# @flag --xml-output               generate XML formatted output
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
# @arg file-or-directory* <FILE or DIRECTORY>
mark-conflicts() {
    :;
}
# }} darcs mark-conflicts

# {{ darcs repair
# @cmd Repair a corrupted repository.
# @option --repodir <DIRECTORY>    specify the repository directory in which to run
# @flag --ignore-times             don't trust the file modification times
# @flag --no-ignore-times          trust modification times to find modified files [DEFAULT]
# @flag --myers                    use myers diff algorithm
# @flag --patience                 use patience diff algorithm [DEFAULT]
# @flag --dry-run                  don't actually take the action
# @flag --help                     show a description of the command and its options
# @flag --list-options             show plain list of available options and commands, for auto-completion
# @flag --disable                  disable this command
# @flag -q --quiet                 suppress informational output
# @flag --standard-verbosity       neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose               enable verbose output
# @option --umask                  specify umask to use when writing
# @flag --no-cache                 don't use patch caches
# @option --prehook <COMMAND>      specify command to run before this darcs command
# @flag --no-prehook               don't run prehook command [DEFAULT]
# @flag --prompt-prehook           prompt before running prehook
# @flag --run-prehook              run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>     specify command to run after this darcs command
# @flag --no-posthook              don't run posthook command [DEFAULT]
# @flag --prompt-posthook          prompt before running posthook
# @flag --run-posthook             run posthook command without prompting [DEFAULT]
# @flag --debug                    enable general debug output
# @flag --debug-http               debug output from libcurl
# @flag --timings                  provide debugging timings information
repair() {
    :;
}
# }} darcs repair

# {{ darcs convert
# @cmd Convert repositories between various formats.
# @flag --help            show a description of the command and its options
# @flag --list-options    show plain list of available options and commands, for auto-completion
# @flag --disable         disable this command
convert() {
    :;
}

# {{{ darcs convert darcs-2
# @cmd Convert darcs-1 repository to the darcs-2 patch format
# @option --repo-name <DIRECTORY>
# @option --repodir <DIRECTORY>        path of output directory
# @flag --set-scripts-executable       make scripts executable
# @flag --dont-set-scripts-executable
# @flag --no-set-scripts-executable    don't make scripts executable [DEFAULT]
# @flag --with-working-dir             Create a working tree (normal repository) [DEFAULT]
# @flag --no-working-dir               Do not create a working tree (bare repository)
# @flag --help                         show a description of the command and its options
# @flag --list-options                 show plain list of available options and commands, for auto-completion
# @flag --disable                      disable this command
# @flag -q --quiet                     suppress informational output
# @flag --standard-verbosity           neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                   enable verbose output
# @flag --no-http-pipelining           disable HTTP pipelining
# @option --remote-darcs <COMMAND>     name of the darcs executable on the remote server
# @flag --with-patch-index             build patch index
# @flag --no-patch-index               don't build patch index [DEFAULT]
# @option --umask                      specify umask to use when writing
# @flag --no-cache                     don't use patch caches
# @option --prehook <COMMAND>          specify command to run before this darcs command
# @flag --no-prehook                   don't run prehook command [DEFAULT]
# @flag --prompt-prehook               prompt before running prehook
# @flag --run-prehook                  run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>         specify command to run after this darcs command
# @flag --no-posthook                  don't run posthook command [DEFAULT]
# @flag --prompt-posthook              prompt before running posthook
# @flag --run-posthook                 run posthook command without prompting [DEFAULT]
# @flag --debug                        enable general debug output
# @flag --debug-http                   debug output from libcurl
# @flag --timings                      provide debugging timings information
# @arg source!
# @arg destination
convert::darcs-2() {
    :;
}
# }}} darcs convert darcs-2

# {{{ darcs convert export
# @cmd Export a darcs repository to a git-fast-import stream
# @option --repodir <DIRECTORY>       specify the repository directory in which to run
# @option --read-marks <FILE>         continue conversion, previously checkpointed by --write-marks
# @option --write-marks <FILE>        checkpoint conversion to continue it later
# @flag --help                        show a description of the command and its options
# @flag --list-options                show plain list of available options and commands, for auto-completion
# @flag --disable                     disable this command
# @flag -q --quiet                    suppress informational output
# @flag --standard-verbosity          neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                  enable verbose output
# @flag --no-http-pipelining          disable HTTP pipelining
# @option --remote-darcs <COMMAND>    name of the darcs executable on the remote server
# @flag --no-cache                    don't use patch caches
# @option --prehook <COMMAND>         specify command to run before this darcs command
# @flag --no-prehook                  don't run prehook command [DEFAULT]
# @flag --prompt-prehook              prompt before running prehook
# @flag --run-prehook                 run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>        specify command to run after this darcs command
# @flag --no-posthook                 don't run posthook command [DEFAULT]
# @flag --prompt-posthook             prompt before running posthook
# @flag --run-posthook                run posthook command without prompting [DEFAULT]
# @flag --debug                       enable general debug output
# @flag --debug-http                  debug output from libcurl
# @flag --timings                     provide debugging timings information
convert::export() {
    :;
}
# }}} darcs convert export

# {{{ darcs convert import
# @cmd Import from a git-fast-export stream into darcs
# @option --repo-name <DIRECTORY>
# @option --repodir <DIRECTORY>        path of output directory
# @flag --set-scripts-executable       make scripts executable
# @flag --dont-set-scripts-executable
# @flag --no-set-scripts-executable    don't make scripts executable [DEFAULT]
# @flag --darcs-3                      New darcs patch format
# @flag --darcs-2                      Standard darcs patch format [DEFAULT]
# @flag --darcs-1                      Older patch format (for compatibility)
# @flag --with-working-dir             Create a working tree (normal repository) [DEFAULT]
# @flag --no-working-dir               Do not create a working tree (bare repository)
# @flag --help                         show a description of the command and its options
# @flag --list-options                 show plain list of available options and commands, for auto-completion
# @flag --disable                      disable this command
# @flag -q --quiet                     suppress informational output
# @flag --standard-verbosity           neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                   enable verbose output
# @flag --with-patch-index             build patch index
# @flag --no-patch-index               don't build patch index [DEFAULT]
# @option --umask                      specify umask to use when writing
# @flag --no-cache                     don't use patch caches
# @option --prehook <COMMAND>          specify command to run before this darcs command
# @flag --no-prehook                   don't run prehook command [DEFAULT]
# @flag --prompt-prehook               prompt before running prehook
# @flag --run-prehook                  run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>         specify command to run after this darcs command
# @flag --no-posthook                  don't run posthook command [DEFAULT]
# @flag --prompt-posthook              prompt before running posthook
# @flag --run-posthook                 run posthook command without prompting [DEFAULT]
# @flag --debug                        enable general debug output
# @flag --debug-http                   debug output from libcurl
# @flag --timings                      provide debugging timings information
# @arg directory
convert::import() {
    :;
}
# }}} darcs convert import
# }} darcs convert

# {{ darcs fetch
# @cmd Fetch patches from another repository, but don't apply them.
# @option --matches <PATTERN>                  select patches matching PATTERN
# @option -p --patches <REGEXP>                select patches matching REGEXP
# @option -t --tags <REGEXP>                   select tags matching REGEXP
# @option -h --hash                            select a single patch with HASH
# @flag -a --all
# @flag --no-interactive                       answer yes to all patches
# @flag -i --interactive                       prompt user interactively
# @flag --dry-run                              don't actually take the action
# @flag -s --summary                           summarize changes
# @flag --no-summary                           don't summarize changes
# @flag --no-deps                              don't automatically fulfill dependencies
# @flag --auto-deps
# @flag --dont-prompt-for-dependencies         don't ask about patches that are depended on by matched patches (with --match or --patch)
# @flag --prompt-deps
# @flag --prompt-for-dependencies              prompt about patches that are depended on by matched patches [DEFAULT]
# @flag --set-default                          set default repository
# @flag --no-set-default                       don't set default repository
# @flag --inherit-default                      inherit default repository
# @flag --no-inherit-default                   don't inherit default repository [DEFAULT]
# @option --repodir <DIRECTORY>                specify the repository directory in which to run
# @option -o --output <FILE>                   specify output filename
# @option -O --output-auto-name <DIRECTORY>    output to automatically named file in DIRECTORY, default: current directory
# @flag --ignore-unrelated-repos               do not check if repositories are unrelated
# @flag --myers                                use myers diff algorithm
# @flag --patience                             use patience diff algorithm [DEFAULT]
# @flag --help                                 show a description of the command and its options
# @flag --list-options                         show plain list of available options and commands, for auto-completion
# @flag --disable                              disable this command
# @flag -q --quiet                             suppress informational output
# @flag --standard-verbosity                   neither verbose nor quiet output [DEFAULT]
# @flag -v --verbose                           enable verbose output
# @flag --intersection                         take intersection of all repositories
# @flag --union                                take union of all repositories [DEFAULT]
# @flag --complement                           take complement of repositories (in order listed)
# @option --remote-repo <URL>                  specify the remote repository URL to work with
# @flag --no-http-pipelining                   disable HTTP pipelining
# @option --remote-darcs <COMMAND>             name of the darcs executable on the remote server
# @flag --no-cache                             don't use patch caches
# @option --prehook <COMMAND>                  specify command to run before this darcs command
# @flag --no-prehook                           don't run prehook command [DEFAULT]
# @flag --prompt-prehook                       prompt before running prehook
# @flag --run-prehook                          run prehook command without prompting [DEFAULT]
# @option --posthook <COMMAND>                 specify command to run after this darcs command
# @flag --no-posthook                          don't run posthook command [DEFAULT]
# @flag --prompt-posthook                      prompt before running posthook
# @flag --run-posthook                         run posthook command without prompting [DEFAULT]
# @flag --debug                                enable general debug output
# @flag --debug-http                           debug output from libcurl
# @flag --timings                              provide debugging timings information
# @arg repository*
fetch() {
    :;
}
# }} darcs fetch

command eval "$(argc --argc-eval "$0" "$@")"