_locate_manifest(){
	cargo locate-project --message-format plain 2>/dev/null
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
