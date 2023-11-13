# Argc-completions

Argcomplete provides a multi-shell autocompletion solution that achieves three goals:

- One completion script works across multiple shells and multiple platforms.
- Generate the completion script from the help text or man page automatically.
- A repository for completion scripts for commonly used commands.

## Features

- Support bash/zsh/powershell/fish/nushell/elvish/xonsh
- Support 1000+ commands ([full list](./MANIFEST.md))
- Automatically generate completion script from help-text/man-page
- Lazy-loading completion scripts, less memory, fast init speed
- Enhanced command completion with addons/plugins such as Cargo/Git

## Install

```sh
git clone https://github.com/sigoden/argc-completions.git
./scripts/download-tools.sh   # download required tools
./bin/argc shell:setup bash   # support shells: bash/zsh/powershell/fish/nushell/elvish/xonsh
```

> For Windows, please run the above code in Git Bash.

Required tools:
- [argc](https://github.com/sigoden/argc): completion engine
- [yq](https://github.com/mikefarah/yq): YAML/JSON/XML/CSV/TOML processor
- macOS only: `brew install bash gawk gnu-sed`

## Generate

Generate completion scripts from command help-text:

```sh
argc generate your-command
```

To learn how `argc generate` works, see [docs/generate.md](docs/generate.md)

To learn various completion pattern, see [docs/completion-pattern.md](docs/completion-pattern.md)

## License

Argc-completions is made available under the terms of the MIT License. 

See the LICENSE file for license details.