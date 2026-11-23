#!/usr/bin/env bash
set -euo pipefail

# @describe Print one structural digest line per completion script
#
# Each line has the form:
#   <cmd> [os=<os>] num_subcommands=N num_choice_fns=N num_flag_options=N \
#         hints=<csv> meta=<csv> bridge=<name> choice_fns=<csv>
#
# <cmd> is the command name. os=<os> is present only for a platform-specific
# script under completions/<os>/; a shared script under completions/ has no os
# field. Every platform directory is scanned, not only the current OS.
#
# hints is a comma-separated subset of global, root, and subcmd, in that order.
# bridge is the name in the script's _choice_bridge_<name> reference, or empty.
# choice_fns entries drop the _choice_ prefix.
# With labels, only those labels are digested; without labels every script is
# digested. A label is <os>/<cmd> or <cmd>, and a plain cmd such as "ps" also
# matches every platform script whose command is ps. The script only reads the
# repository.
#
# @arg labels* Labels (<os>/<cmd> or <cmd>) to digest (default: every script)

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
ROOT_DIR="$(cd -P "$SCRIPT_DIR/.." && pwd -P)"

# scan_completion <file> <root> <os>: print the digest line for one completion
# script. Counts cover the whole script; meta and choice_fns preserve file order
# and are deduplicated.
scan_completion() {
    local file=$1
    local root=$2
    local os=$3

    awk -v root="$root" -v os="$os" '
    /^# >>> SPEC$/ { in_spec = 1; next }
    /^# <<< SPEC$/ { in_spec = 0; next }
    /^# >>> HINTS$/ { in_hints = 1; next }
    /^# <<< HINTS$/ { in_hints = 0; next }
    /^# >>> CHOICES$/ { in_choices = 1; next }
    /^# <<< CHOICES$/ { in_choices = 0; next }

    in_spec {
        if ($0 ~ /^# @cmd([ \t]|$)/) {
            subcommands++
        }
        if ($0 ~ /^# @(flag|option)([ \t]|$)/) {
            flag_options++
        }
        if (bridge == "" && $0 ~ /^# @(arg|option|flag)[ \t]/) {
            if (match($0, /_choice_bridge_[A-Za-z0-9_]+/)) {
                bridge = substr($0, RSTART, RLENGTH)
                sub(/^_choice_bridge_/, "", bridge)
            }
        }
        if ($0 ~ /^# @meta[ \t]/) {
            line = $0
            sub(/^# @meta[ \t]+/, "", line)
            key = line
            sub(/[ \t].*$/, "", key)
            if (key != "" && !(key in meta_seen)) {
                meta_seen[key] = 1
                meta[++meta_n] = key
            }
        }
    }

    in_hints {
        if ($0 ~ /^#[ \t]*%%/) {
            marker_seen = 1
            path = $0
            sub(/^#[ \t]*%%/, "", path)
            sub(/^[ \t]+/, "", path)
            sub(/[ \t]+$/, "", path)
            if (path == root) {
                has_root = 1
            } else if (path != "") {
                has_subcmd = 1
            }
        } else if (!marker_seen && $0 ~ /^#/) {
            text = $0
            sub(/^#/, "", text)
            if (text ~ /[^ \t]/) {
                has_global = 1
            }
        }
    }

    in_choices {
        if ($0 ~ /^_choice_[A-Za-z0-9_]+[ \t]*\(\)/) {
            name = $0
            sub(/[ \t]*\(\).*$/, "", name)
            sub(/^_choice_/, "", name)
            if (!(name in fn_seen)) {
                fn_seen[name] = 1
                fns[++fn_n] = name
            }
        }
    }

    END {
        hint_text = ""
        if (has_global) {
            hint_text = "global"
        }
        if (has_root) {
            hint_text = hint_text (hint_text == "" ? "" : ",") "root"
        }
        if (has_subcmd) {
            hint_text = hint_text (hint_text == "" ? "" : ",") "subcmd"
        }

        meta_text = ""
        for (i = 1; i <= meta_n; i++) {
            meta_text = meta_text (i > 1 ? "," : "") meta[i]
        }

        fn_text = ""
        for (i = 1; i <= fn_n; i++) {
            fn_text = fn_text (i > 1 ? "," : "") fns[i]
        }

        printf "%s", root
        if (os != "") {
            printf " os=%s", os
        }
        printf " num_subcommands=%d num_choice_fns=%d num_flag_options=%d hints=%s meta=%s bridge=%s choice_fns=%s\n", \
            subcommands, fn_n, flag_options, hint_text, meta_text, bridge, fn_text
    }
    ' "$file"
}

main() {
    local rel dir root label file token matched os
    local -a candidates=() labels=() selected=() requested=()
    local -A label_file=()
    local -A label_root=()
    local -A label_os=()
    local -A wanted=()

    if [[ -n ${argc_labels+x} ]]; then
        requested=("${argc_labels[@]}")
    fi

    if [[ ! -d "$ROOT_DIR/completions" ]]; then
        printf 'error: completions directory not found: %s\n' "$ROOT_DIR/completions" >&2
        exit 1
    fi

    shopt -s nullglob
    candidates=("$ROOT_DIR"/completions/*.sh "$ROOT_DIR"/completions/*/*.sh)
    shopt -u nullglob

    # Shared scripts are labelled by root; a script under completions/<os>/ is
    # labelled <os>/<root>, so labels from different platforms never collide.
    for file in "${candidates[@]}"; do
        rel="${file#"$ROOT_DIR/completions/"}"
        os=""
        if [[ "$rel" == */* ]]; then
            dir="${rel%%/*}"
            root="${rel#*/}"
            root="${root%.sh}"
            label="$dir/$root"
            os="$dir"
        else
            root="${rel%.sh}"
            label="$root"
        fi
        label_file[$label]="$file"
        label_root[$label]="$root"
        label_os[$label]="$os"
    done

    if ((${#label_file[@]} == 0)); then
        exit 0
    fi

    mapfile -t labels < <(printf '%s\n' "${!label_file[@]}" | LC_ALL=C sort)

    if ((${#requested[@]} > 0)); then
        for token in "${requested[@]}"; do
            if [[ -n ${label_file[$token]+set} ]]; then
                wanted[$token]=1
                continue
            fi
            matched=""
            if [[ "$token" != */* ]]; then
                for label in "${labels[@]}"; do
                    if [[ "${label##*/}" == "$token" ]]; then
                        wanted[$label]=1
                        matched=1
                    fi
                done
            fi
            if [[ -z "$matched" ]]; then
                printf 'error: completion label not found: %s\n' "$token" >&2
                exit 2
            fi
        done
        for label in "${labels[@]}"; do
            if [[ -n ${wanted[$label]+set} ]]; then
                selected+=("$label")
            fi
        done
        labels=("${selected[@]}")
    fi

    for label in "${labels[@]}"; do
        file="${label_file[$label]}"
        root="${label_root[$label]}"
        os="${label_os[$label]}"
        if ! scan_completion "$file" "$root" "$os"; then
            printf 'error: failed to scan %s\n' "$file" >&2
            exit 1
        fi
    done
}

command eval "$(argc --argc-eval "$0" "$@")"
