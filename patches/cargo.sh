_compgen() {
	if [[ ${#argc__words[@]} -le 1 ]]; then
		cargo --list 2>/dev/null | awk 'NR>1 {print $1}'
	fi
}

_choice_bench() {
	_get_names_from_array "bench"
}

_choice_bin() {
	_get_names_from_array "bin"
}

_choice_example() {
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

_choice_target() {
	local targets=$(rustup target list)
	while read line
	do
		if [[ "$line" =~ default|installed ]]; then
			echo "${line%% *}"
		fi
	done <<< "$targets"
}

_choice_test() {
	_get_names_from_array "test"
}

_locate_manifest(){
	_argc_utils_safe_path "$(cargo locate-project --message-format plain 2>/dev/null)"
}

# Extracts the values of "name" from the array given in $1 and shows them as
# command line options for completion
_get_names_from_array()
{
	local manifest=$(_locate_manifest)
	if [[ -z $manifest ]]; then
		return 0
	fi

	local last_line
	local in_block=false
	local block_name=$1
	while read line
	do
		if [[ $last_line == "[[$block_name]]" ]]; then
			in_block=true
		else
			if [[ $last_line =~ .*\[\[.* ]]; then
				in_block=false
			fi
		fi

		if [[ $in_block == true ]]; then
			if [[ $line =~ .*name.*\= ]]; then
				line=${line##*=}
				line=${line%%\"}
				line=${line##*\"}
				echo $line
			fi
		fi

		last_line=$line
	done < $manifest
}
