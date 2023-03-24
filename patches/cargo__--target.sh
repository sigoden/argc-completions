__choice___target() {
	local targets=$(rustup target list)
	while read line
	do
		if [[ "$line" =~ default|installed ]]; then
			echo "${line%% *}"
		fi
	done <<< "$targets"
}