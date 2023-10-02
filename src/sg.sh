_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--color;[`_choice_color`]' \
            '--heading;[`_choice_heading`]' \
            '--json;[`_choice_json`]' \
            '--lang;[`_choice_lang`]' \
            '--no-ignore;[`_choice_no_ignore`]' \
    )"
    if [[ "$*" == "sg" ]]; then
        echo "$table" | \
        _patch_table_copy_options sg run
    else
        echo "$table"
    fi
}

_choice_lang() {
    cat <<-'EOF' | sed 's/, /\n/g'
c
cc, c++, cpp, cxx
cs, csharp
css
dart
go, golang
html
java
javascript, js, jsx
kotlin, kt
lua
py, python
rb, ruby
rs, rust
scala
swift
thrift
ts, typescript
tsx
EOF
}

_choice_no_ignore() {
    cat <<-'EOF'
hidden	Search hidden files and directories. By default, hidden files and directories are skipped
dot	Don't respect .ignore files. This does *not* affect whether ast-grep will ignore files and directories whose names begin with a dot. For that, use --no-ignore hidden
exclude	Don't respect ignore files that are manually configured for the repository such as git's '.git/info/exclude'
global	Don't respect ignore files that come from "global" sources such as git's `core.excludesFile` configuration option (which defaults to `$HOME/.config/git/ignore`)
parent	Don't respect ignore files (.gitignore, .ignore, etc.) in parent directories
vcs	Don't respect version control ignore files (.gitignore, etc.). This implies --no-ignore parent for VCS files. Note that .ignore files will continue to be respected
EOF
}

_choice_json() {
    cat <<-'EOF'
pretty	Prints the matches as a pretty-printed JSON array, with indentation and line breaks. This is useful for human readability, but not for parsing by other programs. This is the default value for the `--json` option
stream	Prints each match as a separate JSON object, followed by a newline character. This is useful for streaming the output to other programs that can read one object per line
compact	Prints the matches as a single-line JSON array, without any whitespace. This is useful for saving space and minimizing the output size
EOF
}

_choice_color() {
    cat <<-'EOF'
auto	Try to use colors, but don't force the issue. If the output is piped to another program, or the console isn't available on Windows, or if TERM=dumb, or if `NO_COLOR` is defined, for example, then don't use colors
always	Try very hard to emit colors. This includes emitting ANSI colors on Windows if the console API is unavailable (not implemented yet)
ansi	Ansi is like Always, except it never tries to use anything other than emitting ANSI color codes
never	Never emit colors
EOF
}

_choice_heading() {
    cat <<-'EOF'
auto	Print heading for terminal tty but not for piped output
always	Always print heading regardless of output type
never	Never print heading regardless of output type
EOF
}
