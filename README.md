# Argc-Completions

A multi-shell multi-command argument completion solution.

Argc-Completions provides argument completion for multiple CLI commands ([full list](completions)), and works across multiple POSIX and non-POSIX shells.

Argc-Completions also provides a tool (`generate.sh`) to automaticlly generate completion for the command.

## Getting Started

### Install dependencies

- [argc](https://github.com/sigoden/argc): completion engine
- [jq](https://github.com/stedolan/jq): JSON processor

### Setup shell

Clone the repository.

```sh
git clone https://github.com/sigoden/argc-completions $HOME/.argc-completions
```

For bash, add the following code to `.bashrc`:
```sh
source "$HOME/.argc-completions/shell/argc-completions.bash" 
```

For zsh, add the following code to `.zshrc`:
```sh
source "$HOME/.argc-completions/shell/argc-completions.zsh" 
```

For fish, add the following code to `config.fish`:
```fish
source "$HOME/.argc-completions/shell/argc-completions.fish" 
```

For PowerShell, add the following code to `$PROFILE`:

```ps1
. "$env:USERPROFILE\.argc-completions\shell\argc-completions.ps1"
```

## Generate completion

You can run `generate.sh` to automatically generate the completion script for your command:

```
./generate.sh <cmd>
```

See [generate.md](docs/generate.md) if you run into problems.

## License

argc is made available under the terms of the MIT License. 

See the LICENSE file for license details.