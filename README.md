# Argc-completions

{bash,zsh,fish,powershell,nushell}-completions for 300+ commands.

## Features

- Completions for 300+ commands, with platform-specific variants where needed.
- Provide skills that generate completion scripts from help text or man pages automatically.
- Dynamic completion leads to fewer scripts loading and faster terminal startup.
- Cross shells: bash/zsh/powershell/fish/nushell.
- Cross platforms: linux, macOS, and Windows.

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
            <td>Complete multiple values<br>(comma-separated)</td>
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
            <td><img src="https://github.com/sigoden/argc-completions/assets/4012553/77531d0e-5857-4b53-9b0f-52fb48215216" width="550px" alt="complete-colors"></td>
        </tr>
    </tbody>
</table>

## Getting Started

```sh
git clone https://github.com/sigoden/argc-completions.git
cd argc-completions
./install.sh bash  # bash/zsh/fish/powershell/nushell
```

`install.sh` installs or verifies the required tools, then adds a managed `# >>> argc-completions` block to your shell rc file. Start a new shell afterwards to load the completions.

## Managing completions

After installation, `bin/` is on `PATH`, so the `argc-completions` command is available (you can also run `./bin/argc-completions` directly).

```
$ argc-completions --help
Manage the argc-completions checkout

Usage: argc-completions <COMMAND>

Commands:
  list        List available completion scripts [aliases: ls]
  init-shell  Install or refresh shell integration [aliases: init]
  doctor      Check the installation and dependencies
  upgrade     Update this checkout from its git upstream
```

### Shell configuration

The generated integration sets these environment variables:

| Variable | Meaning |
|---|---|
| `ARGC_COMPLETIONS_ROOT` | Checkout root directory |
| `ARGC_COMPLETIONS_PATH` | Where completion scripts are discovered; defaults to `completions/<os>` plus `completions` |
| `ARGC_SCRIPTS` | Space-separated allowlist; overrides the directory scan |
| `ARGC_SCRIPTS_EXCLUDE` | Space-separated denylist; removed after scanning |

For example, to load completions for only a few commands:

```sh
export ARGC_SCRIPTS="git cargo make"
export ARGC_SCRIPTS_EXCLUDE="gitk"
```

## Uninstall

1. Delete the `argc-completions` directory that you cloned.
2. Remove the `# >>> argc-completions` block from your shell rc file (`~/.bashrc`, `~/.zshrc`, ...). `install.sh` writes a `.argc-completions.bak` backup before editing an existing rc file.

## Generate your own completion

Completion generation is handled by the [`argc-completions-generate`](skills/argc-completions-generate/SKILL.md) agent skill. Ask a coding agent to add or update a command's completion, for example:

```text
@argc-completions-generate rg
```

The skill reads the command's help/man output, generates the script, and verifies it automatically — no manual editing required.

## License

Argc-completions is made available under the terms of the MIT License.

See the LICENSE file for license details.
