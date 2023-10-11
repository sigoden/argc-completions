# Argc-Completions

A multi-shell completion solution.

## Features

- support bash/zsh/powershell/fish/nushell/elvish/xonsh
- support windows/macos/linux
- support 1000+ commands
- easily/automaticlly generate argc completion script from help-text/man-page
- lazy completion evaluation, fast startup and lower memory usage
- enhanced plugin/addon completion for command such as cargo, git

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
> For windows, run the script in git-bash

> For macos, install bash and gawk with `brew install bash gawk`

### 3. Setup shell

Argc-completions supports a lot of shells. Different shells need different configurations.

Run the following script to see how argc-completions are integrated into the shell:

```sh
./scripts/setup-shell.sh bash # supports shells: bash elvish fish nushell powershell xonsh zsh
```

## Generate custom completion script

You can run `generate.sh` to automatically generate the completion script for the command:

```sh
argc generate <cmd>
```

## License

Argc-completions is made available under the terms of the MIT License. 

See the LICENSE file for license details.