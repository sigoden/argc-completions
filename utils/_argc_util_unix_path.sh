_argc_util_unix_path() {
	if _argc_util_exist_cygpath; then
        cygpath "$1"
	else
        echo "$1"
	fi
}