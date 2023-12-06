#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @flag -D --buildDrafts                  include content marked as draft
# @flag -E --buildExpired                 include expired content
# @flag -F --buildFuture                  include content with publishdate in the future
# @option --cacheDir <string>             filesystem path to cache directory
# @flag --cleanDestinationDir             remove files from destination not found in static directories
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @option -c --contentDir <string>        filesystem path to content directory
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option --disableKinds <strings>        disable different kind of pages (home, RSS etc.)
# @flag --enableGitInfo                   add Git revision, date, author, and CODEOWNERS info to the pages
# @option -e --environment <string>       build environment
# @flag --forceSyncStatic                 copy all files when static is changed.
# @flag --gc                              enable to run some cleanup tasks (remove unused cache files) after the build
# @flag -h --help                         help for hugo
# @flag --ignoreCache                     ignores the cache directory
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option -l --layoutDir <string>         filesystem path to layout directory
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --minify                          minify any supported output format (HTML, XML etc.)
# @flag --noBuildLock                     don't create .hugo_build.lock file
# @flag --noChmod                         don't sync permission mode of files
# @flag --noTimes                         don't sync modification time of files
# @flag --panicOnWarning                  panic on first WARNING log
# @option --poll <string>                 set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes
# @flag --printI18nWarnings               print missing translations
# @flag --printMemoryUsage                print memory usage to screen at intervals
# @flag --printPathWarnings               print warnings on duplicate target paths etc.
# @flag --printUnusedTemplates            print warnings on unused templates.
# @flag --quiet                           build in quiet mode
# @flag --renderToMemory                  render to memory (only useful for benchmark testing)
# @option -s --source <string>            filesystem path to read files relative from
# @flag --templateMetrics                 display metrics about template executions
# @flag --templateMetricsHints            calculate some improvement hints when combined with --templateMetrics
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @option --themesDir <string>            filesystem path to themes directory
# @option --trace <file>                  write trace to file (not useful in general)
# @flag -v --verbose                      verbose output
# @flag -w --watch                        watch filesystem for changes and recreate as needed

# {{ hugo completion
# @cmd Generate the autocompletion script for the specified shell
# @flag -h --help                         help for completion
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
completion() {
    :;
}

# {{{ hugo completion bash
# @cmd Generate the autocompletion script for bash
# @flag -h --help                         help for bash
# @flag --no-descriptions                 disable completion descriptions
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
completion::bash() {
    :;
}
# }}} hugo completion bash

# {{{ hugo completion fish
# @cmd Generate the autocompletion script for fish
# @flag -h --help                         help for fish
# @flag --no-descriptions                 disable completion descriptions
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
completion::fish() {
    :;
}
# }}} hugo completion fish

# {{{ hugo completion powershell
# @cmd Generate the autocompletion script for powershell
# @flag -h --help                         help for powershell
# @flag --no-descriptions                 disable completion descriptions
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
completion::powershell() {
    :;
}
# }}} hugo completion powershell

# {{{ hugo completion zsh
# @cmd Generate the autocompletion script for zsh
# @flag -h --help                         help for zsh
# @flag --no-descriptions                 disable completion descriptions
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
completion::zsh() {
    :;
}
# }}} hugo completion zsh
# }} hugo completion

# {{ hugo config
# @cmd Print the site configuration
# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @option --cacheDir <string>             filesystem path to cache directory
# @option -c --contentDir <string>        filesystem path to content directory
# @option --format <string>               preferred file format (toml, yaml or json) (default "toml")
# @flag -h --help                         help for config
# @option --lang <string>                 the language to display config for.
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
config() {
    :;
}

# {{{ hugo config mounts
# @cmd Print the configured file mounts
# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @option --cacheDir <string>             filesystem path to cache directory
# @option -c --contentDir <string>        filesystem path to content directory
# @flag -h --help                         help for mounts
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
config::mounts() {
    :;
}
# }}} hugo config mounts
# }} hugo config

# {{ hugo convert
# @cmd Convert your content to different formats
# @flag -h --help                         help for convert
# @option -o --output <string>            filesystem path to write files to
# @flag --unsafe                          enable less safe operations, please backup first
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
convert() {
    :;
}

# {{{ hugo convert toJSON
# @cmd Convert front matter to JSON
# @flag -h --help                         help for toJSON
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @option -o --output <string>            filesystem path to write files to
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag --unsafe                          enable less safe operations, please backup first
# @flag -v --verbose                      verbose output
# @arg args*
convert::toJSON() {
    :;
}
# }}} hugo convert toJSON

# {{{ hugo convert toTOML
# @cmd Convert front matter to TOML
# @flag -h --help                         help for toTOML
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @option -o --output <string>            filesystem path to write files to
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag --unsafe                          enable less safe operations, please backup first
# @flag -v --verbose                      verbose output
# @arg args*
convert::toTOML() {
    :;
}
# }}} hugo convert toTOML

# {{{ hugo convert toYAML
# @cmd Convert front matter to YAML
# @flag -h --help                         help for toYAML
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @option -o --output <string>            filesystem path to write files to
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag --unsafe                          enable less safe operations, please backup first
# @flag -v --verbose                      verbose output
# @arg args*
convert::toYAML() {
    :;
}
# }}} hugo convert toYAML
# }} hugo convert

# {{ hugo deploy
# @cmd Deploy your site to a Cloud provider.
# @flag --confirm                         ask for confirmation before making changes to the target
# @flag --dryRun                          dry run
# @flag --force                           force upload of all files
# @flag -h --help                         help for deploy
# @flag --invalidateCDN                   invalidate the CDN cache listed in the deployment target (default true)
# @option --maxDeletes <int>              maximum ♯ of files to delete, or -1 to disable (default 256)
# @option --target <string>               target deployment from deployments section in config file; defaults to the first one
# @option --workers <int>                 number of workers to transfer files.
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
deploy() {
    :;
}
# }} hugo deploy

# {{ hugo env
# @cmd Print Hugo version and environment info
# @flag -h --help                         help for env
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
env() {
    :;
}
# }} hugo env

# {{ hugo gen
# @cmd A collection of several useful generators.
# @flag -h --help                         help for gen
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
gen() {
    :;
}

# {{{ hugo gen chromastyles
# @cmd Generate CSS stylesheet for the Chroma code highlighter
# @flag -h --help                         help for chromastyles
# @option --highlightStyle <string>       style used for highlighting lines (see https://github.com/alecthomas/chroma)
# @option --linesStyle <string>           style used for line numbers (see https://github.com/alecthomas/chroma)
# @option --style <string>                highlighter style (see https://xyproto.github.io/splash/docs/) (default "friendly")
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
gen::chromastyles() {
    :;
}
# }}} hugo gen chromastyles

# {{{ hugo gen doc
# @cmd Generate Markdown documentation for the Hugo CLI.
# @option --dir <string>                  the directory to write the doc.
# @flag -h --help                         help for doc
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
gen::doc() {
    :;
}
# }}} hugo gen doc

# {{{ hugo gen man
# @cmd Generate man pages for the Hugo CLI
# @option --dir <string>                  the directory to write the man pages.
# @flag -h --help                         help for man
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
gen::man() {
    :;
}
# }}} hugo gen man
# }} hugo gen

# {{ hugo import
# @cmd Import your site from others.
# @flag -h --help                         help for import
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
import() {
    :;
}

# {{{ hugo import jekyll
# @cmd hugo import from Jekyll
# @flag --force                           allow import into non-empty target directory
# @flag -h --help                         help for jekyll
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
import::jekyll() {
    :;
}
# }}} hugo import jekyll
# }} hugo import

# {{ hugo list
# @cmd Listing out various types of content
# @flag -h --help                         help for list
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
list() {
    :;
}

# {{{ hugo list all
# @cmd List all posts
# @flag -h --help                         help for all
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
list::all() {
    :;
}
# }}} hugo list all

# {{{ hugo list drafts
# @cmd List all drafts
# @flag -h --help                         help for drafts
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
list::drafts() {
    :;
}
# }}} hugo list drafts

# {{{ hugo list expired
# @cmd List all posts already expired
# @flag -h --help                         help for expired
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
list::expired() {
    :;
}
# }}} hugo list expired

# {{{ hugo list future
# @cmd List all posts dated in the future
# @flag -h --help                         help for future
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
list::future() {
    :;
}
# }}} hugo list future
# }} hugo list

# {{ hugo mod
# @cmd Various Hugo Modules helpers.
# @flag -h --help                         help for mod
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
mod() {
    :;
}

# {{{ hugo mod clean
# @cmd Delete the Hugo Module cache for the current project.
# @flag --all                             clean entire module cache
# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @option --cacheDir <string>             filesystem path to cache directory
# @option -c --contentDir <string>        filesystem path to content directory
# @flag -h --help                         help for clean
# @option --pattern <string>              pattern matching module paths to clean (all if not set), e.g. "**hugo*"
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
mod::clean() {
    :;
}
# }}} hugo mod clean

# {{{ hugo mod get
# @cmd Resolves dependencies in your current Hugo Project.
# @flag -h --help                         help for get
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
mod::get() {
    :;
}
# }}} hugo mod get

# {{{ hugo mod graph
# @cmd Print a module dependency graph.
# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @option --cacheDir <string>             filesystem path to cache directory
# @flag --clean                           delete module cache for dependencies that fail verification
# @option -c --contentDir <string>        filesystem path to content directory
# @flag -h --help                         help for graph
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
mod::graph() {
    :;
}
# }}} hugo mod graph

# {{{ hugo mod init
# @cmd Initialize this project as a Hugo Module.
# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @option --cacheDir <string>             filesystem path to cache directory
# @option -c --contentDir <string>        filesystem path to content directory
# @flag -h --help                         help for init
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
mod::init() {
    :;
}
# }}} hugo mod init

# {{{ hugo mod npm
# @cmd Various npm helpers.
# @flag -h --help                         help for npm
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
mod::npm() {
    :;
}

# {{{{ hugo mod npm pack
# @cmd Experimental: Prepares and writes a composite package.json file for your project.
# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @option --cacheDir <string>             filesystem path to cache directory
# @option -c --contentDir <string>        filesystem path to content directory
# @flag -h --help                         help for pack
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
mod::npm::pack() {
    :;
}
# }}}} hugo mod npm pack
# }}} hugo mod npm

# {{{ hugo mod tidy
# @cmd Remove unused entries in go.mod and go.sum.
# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @option --cacheDir <string>             filesystem path to cache directory
# @option -c --contentDir <string>        filesystem path to content directory
# @flag -h --help                         help for tidy
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
mod::tidy() {
    :;
}
# }}} hugo mod tidy

# {{{ hugo mod vendor
# @cmd Vendor all module dependencies into the _vendor directory.
# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @option --cacheDir <string>             filesystem path to cache directory
# @option -c --contentDir <string>        filesystem path to content directory
# @flag -h --help                         help for vendor
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
mod::vendor() {
    :;
}
# }}} hugo mod vendor

# {{{ hugo mod verify
# @cmd Verify dependencies.
# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @option --cacheDir <string>             filesystem path to cache directory
# @flag --clean                           delete module cache for dependencies that fail verification
# @option -c --contentDir <string>        filesystem path to content directory
# @flag -h --help                         help for verify
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
mod::verify() {
    :;
}
# }}} hugo mod verify
# }} hugo mod

# {{ hugo new
# @cmd Create new content for your site
# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @option --cacheDir <string>             filesystem path to cache directory
# @option -c --contentDir <string>        filesystem path to content directory
# @option --editor <string>               edit new content with this editor, if provided
# @flag -f --force                        overwrite file if it already exists
# @flag -h --help                         help for content
# @option -k --kind <string>              content type to create
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg content
# @arg path
new() {
    :;
}
# }} hugo new

# {{ hugo server
# @cmd A high performance webserver
# @flag --appendPort                      append port to baseURL (default true)
# @option -b --baseURL <string>           hostname (and path) to the root, e.g. https://spf13.com/
# @option --bind <string>                 interface to which the server will bind (default "127.0.0.1")
# @flag -D --buildDrafts                  include content marked as draft
# @flag -E --buildExpired                 include expired content
# @flag -F --buildFuture                  include content with publishdate in the future
# @option --cacheDir <string>             filesystem path to cache directory
# @flag --cleanDestinationDir             remove files from destination not found in static directories
# @option -c --contentDir <string>        filesystem path to content directory
# @flag --disableBrowserError             do not show build errors in the browser
# @flag --disableFastRender               enables full re-renders on changes
# @option --disableKinds <strings>        disable different kind of pages (home, RSS etc.)
# @flag --disableLiveReload               watch without enabling live browser reload on rebuild
# @flag --enableGitInfo                   add Git revision, date, author, and CODEOWNERS info to the pages
# @flag --forceSyncStatic                 copy all files when static is changed.
# @flag --gc                              enable to run some cleanup tasks (remove unused cache files) after the build
# @flag -h --help                         help for server
# @flag --ignoreCache                     ignores the cache directory
# @option -l --layoutDir <string>         filesystem path to layout directory
# @option --liveReloadPort <int>          port for live reloading (i.e.
# @option --meminterval <string>          interval to poll memory usage (requires --memstats), valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".
# @option --memstats <string>             log memory usage to this file
# @flag --minify                          minify any supported output format (HTML, XML etc.)
# @flag --navigateToChanged               navigate to changed content file on live browser reload
# @flag --noBuildLock                     don't create .hugo_build.lock file
# @flag --noChmod                         don't sync permission mode of files
# @flag --noHTTPCache                     prevent HTTP caching
# @flag --noTimes                         don't sync modification time of files
# @flag --panicOnWarning                  panic on first WARNING log
# @option --poll <string>                 set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes
# @option -p --port <int>                 port on which the server will listen (default 1313)
# @flag --printI18nWarnings               print missing translations
# @flag --printMemoryUsage                print memory usage to screen at intervals
# @flag --printPathWarnings               print warnings on duplicate target paths etc.
# @flag --printUnusedTemplates            print warnings on unused templates.
# @flag --renderStaticToDisk              serve static files from disk and dynamic files from memory
# @flag --renderToDisk                    serve all files from disk (default is from memory)
# @flag --templateMetrics                 display metrics about template executions
# @flag --templateMetricsHints            calculate some improvement hints when combined with --templateMetrics
# @option -t --theme <strings>            themes to use (located in /themes/THEMENAME/)
# @flag --tlsAuto                         generate and use locally-trusted certificates.
# @option --tlsCertFile <string>          path to TLS certificate file
# @option --tlsKeyFile <string>           path to TLS key file
# @option --trace <file>                  write trace to file (not useful in general)
# @flag -w --watch                        watch filesystem for changes and recreate as needed (default true)
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
server() {
    :;
}

# {{{ hugo server trust
# @cmd Install the local CA in the system trust store.
# @flag -h --help                         help for trust
# @flag --uninstall                       Uninstall the local CA (but do not delete it).
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
server::trust() {
    :;
}
# }}} hugo server trust
# }} hugo server

# {{ hugo version
# @cmd Print Hugo version and environment info
# @flag -h --help                         help for version
# @option --clock <string>                set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
# @option --config <string>               config file (default is hugo.yaml|json|toml)
# @option --configDir <string>            config dir (default "config")
# @flag --debug                           debug output
# @option -d --destination <string>       filesystem path to write files to
# @option -e --environment <string>       build environment
# @option --ignoreVendorPaths <string>    ignores any _vendor for module paths matching the given Glob pattern
# @option --logLevel <string>             log level (debug|info|warn|error)
# @flag --quiet                           build in quiet mode
# @option -s --source <string>            filesystem path to read files relative from
# @option --themesDir <string>            filesystem path to themes directory
# @flag -v --verbose                      verbose output
# @arg args*
version() {
    :;
}
# }} hugo version

command eval "$(argc --argc-eval "$0" "$@")"