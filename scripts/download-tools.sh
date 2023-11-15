#!/usr/bin/env bash

# Download argc and yq to target directory. If no target directory is specified, use the bin directory under the repository.

set -e

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"
INSTALL_DIR="$ROOT_DIR/bin"
TMP_DIR=/tmp/argc_completions_bin
source "$ROOT_DIR/VERSIONS"

download_tools() {
    mkdir -p "$INSTALL_DIR" "$TMP_DIR"
    os=$(_detect_os)
    arch=$(_detect_arch)
    os_arch="$os-$arch"

    argc_url_prefix="https://github.com/sigoden/argc/releases/download/${ARGC_VERSION}/argc-${ARGC_VERSION}-"
    yq_url_prefix="https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/yq_"

    case $os_arch in
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

    curl="curl"
    if [ $os == "windows" ]; then
        if command -v winpty >/dev/null 2>&1; then
            curl="winpty curl"
        fi
    fi

    _fetch argc "${argc_url_prefix}${argc_file_suffix}" argc
    _fetch yq "${yq_url_prefix}${yq_file_suffix}" "yq_${yq_file_suffix%%.*}"

    if [[ "$os" == "macos" ]]; then
        _download_macos_tools
    fi
}

_download_macos_tools() {
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
        read -p "Install tools with \`brew install$macos_tools\`? (Y/n): " answer
        if [[ -z "$answer" ]] || [[ "$answer" =~ [yY][eE][sS]|[yY] ]]; then
            brew install $macos_tools
            ln -sf `which gsed` "$INSTALL_DIR/sed"
            installed_macos_tools=1
        fi
    fi
    if [[ -z "$installed_macos_tools" ]]; then
        echo "For macOS, you need to install tools:$macos_tools"
    fi
}

_fetch() {
    bin_name=$1
    url=$2
    extract_file_path=$3

    file_name=$(basename $url)
    tmp_file=$TMP_DIR/$file_name
    echo Downloading $bin_name from $url
    $curl --fail --location --progress-bar --output $tmp_file ${gh_proxy:-}$url
    if [[ "$os" == "windows" ]]; then
        install_path="$INSTALL_DIR/$bin_name.exe"
        unzip -o -d $TMP_DIR $tmp_file
        cp -f $TMP_DIR/$extract_file_path.exe "$install_path"
    else
        install_path="$INSTALL_DIR/$bin_name"
        tar -C $TMP_DIR -xf $tmp_file
        cp -f $TMP_DIR/$extract_file_path "$install_path"
    fi
    echo Successfully installed $bin_name to $install_path
}

_detect_os() {
    local s=$(uname)
    if [[ "$s" == "Linux" ]]; then
        echo linux
    elif [[ "$s" == "Darwin" ]]; then
        echo macos
    elif [[ "$s" =~ "_NT" ]]; then
        echo windows
    fi
}

_detect_arch() {
    local s=$(uname -m)
    if [[ "$s" == "x86_64" ]]; then
        echo amd64
    elif [[ "$s" == "i686" ]]; then
        echo i686
    elif [[ "$s" == "aarch64" ]] || [[ "$s" == "arm64" ]]; then
        echo aarch64
    fi
}

download_tools