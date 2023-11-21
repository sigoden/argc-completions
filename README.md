# Argc-completions

Argc-completions provides autocomplete for any shell and any command.

![argc-completions](https://github.com/sigoden/argc-completions/assets/4012553/235bd290-516c-4dec-83d8-17cb852d35ae)

## Features

- Support multiple shells: bash/zsh/powershell/fish/nushell/elvish/xonsh
- Support multiple platforms: windows/macOS/linux
- Support 1000+ commands ([full list](./MANIFEST.md))
- Automatically generate completion script from help-text/man-page
- Lazy completing, lower memory consumption and faster startup time

## Getting Started

Open your terminal and execute the following commands:

```sh
git clone https://github.com/sigoden/argc-completions.git
cd argc-completions
./scripts/download-tools.sh
./bin/argc shell:setup bash  # bash/zsh/powershell/fish/nushell/elvish/xonsh
```

> For Windows, please run the above code in Git Bash (not wsl bash).

> Tools downloaded by `./scripts/download-tools.sh`:\
> &nbsp;&nbsp; - [argc](https://github.com/sigoden/argc): completion engine\
> &nbsp;&nbsp; - [yq](https://github.com/mikefarah/yq): YAML/JSON/XML/CSV/TOML processor\
> &nbsp;&nbsp; - macOS only: `brew install bash gawk gnu-sed`

## Generate the completion script by yourself

```sh
cd $ARGC_COMPLETIONS_ROOT
argc generate your-command
```

To learn how `generate` works, see [docs/generate.md](docs/generate.md)

To learn various complete patterns, see [docs/complete-patterns.md](docs/complete-patterns.md)

## License

Argc-completions is made available under the terms of the MIT License. 

See the LICENSE file for license details.