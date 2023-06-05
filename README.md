# Argc-Completions

A multi-shell completion solution.

Argc-Completions provides argument completion for multiple CLI commands ([full list](completions)), and works across multiple POSIX and non-POSIX shells.

## Supported shells:

- [Bash](https://www.gnu.org/software/bash/)
- [Elvish](https://elv.sh/)
- [Fish](https://fishshell.com/)
- [Nushell](https://www.nushell.sh/)
- [Powershell](https://microsoft.com/powershell)
- [Xonsh](https://xon.sh/)
- [Zsh](https://www.zsh.org/)

## Install Completion Scripts

1. clone the repository

```
git clone https://github.com/sigoden/argc-completions.git
```

2. install the tools

Argc-Completions requires the following tools:

- [argc](https://github.com/sigoden/argc): completion engine
- [yq](https://github.com/mikefarah/yq): YAML/JSON/XML/CSV/TOML processor

Run the following script to download the tools to `./bin` folder:

```sh
bash ./scripts/download-tools.sh
```

> On Windows OS, you may run it with git bash.

3. setup shell

Argc-Completions supports a lot of shells. Different shells have different configurations.

Run the following script to see how to setup shell: 

```sh
bash ./scripts/setup-shell.sh
```

## Generate custom completion script

You can run `generate.sh` to automatically generate the completion script for your command:

```sh
argc generate <command> # or ./scripts/generate.sh <command>
```

See [generate.md](docs/generate.md) for more details.

## License

argc-completions is made available under the terms of the MIT License. 

See the LICENSE file for license details.