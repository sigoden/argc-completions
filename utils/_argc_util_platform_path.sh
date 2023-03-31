_argc_util_platform_path() {
	path="$1"
	if [[ -z "$path" ]]; then
		path="$(cat)"
	fi
	if _argc_util_exist_cygpath; then
		cygpath -w "$path"
	else
		echo "$path"
	fi
}