_choice_cmd() {
	cargo --list 2>/dev/null | awk 'NR>1 {print $1}'
}

_choice_testname() {
	cargo t -- --list | awk '/: test$/ { print substr($1, 1, length($1) - 1) }' 
}

_choice_depid() {
	_get_package_json "$(_get_option_package)" | jq -r '.dependencies[].name'
}

_choice_package() {
	cargo metadata --format-version 1 --no-deps | jq -r '.packages[].name'
}

_choice_bench() {
	_get_package_target bench "$(_get_option_package)"
}

_choice_bin() {
	_get_package_target bin "$(_get_option_package)"
}

_choice_test() {
	_get_package_target test "$(_get_option_package)"
}

_choice_example() {
	_get_package_target example "$(_get_option_package)"
}

_choice_target() {
	local targets=$(rustup target list)
	while read -r line
	do
		if [[ "$line" =~ default|installed ]]; then
			echo "${line%% *}"
		fi
	done <<< "$targets"
}

_get_option_package() {
	echo "${argc_package:-"$argc_p"}"
}

_get_package_target() {
	target_kind="$1"
	package_name="$2"
	_get_package_json "$package_name" | jq -r '.targets[] | select( .kind[] | contains("'$target_kind'") ) | .name'
}

_get_package_json() {
	package_name="$1"
	metadata_json="$(_get_metadata_json)"
	if [[ -n "$package_name" ]]; then
		echo "$metadata_json" | jq '.packages[] | select(.name == "'"$package_name"'")'
	else
		workspace_root="$(echo "$metadata_json" | jq -r '.workspace_root')"
		manifest_path="$(echo "${workspace_root}$(_argc_util_path_sep)Cargo.toml" |  jq -R .)"
		echo "$metadata_json" | jq '.packages[] | select(.manifest_path == '"$manifest_path"')'
	fi
}

_get_metadata_json() {
	cargo metadata --format-version 1 --no-deps
}