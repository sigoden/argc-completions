#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --acc-expiration       display info about passwords expiration
# @flag -c --colon-separate       display data in a format similar to /etc/passwd
# @flag -e --export               display in an export-able output format
# @flag -f --failed               display data about the users' last failed logins
# @flag -G --supp-groups          display information about groups
# @option -g --groups*,[`_module_os_group`] <groups>  display users belonging to a group in <groups>
# @flag -L --last                 show info about the users' last login sessions
# @option -l --logins*,[`_module_os_user`] <logins>  display only users from <logins>
# @flag -n --newline              display each piece of information on a new line
# @flag --noheadings              don't print headings
# @flag --notruncate              don't truncate output
# @option -o --output*,[`_choice_column`] <list>  define the columns to output
# @flag --output-all              output all columns
# @flag -p --pwd                  display information related to login by password.
# @flag -r --raw                  display in raw mode
# @flag -s --system-accs          display system accounts
# @option --time-format <type>    display dates in short, full or iso format
# @flag -u --user-accs            display user accounts
# @flag -Z --context              display SELinux contexts
# @flag -z --print0               delimit user entries with a nul character
# @option --wtmp-file <path>      set an alternate path for wtmp
# @option --btmp-file <path>      set an alternate path for btmp
# @option --lastlog <path>        set an alternate path for lastlog
# @flag -h --help                 display this help
# @flag -V --version              display version
# @arg username*[`_module_os_user`]

_choice_column() {
    cat <<-'EOF'
USER	user name
UID	user ID
GECOS	full user name
FAILED-TTY	where did the login fail?
HUSHED	user's hush settings
PWD-WARN	days user is warned of password expiration
PWD-CHANGE	date of last password change
PWD-MIN	number of days required between changes
PWD-MAX	max number of days a password may remain unchanged
PWD-EXPIR	password expiration date
CONTEXT	the user's security context
PROC	number of processes run by the user
EOF
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"