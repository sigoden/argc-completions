# Setup and shell portability

Read when installing tools, when a tool check fails, or before writing shell snippets in `CHOICES`. The Environment rules apply to every shell you write; the Install and Shell portability sections are not needed for normal generation.

## Install

- Run `<REPO_ROOT>/install.sh` once; it downloads missing tools into `<REPO_ROOT>/bin/`.
- On macOS it uses system tools where possible and installs missing `gawk`/`bash >= 5` with Homebrew; on Linux and Windows (Git Bash) it uses the system `gawk`/`bash`. Git for Windows includes `gawk`; on Linux install it with the package manager. Missing `argc`/`jq` are downloaded on every platform.
- `<REPO_ROOT>/bin/` holds only tools provided by `<REPO_ROOT>/install.sh` (downloaded `argc`/`jq`/`yq`, plus a `bash` link to Homebrew bash on macOS when the system bash is older than 5); the shell integration adds it to `PATH` only when it exists and is non-empty.
- Multiple names per flag/option, and any name order, require an argc build containing sigoden/argc#451. Verification and inspection still read the older `short_name`/`long_name` export shape, but generation with an older argc drops or rejects the extra spellings.

## Environment

- `<REPO_ROOT>/cache/` is a gitignored work directory; do not commit it. `<REPO_ROOT>/completions/` holds the published scripts and is tracked; do not delete it. Confirm generated output with `test -s <file>` and verify, never `git status`.
- Pipeline tool requirements are in `<SKILL_ROOT>/SKILL.md` §Paths and prerequisites; the shell must also run with the Prerequisites tools only: no `python`, `node`, or other runtimes.
- `yq` is optional and allowed only inside functions in `CHOICES`; never in `SPEC`, `HINTS`, assembly, verification, or preflight.

## Shell portability

Committed shell code must run with both macOS BSD tools and GNU tools. POSIX is the shared reference, not an upper bound: a non-POSIX form is fine when both accept it, such as `sed -E`, `sed -r`, `grep -r`, and `find -maxdepth`.

- `sed`: portable forms include `-E`, `-r`, `-u`, `-i.bak` (non-empty attached suffix), and the `I` substitution flag. Avoid GNU-only `-b`, `-s`, `-z`, long options, regex escapes (`\s`, `\w`, `\+`, `\?`, `\|`), `0,/re/`, `first~step`, and one-line `a`/`i`/`c` text; avoid macOS-only `-a`/`-I`. Do not use separated `-i`, `-i ''`, or `-i''`; `-l` differs between systems. Prefer a temporary file for in-place edits.
- `grep`: portable forms include `-E`, `-F`, `-r`, `-R`, `-o`, `-A`/`-B`/`-C`, `--include`, `--exclude`, and `--line-buffered`. Avoid GNU-only `-P`/`--perl-regexp` and `--null-data` (`-z`/`-Z` decompress on macOS but mean null-data/null-filename on GNU), and macOS-only `-J`, `-O`, `-p`, `--include-dir`, `--mmap`, `--decompress`. Use POSIX classes (`[[:space:]]`, `[[:alnum:]_]`) instead of GNU regex escapes, or use `gawk`.
- `find`: portable forms include `-maxdepth`, `-mindepth`, `-print0`, `-delete`, `-exec ... +`, `-iname`, and `-path`. Avoid GNU-only `-printf`, `-fprintf`, `-regextype`, `-files0-from`, `-newermt`, `-perm /mode`, `-D`, `-O`, and macOS-only `-E`/`-X`; the `-regex` dialect differs, so prefer `-name`/`-path` or `gawk`.
- `gawk`: all text processing uses `gawk`; never invoke `awk`, `nawk`, or `mawk`, or call `gsed`/`ggrep`/`gfind` (not shipped on macOS).
