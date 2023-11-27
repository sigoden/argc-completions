# Argc-completions

Argc-completions provides completion definitions that work for any shell.

![argc-completions](https://github.com/sigoden/argc-completions/assets/4012553/235bd290-516c-4dec-83d8-17cb852d35ae)

## Features

- Support multiple shells: bash/zsh/powershell/fish/nushell/elvish/xonsh/tcsh
- Support multiple platforms: windows/macOS/linux
- Add 1000+ completion definitions ([full list](./MANIFEST.md))
- Automatically generate a completion script from the command's help text or man page.
- Lazy completing, lower memory consumption and faster startup time

#### Amazing features that native completion lacks or is difficult to implement

<table>
    <thead>
        <tr>
            <th>Feature</th>
            <th>Showcase</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Parallel Computing</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/9f062328-ad01-470e-963d-ae3f3777ca8c" width="550px" alt="complete-git-checkout">
                <pre> _choice_ref() { <br>&nbsp;&nbsp; _argc_util_parallel _choice_branch ::: _choice_tag ::: _choice_head <br>} </pre>
            </td>
        </tr>
        <tr>
            <td>Fetch remote data</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/cc088b59-ee2f-413b-b2a4-c752c2796625" width="550px" alt="complete-cargo-add"></td>
        </tr>
        <tr>
            <td>Complete multiple values<br>(comma-spereated)</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/ef95ebdc-9c97-4bd1-a485-c928ba614ce9" width="550px" alt="complete-dd-iflag"></td>
        </tr>
        <tr>
            <td>Complete multiple parts</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/e0ca086f-52c1-4cff-be22-a9c0db7bf823" width="550px" alt="complete-rustup-target-add"></td>
        </tr>
        <tr>
            <td>Complete key-value pairs</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/4a31753b-0518-4d7f-8773-cb649ba58e32" width="550px" alt="complete-ssh-o"></td>
        </tr>
        <tr>
            <td>Complete for plugins<br>(git,cargo ...)</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/f9c7a3d6-08fe-48fd-bc23-7b10b6817fb4" width="550px" alt="complete-cargo-nextest"></td>
        </tr>
        <tr>
            <td>Delegate to another command<br>(sudo,doas,npx...)</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/ce198381-997f-4a0c-9126-793b7b8a7324" width="550px" alt="complete-yarn-workspace"></td>
        </tr>
        <tr>
            <td>Style &amp; color</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/77531d0e-5857-4b53-9b0f-52fb48215216" width="550px" alt="complete-xtest-color"></td>
        </tr>
    </tbody>
</table>


## Getting Started

Open your terminal and execute the following commands:

```sh
git clone https://github.com/sigoden/argc-completions.git
cd argc-completions
./scripts/download-tools.sh    # download argc/yq to ./argc-completions/bin/
./scripts/setup-shell.sh bash  # bash/zsh/powershell/fish/nushell/elvish/xonsh/tcsh
```

> For Windows, please run the above code in Git Bash.

> Tools downloaded by `./scripts/download-tools.sh`:\
> &nbsp;&nbsp; - [argc](https://github.com/sigoden/argc): completion engine\
> &nbsp;&nbsp; - [yq](https://github.com/mikefarah/yq): YAML/JSON/XML/CSV/TOML processor\
> &nbsp;&nbsp; - macOS only: `brew install bash gawk gnu-sed`

### Uninstall easily

1. Delete the `argc-completions` directory that you have downloaded.
2. Undo the changes made to the shell rcfile (`~/.bashrc`, `~/.zshrc` ...).

## Generate your own completion script

```sh
./scripts/generate.sh your-command
```

![generate](https://github.com/sigoden/argc-completions/assets/4012553/1bd7c6af-8dbb-4c83-9c40-d75fc8702bbc)

To learn how `generate` works, see [docs/generate.md](docs/generate.md)

To learn various complete patterns, see [docs/complete-patterns.md](docs/complete-patterns.md)

## License

Argc-completions is made available under the terms of the MIT License. 

See the LICENSE file for license details.