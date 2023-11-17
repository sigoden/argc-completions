# Argc-completions

Argc-completions provides a multi-shell autocompletion solution that achieves three goals:

- One completion script works across multiple shells and multiple platforms.
- Automatically generate the completion script from the help text or man page.
- A repository for completion scripts for 1000+ commands ([full list](MANIFEST.md)).

![argc-completions](https://github.com/sigoden/argc-completions/assets/4012553/30b0d2ba-f2dd-4ee5-9987-4b7ac46b89b6)

Supported Shells:
  - [zsh](https://www.zsh.org/)
  - [bash](https://www.gnu.org/software/bash/)
  - [powershell](https://microsoft.com/powershell)
  - [fish](https://fishshell.com/)
  - [nushell](https://www.nushell.sh/)
  - [elvish](https://elv.sh/)
  - [xonsh](https://xon.sh/)

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
> &nbsp;&nbsp; * [argc](https://github.com/sigoden/argc): completion engine\
> &nbsp;&nbsp; * [yq](https://github.com/mikefarah/yq): YAML/JSON/XML/CSV/TOML processor\
> &nbsp;&nbsp; * macOS only: `brew install bash gawk gnu-sed`

## Generate the completion script by yourself

```sh
cd $ARGC_COMPLETIONS_ROOT
argc generate your-command
```

To learn how `generate` works, see [docs/generate.md](docs/generate.md)

To learn various complete patterns, see [docs/complete-pattern.md](docs/completion-pattern.md)

## License

Argc-completions is made available under the terms of the MIT License. 

See the LICENSE file for license details.