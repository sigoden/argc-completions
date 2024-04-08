#!/usr/bin/env bash

# Download argc and yq.
# Usage: ./download-tools.sh [-f|--force]

set -e

MIN_ARGC_VERSION=1.17.0
MIN_YQ_VERSION=4.25.1

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"
INSTALL_DIR="$ROOT_DIR/bin"
TMP_DIR=/tmp/argc_completions_bin
TAG_SED_COMMAND='s/.*"tag_name": "v\([0-9.]*\)".*/\1/p'

if [[ "$1" == "--force" || "$1" == "-f" ]]; then
    force=1
fi

download_tools() {
    mkdir -p "$INSTALL_DIR" "$TMP_DIR"
    OS_ARCH="$OS-$ARCH"

    case $OS_ARCH in
    linux-amd64)
        argc_file_suffix="x86_64-unknown-linux-musl.tar.gz"
        yq_file_suffix="linux_amd64.tar.gz"
        ;;
    linux-aarch64)
        argc_file_suffix="aarch64-unknown-linux-musl.tar.gz"
        yq_file_suffix="linux_arm64.tar.gz"
        ;;
    linux-i686)
        argc_file_suffix="i686-unknown-linux-musl.tar.gz"
        yq_file_suffix="linux_386.tar.gz"
        ;;
    macos-amd64)
        argc_file_suffix="x86_64-apple-darwin.tar.gz"
        yq_file_suffix="darwin_amd64.tar.gz"
        ;;
    macos-aarch64)
        argc_file_suffix="aarch64-apple-darwin.tar.gz"
        yq_file_suffix="darwin_arm64.tar.gz"
        ;;
    windows-amd64)
        argc_file_suffix="x86_64-pc-windows-msvc.zip"
        yq_file_suffix="windows_amd64.zip"
        ;;
    windows-aarch64)
        argc_file_suffix="aarch64-pc-windows-msvc.zip"
        yq_file_suffix="windows_arm64.zip"
        ;;
    windows-i686)
        argc_file_suffix="i686-pc-windows-msvc.zip"
        yq_file_suffix="windows_386.zip"
        ;;
    *)
        echo "error: no tools for you os. Sorry!"
        exit 1
        ;;
    esac

    download_argc=1
    if [[ -z "$force" ]]; then
        if command -v argc > /dev/null; then
            argc_version=$(argc --argc-version | cut -d ' ' -f2)
            if semver_ge "$argc_version" "$MIN_ARGC_VERSION"; then
                download_argc=0
            fi
        fi
    fi
    if [[ $download_argc -eq 1 ]]; then
        argc_version=$(curl -fsSL https://api.github.com/repos/sigoden/argc/releases/latest | sed -n "$TAG_SED_COMMAND")
        fetch argc "https://github.com/sigoden/argc/releases/download/v${argc_version}/argc-v${argc_version}-${argc_file_suffix}" argc
    else
        echo argc found
        echo
    fi

    download_yq=1
    if [[ -z "$force" ]]; then
        if command -v yq > /dev/null; then
            yq_version=$(yq --version | cut -d ' ' -f4)
            if semver_ge "$yq_version" "$MIN_YQ_VERSION"; then
                download_yq=0
            fi
        fi
    fi
    if [[ $download_yq -eq 1 ]]; then
        yq_version=$(curl -fsSL https://api.github.com/repos/mikefarah/yq/releases/latest | sed -n "$TAG_SED_COMMAND")
        fetch yq "https://github.com/mikefarah/yq/releases/download/v${yq_version}/yq_${yq_file_suffix}" "yq_${yq_file_suffix%%.*}"
    else
        echo yq found
        echo
    fi

    if [[ "$OS" == "macos" ]]; then
        download_macos_tools
    else
        if ! command -v gawk > /dev/null; then
            exist_awk=0
            if command -v awk > /dev/null; then
                if awk --version 2>/dev/null | grep -q 'GNU Awk'; then
                    ln -sf `which awk` "$INSTALL_DIR/gawk"
                    exist_awk=1
                fi
            fi
            if [[ "$exist_awk" -eq 0 ]]; then
                echo warning: gawk was not found
                echo
            fi
        fi
    fi
}

download_macos_tools() {
    if [[ "$(bash --version | head -1)" == *"version 3"* ]]; then
        macos_tools="$macos_tools bash"
    fi
    if ! command -v gawk > /dev/null; then
        macos_tools="$macos_tools gawk"
    fi
    if ! command -v gsed > /dev/null; then
        macos_tools="$macos_tools gnu-sed"
    else
        ln -sf `which gsed` "$INSTALL_DIR/sed"
    fi
    if [[ -z "$macos_tools" ]]; then
        return
    fi
    if command -v brew > /dev/null && tty -s; then
        read -p "Install required tools with \`brew install$macos_tools\`? (Y/n): " answer
        if [[ -z "$answer" ]] || [[ "$answer" =~ [yY][eE][sS]|[yY] ]]; then
            brew install $macos_tools
            ln -sf `which gsed` "$INSTALL_DIR/sed"
            installed_macos_tools=1
        fi
    fi
    if [[ -z "$installed_macos_tools" ]]; then
        echo "For macOS, you need to install tools:$macos_tools"
    fi
    echo
}


fetch() {
    bin_name=$1
    url=$2
    extract_file_path=$3

    file_name=$(basename $url)
    tmp_file=$TMP_DIR/$file_name
    echo download $bin_name
    echo fetch $url

    _curl="curl"
    if [ $OS == "windows" ]; then
        if command -v winpty >/dev/null 2>&1; then
            _curl="winpty curl"
        fi
    fi

    $_curl -# -fLo $tmp_file ${GH_PROXY:-}$url
    if [[ "$OS" == "windows" ]]; then
        install_path="$INSTALL_DIR/$bin_name.exe"
        unzip -o -d $TMP_DIR $tmp_file
        cp -f $TMP_DIR/$extract_file_path.exe "$install_path"
    else
        install_path="$INSTALL_DIR/$bin_name"
        tar -C $TMP_DIR -xf $tmp_file
        cp -f $TMP_DIR/$extract_file_path "$install_path"
    fi
    echo successfully installed $bin_name to $install_path
    echo
}

semver_ge() {
    version1=$1
    version2=$2

    if [[ "$version1" == "$version2" ]]; then
        return 0
    fi

    major1=$(echo $version1 | cut -d . -f1)
    minor1=$(echo $version1 | cut -d . -f2)
    patch1=$(echo $version1 | cut -d . -f3)

    major2=$(echo $version2 | cut -d . -f1)
    minor2=$(echo $version2 | cut -d . -f2)
    patch2=$(echo $version2 | cut -d . -f3)

    if [[ "$major1" -gt "$major2" ]]; then
        return 0
    fi

    if [[ "$minor1" -gt "$minor2" ]]; then
        return 0
    fi

    if [[ "$patch1" -gt "$patch2" ]]; then
        return 0
    fi

    return 1
}

detect_os() {
    local s=$(uname)
    if [[ "$s" == "Linux" ]]; then
        OS=linux
    elif [[ "$s" == "Darwin" ]]; then
        OS=macos
    elif [[ "$s" =~ "_NT" ]]; then
        OS=windows
    fi
}

detect_arch() {
    local s=$(uname -m)
    if [[ "$s" == "x86_64" ]]; then
        ARCH=amd64
    elif [[ "$s" == "i686" ]]; then
        ARCH=i686
    elif [[ "$s" == "aarch64" ]] || [[ "$s" == "arm64" ]]; then
        ARCH=aarch64
    fi
}

detect_os
detect_arch
download_tools
