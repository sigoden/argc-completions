# Argc-Completions

A multi-shell completion solution.

Argc-Completions provides argument completion for multiple CLI commands ([full list](completions)), and works across multiple POSIX and non-POSIX shells.

Argc-Completions also provides a tool (`generate.sh`) to automaticlly generate completion for the command.

## Getting Started

### Install dependencies

- [argc](https://github.com/sigoden/argc): completion engine
- [yq](https://github.com/mikefarah/yq): YAML/JSON/XML/CSV/TOML processor

### Setup shell

Clone the repository.

```sh
git clone https://github.com/sigoden/argc-completions $HOME/.argc-completions
```
<details>
<summary>bash</summary>

Add the following code to `~/.bashrc`:

```sh
source "$HOME/.argc-completions/shell/argc-completions.bash" 
```
</details>

<details>
<summary>zsh</summary>

Add the following code to `~/.zshrc`:

```sh
source "$HOME/.argc-completions/shell/argc-completions.zsh" 
```
</details>

<details>
<summary>powershell</summary>

Add the following code to `$PROFILE`:

```ps1
. "$env:USERPROFILE\.argc-completions\shell\argc-completions.ps1"
```
</details>

<details>
<summary>fish</summary>

Add the following code to `~/.config/fish/config.fish`:

```fish
source "$HOME/.argc-completions/shell/argc-completions.fish" 
```
</details>

<details>
<summary>nushell</summary>

Add the following code to `$nu.env-path`:
```nu
let-env ARGC_COMPLETIONS_DIR = ~/.argc-completions/completions
source ~/.argc-completions/shell/argc-completions.nu

let external_completer = {|spans| 
    _argc_completions_completer $spans
}

let-env config = {
    # ... your config
    completions: {
        external: {
            enable: true
            completer: $external_completer
        }
    }
}
```
</details>

<details>
<summary>elvish</summary>

Add the following code to `~/.config/elvish/rc.elv`:
```elv
set E:ARGC_COMPLETIONS_DIR = ~/.argc-completions/completions
eval (slurp < ~/.argc-completions/shell/argc-completions.elv)
```
</details>

<details>
<summary>xonsh</summary>

Add the following code to `~/.config/xonsh/rc.xsh`:
```xsh
source ~/.argc-completions/shell/argc-completions.xsh
```
</details>

## Generate completion

You can run `generate.sh` to automatically generate the completion script for your command:

```sh
./scripts/generate.sh your-command
# or
argc generate your-command
```

See [generate.md](docs/generate.md) if you run into problems.

## License

argc is made available under the terms of the MIT License. 

See the LICENSE file for license details.