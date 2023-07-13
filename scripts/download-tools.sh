#!/usr/bin/env bash

# Download argc and yq to target directory. If no target directory is specified, use the bin directory under the repository.

set -e

argc_version=${ARGC_VERSION:-v1.7.0}

download() {
    install_dir="$1"
    if [[ -z "$install_dir" ]]; then
        install_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )/bin"
    fi
    mkdir -p "$install_dir"

    _os=$(_detect_os)
    _arch=$(_detect_arch)
    _curl="curl"
    os_arch="$_os-$_arch"
    sed_version="4.9.0-2"
    argc_url_prefix="${gh_proxy:-}https://github.com/sigoden/argc/releases/download/${argc_version}/argc-${argc_version}-"
    yq_url_prefix="${gh_proxy:-}https://github.com/mikefarah/yq/releases/latest/download/yq_"
    sed_url_prefix="https://github.com/xpack-dev-tools/sed-xpack/releases/download/v${sed_version}/xpack-sed-${sed_version}-"
    declare -A urls
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

    argc_asset_file=/tmp/argc-$argc_file_suffix
    argc_unzip_dir=/tmp/argc
    argc_asset_url=${argc_url_prefix}${argc_file_suffix}
    echo Downloading argc from $argc_asset_url
    $_curl --fail --location --progress-bar --output $argc_asset_file $argc_asset_url
    mkdir -p $argc_unzip_dir
    if [[ "$_os" == "windows" ]]; then
        unzip -o -d $argc_unzip_dir $argc_asset_file
        argc_bin_file="$install_dir/argc.exe"
        cp $argc_unzip_dir/argc.exe $argc_bin_file
        argc_bin_file=$(cygpath -w $argc_bin_file)
    else
        tar -C $argc_unzip_dir -xf $argc_asset_file
        argc_bin_file="$install_dir/argc"
        cp $argc_unzip_dir/argc $argc_bin_file
        chmod +x $argc_bin_file
    fi
    echo Successfully installed argc to $argc_bin_file

    yq_asset_file=/tmp/yq-$yq_file_suffix
    yq_unzip_dir=/tmp/yq
    yq_asset_url=${yq_url_prefix}${yq_file_suffix}
    yq_target=${yq_file_suffix%%.*}
    echo Downloading yq from $yq_asset_url
    $_curl --fail --location --progress-bar --output $yq_asset_file $yq_asset_url
    mkdir -p $yq_unzip_dir
    if [[ "$_os" == "windows" ]]; then
        unzip -o -d $yq_unzip_dir $yq_asset_file
        yq_bin_file="$install_dir/yq.exe"
        cp -f $yq_unzip_dir/yq_${yq_target}.exe $yq_bin_file
        yq_bin_file=$(cygpath -w $yq_bin_file)
    else
        tar -C $yq_unzip_dir -xf $yq_asset_file
        yq_bin_file="$install_dir/yq"
        cp -f $yq_unzip_dir/yq_${yq_target} $yq_bin_file
        chmod +x $yq_bin_file
    fi
    echo Successfully installed yq to $yq_bin_file

    if [[ "$_os" == "macos" ]]; then
        sed_asset_file=/tmp/sed-$sed_file_suffix
        sed_unzip_dir=/tmp/sed
        sed_asset_url=${sed_url_prefix}${sed_file_suffix}
        echo Downloading sed from $sed_asset_url
        $_curl --fail --location --progress-bar --output $sed_asset_file $sed_asset_url
        mkdir -p $sed_unzip_dir
        tar -C $sed_unzip_dir -xf $sed_asset_file 
        sed_bin_file="$install_dir/sed"
        cp -f $sed_unzip_dir/xpack-sed-$sed_version/bin/sed $sed_bin_file
        chmod +x $sed_bin_file
        echo Successfully installed sed to $sed_bin_file
    fi
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