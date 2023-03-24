__choice___example() {
	local manifest=$(_locate_manifest)
	[ -z "$manifest" ] && return 0

	local files=("${manifest%/*}"/examples/*.rs)
	local names=("${files[@]##*/}")
	local names=("${names[@]%.*}")
	# "*" means no examples found
	if [[ "${names[@]}" != "*" ]]; then
		for name in ${names[@]}; do
			echo "$name"
		done
	fi
}