#!/usr/bin/env bash
# scripts/validate-fragment.jq: description rule acceptance and rejection.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# fragment_description_check <label> <ok|reject> <description> [<needle>]
fragment_description_check() {
    local label="$1" want="$2" desc="$3" needle="${4:-}" frag
    frag="$TMP_DIR/desc-$(printf '%s' "$label" | cksum | cut -d' ' -f1).json"
    fragment_from_description "$desc" "$frag"
    if validate_fragment "$frag" >/dev/null 2>"$frag.err"; then
        if [[ "$want" == ok ]]; then pass "$label"; else fail "$label (unexpected accept)"; fi
    elif [[ "$want" == reject ]] && { [[ -z "$needle" ]] || file_has_line "$frag.err" "$needle"; }; then
        pass "$label"
    else
        fail "$label (want $want: $(head -n 1 "$frag.err"))"
    fi
}

fragment_description_check "validator accepts one sentence" ok 'Manage remotes'
fragment_description_check "validator accepts abbreviation" ok 'Use e.g. foo'
fragment_description_check "validator accepts dotted tail" ok 'save files to PREFIX/..'
fragment_description_check "validator rejects trailing terminator" reject 'Manage remotes.' 'description must be one line'
fragment_description_check "validator rejects second sentence" reject 'First. Second' 'description must be one line'
fragment_description_check "validator rejects home path" reject 'Use /home/you/bin/x' 'description must be one line'
fragment_description_check "validator rejects HOME path" reject 'Set $HOME/.config' 'description must be one line'
fragment_description_check "validator rejects backtick" reject 'a `b`' 'description must be one line'
fragment_description_check "validator accepts CJK single sentence" ok '清理缓存'
fragment_description_check "validator rejects CJK second sentence" reject '清理。更多' 'description must be one line'

helper_finish
