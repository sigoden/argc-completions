# Setup and shell portability

Read this file only when installing tools, when a tool check fails, or before writing shell snippets in `choice-fns`. Normal generation and verification do not need it.

## Install

- Run `<REPO_ROOT>/install.sh` once. It downloads missing tools into `<REPO_ROOT>/bin/`.
- On macOS, `<REPO_ROOT>/install.sh` uses system-installed tools when possible, installs missing `gawk` and `bash >= 5` with Homebrew, and downloads missing `argc`/`jq` into `<REPO_ROOT>/bin/`.
- On Linux and Windows (Git Bash), `<REPO_ROOT>/install.sh` uses the system `gawk`/`bash` and downloads missing `argc`/`jq` into `<REPO_ROOT>/bin/`. Git for Windows already includes `gawk`; on Linux install it with the system package manager.
- `<REPO_ROOT>/bin/` contains only tools downloaded by `<REPO_ROOT>/install.sh`. The shell integration adds it to `PATH` only when it exists and is non-empty.

## Environment

- `<REPO_ROOT>/cache/` is a local, gitignored work directory. Do not commit it.
- Pipeline tool requirements and runtime restrictions are in `<SKILL_ROOT>/SKILL.md` §Prerequisites and §Hard rules.

## Shell portability

Committed shell code must run with both the macOS built-in BSD tools and GNU tools. POSIX is the shared reference, not an upper bound: a non-POSIX form is fine when both macOS and GNU accept it, such as `sed -E`, `sed -r`, `grep -r`, and `find -maxdepth`.

- `sed`: portable forms include `-E`, `-r`, `-u`, `-i.bak` (a non-empty attached suffix), and the `I` substitution flag. Avoid GNU-only `-b`, `-s`, `-z`, GNU long options, GNU regex escapes (`\s`, `\w`, `\+`, `\?`, `\|`, ...), `0,/re/`, `first~step`, and one-line `a`/`i`/`c` text. Avoid macOS-only `-a` and `-I`. Do not use separated `-i`, `-i ''`, or `-i''` forms; `-l` has different meanings on the two systems. Prefer a temporary file for in-place edits.
- `grep`: portable forms include `-E`, `-F`, `-r`, `-R`, `-o`, `-A`/`-B`/`-C`, `--include`, `--exclude`, and `--line-buffered`. Avoid GNU-only `-P`/`--perl-regexp` and `--null-data`; `-z`/`-Z` mean decompress on macOS but null-data/null-filename on GNU. Avoid macOS-only `-J`, `-O`, `-p`, `--include-dir`, `--mmap`, and `--decompress`. Use POSIX classes (`[[:space:]]`, `[[:alnum:]_]`) instead of GNU regex escapes, or use `gawk`.
- `find`: portable forms include `-maxdepth`, `-mindepth`, `-print0`, `-delete`, `-exec ... +`, `-iname`, and `-path`. Avoid GNU-only `-printf`, `-fprintf`, `-regextype`, `-files0-from`, `-newermt`, `-perm /mode`, `-D`, and `-O`. Avoid macOS-only `-E` and `-X`. `-regex` is accepted by both, but the regex dialect differs; prefer `-name`/`-path`, or use `gawk`.
- `gawk`: all text processing uses `gawk`; never invoke `awk`, `nawk`, or `mawk`. Do not call `gsed`/`ggrep`/`gfind`; macOS does not ship them.
