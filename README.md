# Argc-Completions

A multi-shell completion solution.

## Features

- Support windows/macos/linux
- Support bash/zsh/powershell/fish/nushell/elvish/xonsh
- Support 1000+ commands
- Automaticlly generate completion script from help-text/man-page
- Lazy/dynamic loading, one single shellscript for all commands
- Enhanced completion for commands with add-ons/plugins such as cargo/git

## Install

```sh
git clone https://github.com/sigoden/argc-completions.git
./scripts/download-tools.sh   # download required tools
./bin/argc shell:setup bash   # support shells: bash/zsh/powershell/fish/nushell/elvish/xonsh
```

> For Windows, run the above code in Git Bash.

Required tools:
- [argc](https://github.com/sigoden/argc): completion engine
- [yq](https://github.com/mikefarah/yq): YAML/JSON/XML/CSV/TOML processor
- macOS only: `brew install bash gawk gnu-sed`

## License

Argc-completions is made available under the terms of the MIT License. 

See the LICENSE file for license details.