#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option --config <file>    Specify config file instead of using _config.yml
# @option --cwd <dir>        Specify the CWD
# @flag --debug              Display all verbose messages in the terminal
# @flag --draft              Display draft posts
# @flag --safe               Disable all plugins and scripts
# @flag --silent             Hide output on console

# {{ hexo clean
# @cmd Remove generated files and cache.
clean() {
    :;
}
# }} hexo clean

# {{ hexo config
# @cmd Get or set configurations.
# @arg name     Setting name.
# @arg value    New value of a setting.
config() {
    :;
}
# }} hexo config

# {{ hexo deploy
# @cmd Deploy your website.
# @flag --setup          Setup without deployment
# @flag -g --generate    Generate before deployment
deploy() {
    :;
}
# }} hexo deploy

# {{ hexo generate
# @cmd Generate static files.
# @flag -b --bail                      Raise an error if any unhandled exception is thrown during generation
# @option -c --concurrency <number>    Maximum number of files to be generated in parallel.
# @flag -d --deploy                    Deploy after generated
# @flag -f --force                     Force regenerate
# @flag -w --watch                     Watch file changes
generate() {
    :;
}
# }} hexo generate

# {{ hexo init
# @cmd Create a new Hexo folder.
# @flag --no-clone      Copy files instead of cloning from GitHub
# @flag --no-install    Skip npm install
# @arg destination      Folder path.
init() {
    :;
}
# }} hexo init

# {{ hexo list
# @cmd List the information of the site
# @arg type[page|post|route|tag|category]    Available types: page, post, route, tag, category
list() {
    :;
}
# }} hexo list

# {{ hexo migrate
# @cmd Migrate your site from other system to Hexo.
# @arg type    Migrator type.
migrate() {
    :;
}
# }} hexo migrate

# {{ hexo new
# @cmd Create a new post.
# @option -p --path <path>     Post path.
# @flag -r --replace           Replace the current post if existed.
# @option -s --slug <value>    Post slug.
# @arg layout                  Post layout.
# @arg title                   Post title.
new() {
    :;
}
# }} hexo new

# {{ hexo publish
# @cmd Moves a draft post from _drafts to _posts folder.
# @arg filename    Draft filename.
# @arg layout      Post layout.
publish() {
    :;
}
# }} hexo publish

# {{ hexo render
# @cmd Render files with renderer plugins.
# @option --engine <value>    Specify render engine
# @option --output <dir>      Output destination.
# @flag --pretty              Prettify JSON output
# @arg file1!
# @arg file2*
render() {
    :;
}
# }} hexo render

# {{ hexo server
# @cmd Start the server.
# @option -i --ip <value>      Override the default server IP.
# @option -l --log <format>    Enable logger.
# @flag -o --open              Immediately open the server url in your default web browser.
# @option -p --port <port>     Override the default port.
# @flag -s --static            Only serve static files.
server() {
    :;
}
# }} hexo server

# {{ hexo version
# @cmd Display version information.
version() {
    :;
}
# }} hexo version

command eval "$(argc --argc-eval "$0" "$@")"