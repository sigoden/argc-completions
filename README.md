# Argc-Completions

Easily create/use cross-shell completion scripts, suppports bash/zsh/fish/powershell.

## How to use

### Install dependencies

- [argc](https://github.com/sigoden/argc): completion engine
- [jq](https://github.com/stedolan/jq): json processor

### Load completion scripts

```sh
git clone https://github.com/sigoden/argc-completions $HOME/.argc-completions
```

For bash, add the following code to `.bashrc`.
```sh
[ -f "$HOME/.argc-completions/argc.bash" ] && source "$HOME/.argc-completions/argc.bash" 
```

For zsh, add the following code to `.zshrc`.
```sh
[ -f "$HOME/.argc-completions/argc.zsh" ] && source "$HOME/.argc-completions/argc.zsh" 
```

For fish, add the following code to `config.fish`.
```fish
test -e "$HOME/.argc-completions/argc.fish" && source "$HOME/.argc-completions/argc.fish" 
```

For PowerShell, add the following code to `$PROFILE`.

```ps1
$ARGC_COMPLETIONS_GIT_BASH="C:\Program Files\Git\bin\bash.exe"

if(Test-Path ($env:USERPROFILE + "\.argc-completions\argc.ps1")) {
    . ($env:USERPROFILE + "\.argc-completions\argc.ps1")
}
```

> If you are using Windows, you need to install git-bash.

## How to write

### Automatically write with ChatGPT

You need to install the [aichat](https://github.com/sigoden/aichat) to interact with ChatGPT.

```
./generate.sh mycmd
```

If successful, A completion script will be generated to `completions/mycmd.sh`.

### Manually write with argc

View the [argc manual](https://github.com/sigoden/argc#comment-tags).

## License

Copyright (c) 2022 sigoden.

argc is made available under the terms of the MIT License. 

See the LICENSE file for license details.