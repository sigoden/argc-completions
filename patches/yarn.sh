NODE=$(which node)

_choice_cmd() {
    _choice_script
}

_choice_script() {
    project_dir="$(_locate_project)"
    if [ -f "$project_dir/package.json" ]; then
        (cd $project_dir && $NODE -e "var pkg=require('./package.json');Object.keys(pkg.scripts||{}).forEach(v => console.log(v))")
    fi
}

_choice_workspace_script() {
    location=$(yarn workspaces info 2>/dev/null | sed -n '/"'$2'"/{n;p}' | awk '{print $2}' | sed 's/"\(.*\)".*/\1/')
    project_dir="$(_locate_project)/$location"
    if [ -f "$project_dir/package.json" ]; then
        (cd $project_dir && $NODE -e "var pkg=require('./package.json');Object.keys(pkg.scripts||{}).forEach(v => console.log(v))")
    fi
}

_choice_package() {
    project_dir="$(_locate_project)"
    if [ -f "$project_dir/package.json" ]; then
        (cd $project_dir && $NODE -e "var pkg=require('./package.json');Object.keys({...(pkg.dependencies||{}),...(pkg.devDependencies||{}),...(pkg.optionalDependencies||{})}).forEach(v => console.log(v))")
    fi
}

_choice_global_package() {
    global_dir="$(_argc_utils_safe_path "$(yarn global dir 2>/dev/null)")"
    if [ -f "$global_dir/package.json" ]; then
        (cd $global_dir && $NODE -e "var pkg=require('./package.json');Object.keys({...(pkg.dependencies||{}),...(pkg.devDependencies||{}),...(pkg.optionalDependencies||{})}).forEach(v => console.log(v))")
    fi
}

_choice_workspace() {
    yarn workspaces info 2>/dev/null | sed -n 's/^  "\([^"]*\)":.*$/\1/p'
}

_choice_config_key() {
    yarn config list | sed -n "s/^\s*'\(.*\)':.*$/\1/p"
}

_locate_project() {
    echo "$(_argc_utils_safe_path "$(npm prefix)")"
}