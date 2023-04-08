_patch_table() {
    sed \
        -e '/--completions/ coption # --completions <shell> # Print shell completion script for <shell> #  [bash|elvish|fish|powershell|zsh]' \
        -e '/--auth-method/ coption # --auth-method <value> # Select auth method # [=digest|basic]'
}