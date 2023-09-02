#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -ftype <type>         Select the frontend to use.
# @option --frontend <type>     Select the frontend to use.
# @option -pvalue <value>       Specify the minimum priority of question that will be displayed.
# @option --priority <value>    Specify the minimum priority of question that will be displayed.
# @flag --default-priority      Use whatever the default priority of question is, instead of forcing the priority to low.
# @flag -u --unseen-only        By default, all questions are shown, even if they have already been answered.
# @flag --force                 Force dpkg-reconfigure to reconfigure a package even if the package is in an inconsistent or broken state.
# @flag --no-reload             Prevent dpkg-reconfigure from reloading templates.
# @flag -h --help               Display usage help.
# @arg packages*[`_choice_package`]

_choice_package() {
    dpkg-query -W -f '${Package}\n'
}

command eval "$(argc --argc-eval "$0" "$@")"