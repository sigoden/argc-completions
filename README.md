# Argc-Completions

Easily create/use cross-shell completion scripts.

## How to use

### Install argc

#### With cargo

```
cargo install argc
```

#### Binaries on macOS, Linux, Windows

Download from [Github Releases](https://github.com/sigoden/argc/releases), unzip and add argc to your $PATH.

### Add entryfile

```
git clone https://github.com/sigoden/argc-completions $HOME/.argc-completions
```

For bash, add following code to `.bashrc`
```
[[ -f "$HOME/.argc-completions/argc.bash" ]] && source "$HOME/.argc-completions/argc.bash" 
```

For zsh, add following code to `.zsh`
```
[[ -f "$HOME/.argc-completions/argc.zsh" ]] && source "$HOME/.argc-completions/argc.zsh" 
```

For fish, add following code
```
test -e "$HOME/.argc-completions/argc.fish" && source "$HOME/.argc-completions/argc.fish" 
```

For powershell, add following code to `$PROFILE`

```
if(Test-Path $HOME + "\.argc-completions\argc.ps1") {
    . $HOME + "\.argc-completions\argc.ps1"
}
```

> Windows need to install git-bash, set `$ARGC_COMPLETIONS_GIT_BASH="C:\Program Files\Git\bin\bash.exe"`

## How to write

### Automatically generate with website


### Manually write with argc

View the [argc manual](https://github.com/sigoden/argc)

## License

Copyright (c) 2022 sigoden.

argc is made available under the terms of either the MIT License. 

See LICENSE file for license details.
