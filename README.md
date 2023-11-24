# Argc-completions

Argc-completions provides autocomplete for any shell and any command.

![argc-completions](https://github.com/sigoden/argc-completions/assets/4012553/235bd290-516c-4dec-83d8-17cb852d35ae)

## Features

- Support multiple shells: bash/zsh/powershell/fish/nushell/elvish/xonsh
- Support multiple platforms: windows/macOS/linux
- Built-in completions for 1000+ commands ([full list](./MANIFEST.md))
- Automatically generate completion script from help-text/man-page
- Lazy completing, lower memory consumption and faster startup time

<details>
<summary>
More amazing features that native completion lacks or is difficult to implement:
</summary>
<br>
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
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/dda4b2b4-338c-4a82-8a9a-ec8d7afd2d33" width="550px" alt="complete-cargo-add"></td>
        </tr>
        <tr>
            <td>Complete multiple values<br>(comma-spereated)</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/f29da10b-5d86-4a1c-add0-987a4172a182" width="550px" alt="complete-find-type"></td>
        </tr>
        <tr>
            <td>Complete multiple parts</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/e0ca086f-52c1-4cff-be22-a9c0db7bf823" width="550px" alt="complete-rustup-target-add"></td>
        </tr>
        <tr>
            <td>Complete key-value pairs</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/0d758936-035a-427b-9821-5e1b9274411a" width="550px" alt="complete-ssh-o"></td>
        </tr>
        <tr>
            <td>Delegate to another command<br>(sudo,doas,npx...)</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/8b611145-9c25-478b-8d1c-d58671028b5d" width="550px" alt="complete-yarn-workspace"></td>
        </tr>
        <tr>
            <td>Style &amp; color</td>
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/77531d0e-5857-4b53-9b0f-52fb48215216" width="550px" alt="complete-xtest-color"></td>
        </tr>
    </tbody>
</table>
</details>

## Getting Started

Open your terminal and execute the following commands:

```sh
git clone https://github.com/sigoden/argc-completions.git
cd argc-completions
./scripts/download-tools.sh
./scripts/setup-shell.sh bash  # bash/zsh/powershell/fish/nushell/elvish/xonsh
```

> For Windows, please run the above code in Git Bash.

> Tools downloaded by `./scripts/download-tools.sh`:\
> &nbsp;&nbsp; - [argc](https://github.com/sigoden/argc): completion engine\
> &nbsp;&nbsp; - [yq](https://github.com/mikefarah/yq): YAML/JSON/XML/CSV/TOML processor\
> &nbsp;&nbsp; - macOS only: `brew install bash gawk gnu-sed`

## Generate your own completion script

```sh
./scripts/generate.sh your-command
```

![generate](https://github.com/sigoden/argc-completions/assets/4012553/38ddbeb7-8f43-4f31-aed5-45f8a8f36474)

To learn how `generate` works, see [docs/generate.md](docs/generate.md)

To learn various complete patterns, see [docs/complete-patterns.md](docs/complete-patterns.md)

## License

Argc-completions is made available under the terms of the MIT License. 

See the LICENSE file for license details.