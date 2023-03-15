# Argc-Completions

Easily create/use cross-shell completion scripts.

## How to use

### Install argc

View the [argc installation guide](https://github.com/sigoden/argc#install).

### Add to shell rcfile

```
git clone https://github.com/sigoden/argc-completions $HOME/.argc-completions
```

For bash, add the following code to `.bashrc`.
```
[[ -f "$HOME/.argc-completions/argc.bash" ]] && source "$HOME/.argc-completions/argc.bash" 
```

For zsh, add the following code to `.zshrc`.
```
[[ -f "$HOME/.argc-completions/argc.zsh" ]] && source "$HOME/.argc-completions/argc.zsh" 
```

For fish, add the following code to `config.fish`.
```
test -e "$HOME/.argc-completions/argc.fish" && source "$HOME/.argc-completions/argc.fish" 
```

For PowerShell, add the following code to `$PROFILE`.

```
if(Test-Path $HOME + "\.argc-completions\argc.ps1") {
    . $HOME + "\.argc-completions\argc.ps1"
}
```

> If you are using Windows, you need to install git-bash and set `$ARGC_COMPLETIONS_GIT_BASH="C:\Program Files\Git\bin\bash.exe"`.

## How to write

### Automatically generate with GPT

You need to install the [aichat](https://github.com/sigoden/aichat) tool to interact with GPT.

If the command has subcommands:

```
./generate.sh with-subcmd mycmd
```

If the command has no subcommand:

```
./generate.sh no-subcmd mycmd
```

If successful, A completion script will be generated at `completions/mycmd.sh`.

### Manually write with argc

View the [argc manual](https://github.com/sigoden/argc#comment-tags).

## License

Copyright (c) 2022 sigoden.

argc is made available under the terms of the MIT License. 

See the LICENSE file for license details.