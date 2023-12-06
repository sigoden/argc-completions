#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version    Show the version and exit.
# @flag -q --quiet      Silence warnings
# @flag -v --verbose    Enable verbose output
# @flag --color         Force enable or disable color and wrapping for the output.
# @flag --no-color      Force enable or disable color and wrapping for the output.
# @flag -h --help       Show this message and exit.

# {{ mkdocs build
# @cmd Build the MkDocs documentation
# @flag -c                                   Remove old files from the site_dir before building (the default).
# @flag --clean                              Remove old files from the site_dir before building (the default).
# @flag --dirty                              Remove old files from the site_dir before building (the default).
# @option -f --config-file <FILENAME>        Provide a specific MkDocs config.
# @flag -s                                   Enable strict mode.
# @flag --strict                             Enable strict mode.
# @flag --no-strict                          Enable strict mode.
# @option -t --theme <mkdocs|readthedocs>    The theme to use when building your documentation.
# @flag --use-directory-urls                 Use directory URLs when building pages (the default).
# @flag --no-directory-urls                  Use directory URLs when building pages (the default).
# @option -d --site-dir <PATH>               The directory to output the result of the documentation build.
# @flag -q --quiet                           Silence warnings
# @flag -v --verbose                         Enable verbose output
# @flag -h --help                            Show this message and exit.
build() {
    :;
}
# }} mkdocs build

# {{ mkdocs get-deps
# @cmd Show required PyPI packages inferred from plugins in mkdocs.yml
# @flag -v --verbose                     Enable verbose output
# @option -f --config-file <FILENAME>    Provide a specific MkDocs config.
# @option -p --projects-file <TEXT>      URL or local path of the registry file that declares all known MkDocs-related projects.
# @flag -h --help                        Show this message and exit.
get-deps() {
    :;
}
# }} mkdocs get-deps

# {{ mkdocs gh-deploy
# @cmd Deploy your documentation to GitHub Pages
# @flag -c                                   Remove old files from the site_dir before building (the default).
# @flag --clean                              Remove old files from the site_dir before building (the default).
# @flag --dirty                              Remove old files from the site_dir before building (the default).
# @option -m --message <TEXT>                A commit message to use when committing to the GitHub Pages remote branch.
# @option -b --remote-branch <TEXT>          The remote branch to commit to for GitHub Pages.
# @option -r --remote-name <TEXT>            The remote name to commit to for GitHub Pages.
# @flag --force                              Force the push to the repository.
# @flag --no-history                         Replace the whole Git history with one new commit.
# @flag --ignore-version                     Ignore check that build is not being deployed with an older version of MkDocs.
# @flag --shell                              Use the shell when invoking Git.
# @option -f --config-file <FILENAME>        Provide a specific MkDocs config.
# @flag -s                                   Enable strict mode.
# @flag --strict                             Enable strict mode.
# @flag --no-strict                          Enable strict mode.
# @option -t --theme <mkdocs|readthedocs>    The theme to use when building your documentation.
# @flag --use-directory-urls                 Use directory URLs when building pages (the default).
# @flag --no-directory-urls                  Use directory URLs when building pages (the default).
# @option -d --site-dir <PATH>               The directory to output the result of the documentation build.
# @flag -q --quiet                           Silence warnings
# @flag -v --verbose                         Enable verbose output
# @flag -h --help                            Show this message and exit.
gh-deploy() {
    :;
}
# }} mkdocs gh-deploy

# {{ mkdocs new
# @cmd Create a new MkDocs project
# @flag -q --quiet      Silence warnings
# @flag -v --verbose    Enable verbose output
# @flag -h --help       Show this message and exit.
# @arg project_directory
new() {
    :;
}
# }} mkdocs new

# {{ mkdocs serve
# @cmd Run the builtin development server
# @option -a --dev-addr <IP:PORT>            IP address and port to serve documentation locally (default: localhost:8000)
# @flag --no-livereload                      Disable the live reloading in the development server.
# @flag --dirty                              Only re-build files that have changed.
# @flag -c --clean                           Build the site without any effects of `mkdocs serve` - pure `mkdocs build`, then serve.
# @flag --watch-theme                        Include the theme in list of files to watch for live reloading.
# @option -w --watch <PATH>                  A directory or file to watch for live reloading.
# @option -f --config-file <FILENAME>        Provide a specific MkDocs config.
# @flag -s                                   Enable strict mode.
# @flag --strict                             Enable strict mode.
# @flag --no-strict                          Enable strict mode.
# @option -t --theme <mkdocs|readthedocs>    The theme to use when building your documentation.
# @flag --use-directory-urls                 Use directory URLs when building pages (the default).
# @flag --no-directory-urls                  Use directory URLs when building pages (the default).
# @flag -q --quiet                           Silence warnings
# @flag -v --verbose                         Enable verbose output
# @flag -h --help                            Show this message and exit.
serve() {
    :;
}
# }} mkdocs serve

command eval "$(argc --argc-eval "$0" "$@")"