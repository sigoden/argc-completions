_argc_util_path_sep() {
	if [[ "$OS" == "Windows_NT" ]]; then
		echo '\'
	else
		echo '/'
	fi
}