#!/usr/bin/env bash
# Install argc-completions dependencies and shell integration.
#
# Dependencies: bash >= 5, argc, gawk, jq, yq.
#
# This script must run on macOS's built-in bash 3.2. Avoid bash 4+ syntax
# (mapfile, associative arrays, ${var,,}, ...).

set -e

ROOT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
BIN_DIR="$ROOT_DIR/bin"

MIN_ARGC_VERSION=1.25.0
MIN_BASH_VERSION=5.0
MIN_JQ_VERSION=1.6
MIN_YQ_VERSION=4.33.1

os=""
arch=""
shell=""
rc_override=""
check_only=0
print_only=0
assume_yes=0
force=0
no_deps=0
CURRENT_TMP=""
ARGC_BIN=""
BASH_BIN=""
GAWK_BIN=""
JQ_BIN=""
YQ_BIN=""

usage() {
    cat <<'EOF'
Usage: ./install.sh [SHELL] [OPTIONS]

SHELL:
  bash | zsh | fish | powershell | nushell
  Defaults to the shell in $SHELL.

Options:
  --check          Check dependencies and exit.
  --print          Print the shell integration snippet; do not modify rc.
  --rc <file>      Write the integration block to this file instead of the default.
  --yes, -y        Accept prompts (for example, modify the rc file).
  --no-deps        Skip dependency setup; only configure the shell.
  --force, -f      Re-download argc/jq/yq even if system versions are available.
  -h, --help       Show this help.
EOF
}

log_info() {
    printf '[info] %s\n' "$*" >&2
}

log_warn() {
    printf '[warn] %s\n' "$*" >&2
}

die() {
    printf '[error] %s\n' "$*" >&2
    exit 1
}

cleanup() {
    if [ -n "$CURRENT_TMP" ]; then
        rm -rf "$CURRENT_TMP"
        CURRENT_TMP=""
    fi
}

trap cleanup EXIT
trap 'cleanup; exit 130' INT TERM

make_tmp() {
    CURRENT_TMP="$(mktemp -d "${TMPDIR:-/tmp}/argc-completions.XXXXXX" 2>/dev/null || mktemp -d)" \
        || die "cannot create a temporary directory"
    printf '%s\n' "$CURRENT_TMP"
}

cleanup_tmp() {
    cleanup
}

have() {
    command -v "$1" >/dev/null 2>&1
}

bin_path() {
    if [ "$os" = windows ]; then
        printf '%s/%s.exe\n' "$BIN_DIR" "$1"
    else
        printf '%s/%s\n' "$BIN_DIR" "$1"
    fi
}

system_tool() {
    local name="$1" saved="$PATH" dir clean="" found
    local IFS=:
    for dir in $saved; do
        [ -n "$dir" ] || dir="."
        case "$dir" in
        "$BIN_DIR"|"$BIN_DIR"/) continue ;;
        esac
        if [ -n "$clean" ]; then
            clean="$clean:$dir"
        else
            clean="$dir"
        fi
    done
    found="$(PATH="$clean" command -v "$name" 2>/dev/null || true)"
    [ -n "$found" ] || return 1
    printf '%s\n' "$found"
}

add_path_dir() {
    local dir="$1"
    [ -n "$dir" ] && [ -d "$dir" ] || return 0
    case ":$PATH:" in
    *":$dir:"*) ;;
    *) PATH="$dir:$PATH"; export PATH ;;
    esac
}

version_ge() {
    local a="$1" b="$2" i=1 xi yi
    while [ "$i" -le 3 ]; do
        xi="${a%%.*}"
        yi="${b%%.*}"
        xi="${xi%%[!0-9]*}"
        yi="${yi%%[!0-9]*}"
        [ -n "$xi" ] || xi=0
        [ -n "$yi" ] || yi=0
        if [ "$xi" -gt "$yi" ]; then
            return 0
        fi
        if [ "$xi" -lt "$yi" ]; then
            return 1
        fi
        case "$a" in
        *.*) a="${a#*.}" ;;
        *) a="" ;;
        esac
        case "$b" in
        *.*) b="${b#*.}" ;;
        *) b="" ;;
        esac
        i=$((i + 1))
    done
    return 0
}

is_gawk() {
    local candidate="$1"
    [ -n "$candidate" ] && [ -x "$candidate" ] || return 1
    "$candidate" --version 2>/dev/null | grep -q 'GNU Awk'
}

is_yq() {
    local candidate="$1"
    [ -n "$candidate" ] && [ -x "$candidate" ] || return 1
    "$candidate" --version 2>/dev/null | grep -q 'mikefarah/yq'
}

yq_version() {
    local candidate="$1" out
    out="$("$candidate" --version 2>/dev/null)" || return 1
    case "$out" in
    *version*) out="${out##*version }" ;;
    *) out="${out##* }" ;;
    esac
    out="${out%% *}"
    out="${out#v}"
    printf '%s\n' "$out"
}

confirm() {
    if [ "$assume_yes" -eq 1 ]; then
        return 0
    fi
    if [ ! -t 0 ]; then
        return 1
    fi
    printf '%s [y/N] ' "$1"
    read -r answer
    case "$answer" in
    y|Y|yes|YES) return 0 ;;
    *) return 1 ;;
    esac
}

brew_install() {
    local pkg="$1"
    have brew || die "Homebrew is required to install $pkg on macOS"
    if ! confirm "Install $pkg with Homebrew?"; then
        die "skipped; run: brew install $pkg"
    fi
    brew install "$pkg"
}

detect_platform() {
    case "${OS:-}" in
    Windows_NT)
        os=windows
        ;;
    *)
        case "$(uname -s 2>/dev/null)" in
        Darwin) os=macos ;;
        Linux) os=linux ;;
        MINGW*|MSYS*|CYGWIN*) os=windows ;;
        *) os="$(uname -s 2>/dev/null | tr '[:upper:]' '[:lower:]')" ;;
        esac
        ;;
    esac

    case "$(uname -m 2>/dev/null)" in
    x86_64|amd64) arch=amd64 ;;
    arm64|aarch64) arch=aarch64 ;;
    i386|i686) arch=i686 ;;
    *) arch="$(uname -m 2>/dev/null)" ;;
    esac

    [ -n "$os" ] || die "cannot detect the operating system"
    [ -n "$arch" ] || die "cannot detect the CPU architecture"
}

detect_shell() {
    local name
    [ -n "${SHELL:-}" ] || return 0
    name="$(basename "$SHELL")"
    case "$name" in
    bash|zsh|fish) printf '%s\n' "$name" ;;
    nu|nushell) printf 'nushell\n' ;;
    pwsh|powershell) printf 'powershell\n' ;;
    esac
}

detect_shell_if_needed() {
    if [ "$check_only" -eq 0 ] && [ -z "$shell" ]; then
        shell="$(detect_shell)"
        [ -n "$shell" ] || die "cannot detect the shell; specify one of: bash zsh fish powershell nushell"
    fi
}

require_base_tools() {
    local cmd
    for cmd in sed basename chmod cp curl cut dirname find grep head mkdir mktemp mv rm tar tr; do
        have "$cmd" || die "missing required command: $cmd"
    done
    if [ "$os" = windows ]; then
        have unzip || die "missing required command: unzip (needed to extract argc.zip)"
    fi
}

# GitHub API tokens are optional, but anonymous requests are limited to 60 per
# hour per IP. CI runners share their egress IPs, so the quota is often already
# exhausted. GH_TOKEN takes precedence, matching the gh CLI convention.
latest_release_tag_api() {
    local repo="$1" token="${GH_TOKEN:-${GITHUB_TOKEN:-}}" tmp code tag
    tmp="$(make_tmp)" || return 1
    if [ -n "$token" ]; then
        code="$(curl -sSL -o "$tmp/body" -w '%{http_code}' \
            -H "Authorization: Bearer $token" \
            -H 'Accept: application/vnd.github+json' \
            "https://api.github.com/repos/$repo/releases/latest" 2>/dev/null)" || code=""
    else
        code="$(curl -sSL -o "$tmp/body" -w '%{http_code}' \
            -H 'Accept: application/vnd.github+json' \
            "https://api.github.com/repos/$repo/releases/latest" 2>/dev/null)" || code=""
    fi
    if [ "$code" = 200 ] && [ -f "$tmp/body" ]; then
        tag="$(sed -n 's/.*"tag_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' "$tmp/body" \
            | head -n 1)"
    fi
    cleanup_tmp
    case "$code" in
    200) ;;
    403|429)
        log_warn "GitHub API rate limited ($repo); set GH_TOKEN to raise the limit"
        ;;
    ""|000)
        log_warn "GitHub API unreachable ($repo)"
        ;;
    *)
        log_warn "GitHub API request failed ($repo, HTTP $code)"
        ;;
    esac
    [ -n "$tag" ] || return 1
    printf '%s\n' "$tag"
}

# Fallback that does not consume API quota: the /releases/latest page is a plain
# 302 to /releases/tag/<tag>. Do not use -L here, or the Location header is gone.
latest_release_tag_redirect() {
    local repo="$1" location
    location="$(curl -sSI -o /dev/null -w '%{redirect_url}' \
        "https://github.com/$repo/releases/latest" 2>/dev/null)" || return 1
    case "$location" in
    */releases/tag/*) ;;
    *) return 1 ;;
    esac
    location="${location##*/releases/tag/}"
    location="${location%%[?#]*}"
    [ -n "$location" ] || return 1
    printf '%s\n' "$location"
}

latest_release_tag() {
    local repo="$1" tag
    tag="$(latest_release_tag_api "$repo")" || tag=""
    if [ -z "$tag" ]; then
        tag="$(latest_release_tag_redirect "$repo")" || tag=""
    fi
    [ -n "$tag" ] || return 1
    printf '%s\n' "$tag"
}

latest_argc_tag() {
    latest_release_tag sigoden/argc
}

latest_jq_version() {
    local tag
    tag="$(latest_release_tag jqlang/jq)" || return 1
    tag="${tag#jq-}"
    [ -n "$tag" ] || return 1
    printf '%s\n' "$tag"
}

latest_yq_version() {
    local tag
    tag="$(latest_release_tag mikefarah/yq)" || return 1
    tag="${tag#v}"
    [ -n "$tag" ] || return 1
    printf '%s\n' "$tag"
}

argc_target() {
    case "$os-$arch" in
    linux-amd64) printf 'x86_64-unknown-linux-musl\n' ;;
    linux-aarch64) printf 'aarch64-unknown-linux-musl\n' ;;
    linux-i686) printf 'i686-unknown-linux-musl\n' ;;
    macos-amd64) printf 'x86_64-apple-darwin\n' ;;
    macos-aarch64) printf 'aarch64-apple-darwin\n' ;;
    windows-amd64) printf 'x86_64-pc-windows-msvc\n' ;;
    windows-aarch64) printf 'aarch64-pc-windows-msvc\n' ;;
    windows-i686) printf 'i686-pc-windows-msvc\n' ;;
    *) die "no argc release for $os-$arch" ;;
    esac
}

download_file() {
    local url="$1" dest="$2"
    log_info "download: $url"
    curl -fsSL "$url" -o "$dest" || die "download failed: $url"
}

ensure_argc() {
    local bin version tag target ext tmp archive src candidate
    bin="$(bin_path argc)"

    if [ "$force" -eq 0 ]; then
        candidate="$(system_tool argc || true)"
        if [ -n "$candidate" ]; then
            version="$("$candidate" --argc-version 2>/dev/null | "${GAWK_BIN:-gawk}" '{print $2}')"
            if version_ge "$version" "$MIN_ARGC_VERSION"; then
                ARGC_BIN="$candidate"
                log_info "argc: $version ($candidate)"
                return
            fi
        fi
        if [ -x "$bin" ]; then
            version="$("$bin" --argc-version 2>/dev/null | "${GAWK_BIN:-gawk}" '{print $2}')"
            if version_ge "$version" "$MIN_ARGC_VERSION"; then
                ARGC_BIN="$bin"
                log_info "argc: $version ($bin)"
                return
            fi
        fi
    fi

    tag="$(latest_argc_tag)" || tag=""
    [ -n "$tag" ] || die "could not query the latest argc release; set GH_TOKEN if the GitHub API is rate limited"
    case "$tag" in
    v*) ;;
    *) tag="v$tag" ;;
    esac

    target="$(argc_target)"
    if [ "$os" = windows ]; then
        ext=zip
    else
        ext=tar.gz
    fi

    tmp="$(make_tmp)"
    archive="$tmp/argc.$ext"
    download_file "https://github.com/sigoden/argc/releases/download/$tag/argc-$tag-$target.$ext" "$archive"

    if [ "$ext" = zip ]; then
        unzip -q -o "$archive" -d "$tmp"
    else
        tar -xzf "$archive" -C "$tmp"
    fi

    src="$tmp/argc"
    [ -f "$src" ] || src="$tmp/argc.exe"
    if [ ! -f "$src" ]; then
        src="$(find "$tmp" -type f \( -name argc -o -name argc.exe \) 2>/dev/null | head -n 1)"
    fi
    [ -n "$src" ] && [ -f "$src" ] || die "argc binary not found in the downloaded archive"

    mkdir -p "$BIN_DIR"
    rm -f "$bin"
    cp -f "$src" "$bin"
    chmod +x "$bin"
    cleanup_tmp

    version="$("$bin" --argc-version 2>/dev/null | "${GAWK_BIN:-gawk}" '{print $2}')"
    [ -n "$version" ] || die "downloaded argc is not runnable: $bin"
    version_ge "$version" "$MIN_ARGC_VERSION" || die "downloaded argc is too old: $version (need >= $MIN_ARGC_VERSION)"
    ARGC_BIN="$bin"
    log_info "argc: $version ($bin)"
}

ensure_gawk() {
    local src bin candidate
    bin="$(bin_path gawk)"
    src=""

    candidate="$(system_tool gawk || true)"
    if [ -n "$candidate" ] && is_gawk "$candidate"; then
        src="$candidate"
    fi
    if [ -z "$src" ] && [ -x "$bin" ] && is_gawk "$bin"; then
        src="$bin"
    fi

    if [ -z "$src" ]; then
        case "$os" in
        macos)
            brew_install gawk
            add_path_dir "$(brew --prefix)/bin"
            candidate="$(brew --prefix)/bin/gawk"
            [ -x "$candidate" ] || candidate="$(system_tool gawk || true)"
            if is_gawk "$candidate"; then
                src="$candidate"
            fi
            ;;
        linux)
            die "gawk is required; install it with: apt install gawk | dnf install gawk | pacman -S gawk | apk add gawk"
            ;;
        windows)
            die "gawk is required; Git for Windows includes gawk, so ensure it is on PATH"
            ;;
        esac
    fi

    [ -n "$src" ] && [ -x "$src" ] || die "gawk not found after setup"
    is_gawk "$src" || die "not gawk: $src"
    GAWK_BIN="$src"
    log_info "gawk: $("$src" --version | head -n 1) ($src)"
}

ensure_bash() {
    local bin bash_bin version brew_bash
    bin="$(bin_path bash)"

    # A bin/bash link created by a previous run takes precedence, so re-running
    # install.sh on macOS does not prompt for Homebrew again.
    if [ -x "$bin" ]; then
        version="$("$bin" -c 'printf "%s.%s" "${BASH_VERSINFO[0]}" "${BASH_VERSINFO[1]}"')"
        if version_ge "$version" "$MIN_BASH_VERSION"; then
            BASH_BIN="$bin"
            log_info "bash: $version ($bin)"
            return
        fi
    fi

    bash_bin="$(system_tool bash || true)"
    [ -n "$bash_bin" ] || die "bash is required"

    version="$("$bash_bin" -c 'printf "%s.%s" "${BASH_VERSINFO[0]}" "${BASH_VERSINFO[1]}"')"
    if version_ge "$version" "$MIN_BASH_VERSION"; then
        BASH_BIN="$bash_bin"
        log_info "bash: $version ($bash_bin)"
        return
    fi

    case "$os" in
    macos)
        brew_install bash
        add_path_dir "$(brew --prefix)/bin"
        brew_bash="$(brew --prefix)/bin/bash"
        [ -x "$brew_bash" ] || brew_bash="$(system_tool bash || true)"
        [ -n "$brew_bash" ] && [ -x "$brew_bash" ] || die "bash not found after Homebrew install"
        version="$("$brew_bash" -c 'printf "%s.%s" "${BASH_VERSINFO[0]}" "${BASH_VERSINFO[1]}"')"
        version_ge "$version" "$MIN_BASH_VERSION" || die "Homebrew bash is too old: $version"

        # Link it into bin/ so shells that prepend bin/ to PATH get bash >= 5.
        mkdir -p "$BIN_DIR"
        rm -f "$bin"
        ln -s "$brew_bash" "$bin" || die "cannot link: $bin -> $brew_bash"
        log_info "linked: $bin -> $brew_bash"

        BASH_BIN="$bin"
        log_info "bash: $version ($bin)"
        ;;
    windows)
        die "bash >= $MIN_BASH_VERSION is required (found $version); upgrade Git for Windows"
        ;;
    linux)
        die "bash >= $MIN_BASH_VERSION is required (found $version); install a newer bash with your package manager"
        ;;
    *)
        die "bash >= $MIN_BASH_VERSION is required (found $version)"
        ;;
    esac
}


jq_asset() {
    case "$os-$arch" in
    linux-amd64) printf 'jq-linux-amd64\n' ;;
    linux-aarch64) printf 'jq-linux-arm64\n' ;;
    linux-i686) printf 'jq-linux-i386\n' ;;
    macos-amd64) printf 'jq-macos-amd64\n' ;;
    macos-aarch64) printf 'jq-macos-arm64\n' ;;
    windows-amd64) printf 'jq-windows-amd64.exe\n' ;;
    # Prefer the amd64 build on Windows ARM64 so the download works across jq
    # releases; it runs under emulation.
    windows-aarch64) printf 'jq-windows-amd64.exe\n' ;;
    windows-i686) printf 'jq-windows-i386.exe\n' ;;
    *) return 1 ;;
    esac
}

ensure_jq() {
    local bin version jq_version asset url tmp brew_jq candidate
    bin="$(bin_path jq)"

    if [ "$force" -eq 0 ]; then
        candidate="$(system_tool jq || true)"
        if [ -n "$candidate" ]; then
            version="$("$candidate" --version 2>/dev/null)"
            version="${version#jq-}"
            if version_ge "$version" "$MIN_JQ_VERSION"; then
                JQ_BIN="$candidate"
                log_info "jq: $("$candidate" --version) ($candidate)"
                return
            fi
        fi
        if [ -x "$bin" ]; then
            version="$("$bin" --version 2>/dev/null)"
            version="${version#jq-}"
            if version_ge "$version" "$MIN_JQ_VERSION"; then
                JQ_BIN="$bin"
                log_info "jq: $("$bin" --version) ($bin)"
                return
            fi
        fi
    fi

    jq_version="$(latest_jq_version)" || jq_version=""
    [ -n "$jq_version" ] || die "could not query the latest jq release; set GH_TOKEN if the GitHub API is rate limited"

    asset="$(jq_asset)" || die "no jq binary for $os-$arch; install jq with your package manager"
    url="https://github.com/jqlang/jq/releases/download/jq-$jq_version/$asset"
    tmp="$(make_tmp)"
    if ! curl -fsSL "$url" -o "$tmp/jq"; then
        cleanup_tmp
        case "$os" in
        macos)
            brew_install jq
            add_path_dir "$(brew --prefix)/bin"
            brew_jq="$(brew --prefix)/bin/jq"
            [ -x "$brew_jq" ] || brew_jq="$(system_tool jq || true)"
            [ -n "$brew_jq" ] && [ -x "$brew_jq" ] || die "jq not found after Homebrew install"
            JQ_BIN="$brew_jq"
            log_info "jq: $("$brew_jq" --version) ($brew_jq)"
            return
            ;;
        *)
            die "download failed: $url (install jq with your package manager)"
            ;;
        esac
    fi

    mkdir -p "$BIN_DIR"
    rm -f "$bin"
    cp -f "$tmp/jq" "$bin"
    chmod +x "$bin"
    cleanup_tmp
    version="$("$bin" --version 2>/dev/null)"
    [ -n "$version" ] || die "downloaded jq is not runnable: $bin"
    version="${version#jq-}"
    version_ge "$version" "$MIN_JQ_VERSION" || die "downloaded jq is too old: $version (need >= $MIN_JQ_VERSION)"
    JQ_BIN="$bin"
    log_info "jq: $("$bin" --version) ($bin)"
}

yq_asset() {
    case "$os-$arch" in
    linux-amd64) printf 'yq_linux_amd64\n' ;;
    linux-aarch64) printf 'yq_linux_arm64\n' ;;
    linux-i686) printf 'yq_linux_386\n' ;;
    macos-amd64) printf 'yq_darwin_amd64\n' ;;
    macos-aarch64) printf 'yq_darwin_arm64\n' ;;
    windows-amd64) printf 'yq_windows_amd64.exe\n' ;;
    windows-aarch64) printf 'yq_windows_arm64.exe\n' ;;
    windows-i686) printf 'yq_windows_386.exe\n' ;;
    *) return 1 ;;
    esac
}

ensure_yq() {
    local bin version yq_version asset url tmp brew_yq candidate tag
    bin="$(bin_path yq)"

    if [ "$force" -eq 0 ]; then
        candidate="$(system_tool yq || true)"
        if [ -n "$candidate" ] && is_yq "$candidate"; then
            version="$(yq_version "$candidate")"
            if version_ge "$version" "$MIN_YQ_VERSION"; then
                YQ_BIN="$candidate"
                log_info "yq: $("$candidate" --version) ($candidate)"
                return
            fi
        fi
        if [ -x "$bin" ] && is_yq "$bin"; then
            version="$(yq_version "$bin")"
            if version_ge "$version" "$MIN_YQ_VERSION"; then
                YQ_BIN="$bin"
                log_info "yq: $("$bin" --version) ($bin)"
                return
            fi
        fi
    fi

    yq_version="$(latest_yq_version)" || yq_version=""
    [ -n "$yq_version" ] || die "could not query the latest yq release; set GH_TOKEN if the GitHub API is rate limited"

    asset="$(yq_asset)" || die "no yq binary for $os-$arch; install mikefarah/yq from GitHub"
    tag="v$yq_version"
    url="https://github.com/mikefarah/yq/releases/download/$tag/$asset"
    tmp="$(make_tmp)"
    if ! curl -fsSL "$url" -o "$tmp/yq"; then
        cleanup_tmp
        case "$os" in
        macos)
            brew_install yq
            add_path_dir "$(brew --prefix)/bin"
            brew_yq="$(brew --prefix)/bin/yq"
            [ -x "$brew_yq" ] || brew_yq="$(system_tool yq || true)"
            [ -n "$brew_yq" ] && [ -x "$brew_yq" ] || die "yq not found after Homebrew install"
            is_yq "$brew_yq" || die "not mikefarah/yq: $brew_yq"
            version="$(yq_version "$brew_yq")"
            version_ge "$version" "$MIN_YQ_VERSION" || die "Homebrew yq is too old: $version (need >= $MIN_YQ_VERSION)"
            YQ_BIN="$brew_yq"
            log_info "yq: $("$brew_yq" --version) ($brew_yq)"
            return
            ;;
        *)
            die "download failed: $url (install mikefarah/yq from GitHub; distro yq packages may be the Python wrapper)"
            ;;
        esac
    fi

    mkdir -p "$BIN_DIR"
    rm -f "$bin"
    cp -f "$tmp/yq" "$bin"
    chmod +x "$bin"
    cleanup_tmp
    is_yq "$bin" || die "downloaded yq is not mikefarah/yq: $bin"
    version="$(yq_version "$bin")"
    [ -n "$version" ] || die "downloaded yq is not runnable: $bin"
    version_ge "$version" "$MIN_YQ_VERSION" || die "downloaded yq is too old: $version (need >= $MIN_YQ_VERSION)"
    YQ_BIN="$bin"
    log_info "yq: $("$bin" --version) ($bin)"
}

report_ok() {
    printf '[ok]   %-8s %s\n' "$1" "$2"
}

report_missing() {
    printf '[miss] %-8s %s\n' "$1" "$2"
}

report_warn() {
    printf '[warn] %-8s %s\n' "$1" "$2"
}

remove_managed_links() {
    local name bin
    # Legacy links from older installers. bin/bash is managed on purpose by
    # ensure_bash on macOS, so it is not removed here.
    for name in argc gawk jq yq; do
        bin="$(bin_path "$name")"
        if [ -L "$bin" ]; then
            rm -f "$bin"
            log_info "removed legacy link: $bin"
        fi
    done
}

check_all() {
    local missing=0 version arg_bin bash_bin jq_version gawk_bin yq_bin candidate

    bash_bin="$(system_tool bash || true)"
    version=""
    if [ -n "$bash_bin" ]; then
        version="$("$bash_bin" -c 'printf "%s.%s" "${BASH_VERSINFO[0]}" "${BASH_VERSINFO[1]}"')"
    fi
    if [ -z "$version" ] || ! version_ge "$version" "$MIN_BASH_VERSION"; then
        candidate="$(bin_path bash)"
        if [ -x "$candidate" ]; then
            bash_bin="$candidate"
            version="$("$candidate" -c 'printf "%s.%s" "${BASH_VERSINFO[0]}" "${BASH_VERSINFO[1]}"')"
        fi
    fi
    if [ -n "$version" ] && version_ge "$version" "$MIN_BASH_VERSION"; then
        report_ok bash "$version"
    else
        report_missing bash ">= $MIN_BASH_VERSION (found ${version:-none}; run ./install.sh)"
        missing=1
    fi

    arg_bin="$(system_tool argc || true)"
    version=""
    if [ -n "$arg_bin" ]; then
        version="$("$arg_bin" --argc-version 2>/dev/null)"
        version="${version#argc }"
    fi
    if [ -z "$version" ] || ! version_ge "$version" "$MIN_ARGC_VERSION"; then
        candidate="$(bin_path argc)"
        if [ -x "$candidate" ]; then
            version="$("$candidate" --argc-version 2>/dev/null)"
            version="${version#argc }"
        else
            version=""
        fi
    fi
    if [ -n "$version" ] && version_ge "$version" "$MIN_ARGC_VERSION"; then
        report_ok argc "$version"
    else
        report_missing argc ">= $MIN_ARGC_VERSION (run ./install.sh)"
        missing=1
    fi

    gawk_bin="$(system_tool gawk || true)"
    if [ -n "$gawk_bin" ] && ! is_gawk "$gawk_bin"; then
        gawk_bin=""
    fi
    if [ -z "$gawk_bin" ]; then
        candidate="$(bin_path gawk)"
        if [ -x "$candidate" ] && is_gawk "$candidate"; then
            gawk_bin="$candidate"
        fi
    fi
    if [ -n "$gawk_bin" ]; then
        report_ok gawk "$("$gawk_bin" --version | head -n 1 | cut -d, -f1)"
    else
        report_missing gawk "run ./install.sh; macOS: brew install gawk"
        missing=1
    fi

    jq_version=""
    candidate="$(system_tool jq || true)"
    if [ -n "$candidate" ]; then
        jq_version="$("$candidate" --version 2>/dev/null)"
        version="${jq_version#jq-}"
        if ! version_ge "$version" "$MIN_JQ_VERSION"; then
            jq_version=""
        fi
    fi
    if [ -z "$jq_version" ]; then
        candidate="$(bin_path jq)"
        if [ -x "$candidate" ]; then
            jq_version="$("$candidate" --version 2>/dev/null)"
            version="${jq_version#jq-}"
            if ! version_ge "$version" "$MIN_JQ_VERSION"; then
                jq_version=""
            fi
        fi
    fi
    if [ -n "$jq_version" ]; then
        report_ok jq "$jq_version"
    else
        report_missing jq ">= $MIN_JQ_VERSION (run ./install.sh)"
        missing=1
    fi

    yq_bin=""
    candidate="$(system_tool yq || true)"
    if [ -n "$candidate" ] && is_yq "$candidate"; then
        version="$(yq_version "$candidate")"
        if version_ge "$version" "$MIN_YQ_VERSION"; then
            yq_bin="$candidate"
        fi
    fi
    if [ -z "$yq_bin" ]; then
        candidate="$(bin_path yq)"
        if [ -x "$candidate" ] && is_yq "$candidate"; then
            version="$(yq_version "$candidate")"
            if version_ge "$version" "$MIN_YQ_VERSION"; then
                yq_bin="$candidate"
            fi
        fi
    fi
    if [ -n "$yq_bin" ]; then
        report_ok yq "$(yq_version "$yq_bin")"
    else
        report_missing yq "mikefarah/yq >= $MIN_YQ_VERSION (run ./install.sh)"
        missing=1
    fi

    if [ "$os" = macos ] && ! have realpath; then
        report_warn realpath "missing (macOS < 13); path completion may need coreutils"
    fi

    if [ "$missing" -ne 0 ]; then
        printf '\nSome required tools are missing. Run ./install.sh to install them.\n' >&2
        exit 1
    fi
    printf '\nAll required tools are available.\n'
}

rc_file() {
    case "$1" in
    bash)
        if [ "$os" = macos ]; then
            printf '%s\n' "$HOME/.bash_profile"
        else
            printf '%s\n' "$HOME/.bashrc"
        fi
        ;;
    zsh)
        printf '%s\n' "${ZDOTDIR:-$HOME}/.zshrc"
        ;;
    fish)
        printf '%s\n' "${XDG_CONFIG_HOME:-$HOME/.config}/fish/config.fish"
        ;;
    powershell)
        if have pwsh; then
            pwsh -NoProfile -Command '$PROFILE' 2>/dev/null | tr -d '\r'
        elif have powershell; then
            powershell -NoProfile -Command '$PROFILE' 2>/dev/null | tr -d '\r'
        fi
        ;;
    nushell)
        if have nu; then
            nu -c '$nu.config-path' 2>/dev/null | tr -d '\r'
        elif [ -n "${APPDATA:-}" ]; then
            printf '%s\\nushell\\config.nu\n' "$APPDATA"
        else
            printf '%s\n' "${XDG_CONFIG_HOME:-$HOME/.config}/nushell/config.nu"
        fi
        ;;
    esac
}

install_rc_block() {
    local rc="$1" line="$2" tmp start_line end_line gawk_bin="${GAWK_BIN:-gawk}"
    command -v "$gawk_bin" >/dev/null 2>&1 || [ -x "$gawk_bin" ] || die "gawk is required (run ./install.sh)"
    start_line="$(grep -nF '# >>> argc-completions' "$rc" 2>/dev/null | head -n 1 | cut -d: -f1)"
    end_line="$(grep -nF '# <<< argc-completions' "$rc" 2>/dev/null | head -n 1 | cut -d: -f1)"

    if [ -n "$start_line" ] && [ -n "$end_line" ] && [ "$start_line" -lt "$end_line" ]; then
        tmp="$(mktemp)"
        LINE="$line" "$gawk_bin" '
            {
                cmp = $0
                sub(/\015$/, "", cmp)
            }
            cmp == "# >>> argc-completions" { print; print ENVIRON["LINE"]; skip = 1; next }
            cmp == "# <<< argc-completions" { skip = 0; print; next }
            !skip { print }
        ' "$rc" > "$tmp"
        cp -f "$tmp" "$rc"
        rm -f "$tmp"
        return 0
    fi

    if [ -n "$start_line" ] || [ -n "$end_line" ]; then
        log_warn "incomplete argc-completions block in $rc; leaving it unchanged"
        return 1
    fi

    if grep -q 'ARGC_COMPLETIONS_ROOT' "$rc" 2>/dev/null; then
        log_warn "ARGC_COMPLETIONS_ROOT already exists in $rc; leaving it unchanged"
        return 1
    fi
    printf '\n# >>> argc-completions\n%s\n# <<< argc-completions\n' "$line" >> "$rc"
    return 0
}

setup_shell() {
    local line rc
    [ -n "$shell" ] || die "no shell selected"
    line="$(bash "$ROOT_DIR/scripts/init-shell.sh" "$shell")" || die "failed to generate shell integration for $shell"

    if [ "$print_only" -eq 1 ]; then
        printf '%s\n' "$line"
        return
    fi

    if [ -n "$rc_override" ]; then
        rc="$rc_override"
        case "$rc" in
        "~/"*) rc="$HOME/${rc#~/}" ;;
        esac
        if [ "$os" = windows ] && have cygpath; then
            rc="$(cygpath -u "$rc")"
        fi
    else
        rc="$(rc_file "$shell" | head -n 1)"
    fi

    if [ -z "$rc" ]; then
        log_warn "cannot determine the rc file for $shell; add this line manually:"
        printf '%s\n' "$line"
        return
    fi

    if ! confirm "Add argc-completions to $rc?"; then
        log_info "not modifying $rc; add this line manually:"
        printf '%s\n' "$line"
        return
    fi

    if [ -f "$rc" ]; then
        cp -f "$rc" "$rc.argc-completions.bak"
    else
        mkdir -p "$(dirname "$rc")"
        : > "$rc"
    fi
    if install_rc_block "$rc" "$line"; then
        log_info "updated $rc"
    else
        log_info "left $rc unchanged"
    fi
}

verify_install() {
    local argc_bin bash_bin gawk_bin yq_bin file cmd cli_version
    bash_bin="${BASH_BIN:-}"
    [ -n "$bash_bin" ] || bash_bin="$(system_tool bash || true)"
    [ -n "$bash_bin" ] || bash_bin="$(command -v bash 2>/dev/null || true)"
    [ -n "$bash_bin" ] || die "bash not found after installation"
    log_info "bash: $("$bash_bin" -c 'echo $BASH_VERSION') ($bash_bin)"

    argc_bin="${ARGC_BIN:-}"
    if [ -z "$argc_bin" ]; then
        argc_bin="$(system_tool argc || true)"
        [ -n "$argc_bin" ] || argc_bin="$(bin_path argc)"
    fi
    [ -x "$argc_bin" ] || die "argc not found after installation"
    log_info "argc: $("$argc_bin" --argc-version) ($argc_bin)"

    gawk_bin="${GAWK_BIN:-}"
    if [ -z "$gawk_bin" ]; then
        gawk_bin="$(system_tool gawk || true)"
        [ -n "$gawk_bin" ] || gawk_bin="$(bin_path gawk)"
    fi
    if [ -x "$gawk_bin" ]; then
        log_info "gawk: $("$gawk_bin" --version | head -n 1) ($gawk_bin)"
    fi

    yq_bin="${YQ_BIN:-}"
    if [ -z "$yq_bin" ]; then
        yq_bin="$(system_tool yq || true)"
        [ -n "$yq_bin" ] || yq_bin="$(bin_path yq)"
    fi
    if [ -x "$yq_bin" ]; then
        log_info "yq: $("$yq_bin" --version | head -n 1) ($yq_bin)"
    fi


    for file in "$ROOT_DIR"/*.sh "$ROOT_DIR"/scripts/*.sh "$ROOT_DIR"/completions/*.sh "$ROOT_DIR"/utils/*.sh "$BIN_DIR"/argc-completions; do
        [ -f "$file" ] || continue
        bash -n "$file" || die "syntax error: $file"
    done

    if [ -f "$BIN_DIR/argc-completions" ]; then
        if ! cli_version="$(bash "$BIN_DIR/argc-completions" --version 2>&1)"; then
            die "argc-completions smoke test failed"
        fi
        log_info "argc-completions: $cli_version"
    fi

    for file in "$ROOT_DIR"/completions/*.sh; do
        [ -f "$file" ] || continue
        cmd="$(basename "$file" .sh)"
        if PATH="$BIN_DIR:$PATH" ARGC_COMPLETIONS_ROOT="$ROOT_DIR" "$argc_bin" --argc-compgen bash "$file" "$cmd" -- >/dev/null 2>&1; then
            log_info "compgen smoke test: $cmd"
        else
            log_warn "compgen smoke test failed for $cmd (not fatal)"
        fi
        break
    done
    log_info "installation complete"
}

parse_args() {
    while [ $# -gt 0 ]; do
        case "$1" in
        bash|zsh|fish|powershell|nushell)
            shell="$1"
            ;;
        --check)
            check_only=1
            ;;
        --print)
            print_only=1
            ;;
        --rc)
            [ $# -ge 2 ] || die "--rc requires a value"
            rc_override="$2"
            shift
            ;;
        --yes|-y)
            assume_yes=1
            ;;
        --no-deps)
            no_deps=1
            ;;
        --force|-f)
            force=1
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            die "unknown option: $1 (try --help)"
            ;;
        esac
        shift
    done
}

main() {
    parse_args "$@"
    detect_platform
    require_base_tools
    export PATH="$BIN_DIR:$PATH"
    detect_shell_if_needed

    if [ "$check_only" -eq 1 ]; then
        check_all
        return
    fi

    if [ "$print_only" -eq 1 ]; then
        setup_shell
        return
    fi

    if [ "$no_deps" -eq 0 ]; then
        remove_managed_links
        ensure_bash
        ensure_gawk
        ensure_argc
        ensure_jq
        ensure_yq
    fi

    setup_shell

    if [ "$no_deps" -eq 0 ]; then
        verify_install
    fi
}

main "$@"
