# Argc-Completions

A multi-shell completion solution.

Argc-completions provides argument completion for multiple CLI commands, and works across multiple POSIX and non-POSIX shells.

Argc-completions also provide tool to automatically generate completion scripts for command.

## Supported shells:

- [Bash](https://www.gnu.org/software/bash/)
- [Elvish](https://elv.sh/)
- [Fish](https://fishshell.com/)
- [Nushell](https://www.nushell.sh/)
- [Powershell](https://microsoft.com/powershell)
- [Xonsh](https://xon.sh/)
- [Zsh](https://www.zsh.org/)

## Setup

### 1. Clone the repository

```
git clone https://github.com/sigoden/argc-completions.git
```

### 2. Install required tools

Argc-completions requires the following tools:

- [argc](https://github.com/sigoden/argc): completion engine
- [yq](https://github.com/mikefarah/yq): YAML/JSON/XML/CSV/TOML processor

Run the following script to download the tools to `./bin` folder:

```sh
./scripts/download-tools.sh
```

<details>
<summary>For macos</summary>

```
brew install bash
brew install gawk
```

</details>


<details>
<summary>For Windows</summary>

Install git and run the script in git-bash

</details>


### 3. Setup shell

Argc-completions supports a lot of shells. Different shells need different configurations.

Run `setup-shell.sh` to get code that loads argc-completions into your shell.

```sh
./scripts/setup-shell.sh bash
./scripts/setup-shell.sh elvish
./scripts/setup-shell.sh fish
./scripts/setup-shell.sh nushell
./scripts/setup-shell.sh powershell
./scripts/setup-shell.sh xonsh
./scripts/setup-shell.sh zsh
```

## Generate custom completion script

You can run `generate.sh` to automatically generate the completion script for your command:

```sh
argc generate your-command # or ./scripts/generate.sh your-command
```

## License

Argc-completions is made available under the terms of the MIT License. 

See the LICENSE file for license details.