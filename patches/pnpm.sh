NODE="$(which node)"

_choice_cmd() {
    _choice_script
    _choice_exe
}

_choice_script() {
    project_dir="$(_locate_project)"
    if [ -f "$project_dir/package.json" ]; then
        (cd "$project_dir" && "$NODE" -e "var pkg=require('./package.json');Object.keys(pkg.scripts||{}).forEach(v => console.log(v))")
    fi
}

_choice_dependency() {
    project_dir="$(_locate_project)"
    if [ -f "$project_dir/package.json" ]; then
        (cd "$project_dir" && "$NODE" -e "var pkg=require('./package.json');Object.keys({...(pkg.dependencies||{}),...(pkg.devDependencies||{}),...(pkg.optionalDependencies||{})}).forEach(v => console.log(v))")
    fi
}

_choice_config_key() {
    pnpm config list | sed 's/^\([^=]\+\)=.*/\1/'
}

_choice_workspace() {
    pnpm recursive list --json | jq -r '.[].name'
}

_choice_exe() {
    bin_dir="$(_locate_project)/node_modules/.bin"
    if [ -d "$bin_dir" ]; then
        ls -1 "$bin_dir" | sed -e 's/\..*$//' | uniq
    fi
}

_locate_project() {
    if [[ -n "$argc_filter" ]]; then
        local path = jq -r '.[] | select(.name == "'"$argc_filter"'") | .path'
        if [[ -n "$path" ]]; then
            _argc_util_safe_path "$(pnpm root)"
            return
        fi
    fi
    _locate_project_base
}

_locate_project_base() {
    if [ -f package.json ]; then
        pwd
    else
        echo "$(cd "$(_argc_util_safe_path "$(pnpm root)")/.." && pwd)"
    fi
}