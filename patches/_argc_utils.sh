_argc_utils_safe_path() {
	if [[ -x "$(command -v cygpath)" ]]; then
		cygpath "$1"
	else
		echo "$1"
	fi
}
