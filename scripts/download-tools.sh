#!/usr/bin/env bash

# Download argc and yq to target directory. If no target directory is specified, use the bin directory under the repository.

set -e

argc_version=${ARGC_VERSION:-v1.9.0}
yq_version=v4.35.1
sed_version=4.9.0-2

download() {
    install_dir="$1"
    if [[ -z "$install_dir" ]]; then
        install_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )/bin"
    fi
    mkdir -p "$install_dir"

    tmp_dir=/tmp/argc_completions_bins
    mkdir -p "$tmp_dir"

    _os=$(_detect_os)
    _arch=$(_detect_arch)
    _curl="curl"
    os_arch="$_os-$_arch"

    argc_url_prefix="https://github.com/sigoden/argc/releases/download/${argc_version}/argc-${argc_version}-"
    yq_url_prefix="https://github.com/mikefarah/yq/releases/download/${yq_version}/yq_"
    sed_url_prefix="https://github.com/xpack-dev-tools/sed-xpack/releases/download/v${sed_version}/xpack-sed-${sed_version}-"

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
        sed_file_suffix="darwin-x64.tar.gz"
        ;;
    macos-aarch64)
        argc_file_suffix="aarch64-apple-darwin.tar.gz"
        yq_file_suffix="darwin_arm64.tar.gz"
        sed_file_suffix="darwin-arm64.tar.gz"
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
        echo "error: unsupported os"
        exit 1
        ;;
    esac

    if [ $_os == "windows" ]; then
        if command -v winpty >/dev/null 2>&1; then
            _curl="winpty curl"
        fi
    fi

    _fetch argc "${argc_url_prefix}${argc_file_suffix}" argc
    _fetch yq "${yq_url_prefix}${yq_file_suffix}" "yq_${yq_file_suffix%%.*}"
    if [[ "$_os" == "macos" ]]; then
        _fetch sed "${sed_url_prefix}${sed_file_suffix}" "xpack-sed-$sed_version/bin/sed"
    fi
}

_fetch() {
    bin_name=$1
    url=$2
    extract_file_path=$3

    file_name=$(basename $url)
    tmp_file=$tmp_dir/$file_name
    echo Downloading $bin_name from $url
    $_curl --fail --location --progress-bar --output $tmp_file ${gh_proxy:-}$url
    if [[ "$_os" == "windows" ]]; then
        install_path="$install_dir/$bin_name.exe"
        unzip -o -d $tmp_dir $tmp_file
        cp -f $tmp_dir/$extract_file_path.exe "$install_path"
    else
        install_path="$install_dir/$bin_name"
        tar -C $tmp_dir -xf $tmp_file
        cp -f $tmp_dir/$extract_file_path "$install_path"
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

download $1