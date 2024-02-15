_patch_help() {
    if [[ "$*" == "nest" ]]; then
        $@ --help | \
        sed \
            's/|\S / /' \
        
    else
        $@ --help | sed '/^Usage:/ s/|\S / /'
    fi
}

_patch_table() {
    if [[ "$*" == "nest" ]]; then
        _patch_table_edit_commands \
            'new(new, n)' \
            'info(info, i)' \
            'generate(generate, g)' \

    elif [[ "$*" == "nest new" ]]; then
        _patch_table_edit_options \
            '--language;[TypeScript|Javascript]' \
            '--package-manager;[npm|yarn|pnpm]' \

    elif [[ "$*" == "nest build" ]] \
      || [[ "$*" == "nest start" ]] \
    ; then
        _patch_table_edit_arguments 'app;[`_choice_project`]'

    elif [[ "$*" == "nest add" ]]; then
        _patch_table_edit_options \
            '--project;[`_choice_project`]' \

    elif [[ "$*" == "nest generate" ]]; then
        _patch_table_edit_options \
            '--project;[`_choice_project`]' \
        | \
        _patch_table_edit_arguments 'schematic;[`_choice_schematic`]'

    else
        cat
    fi
}

_choice_project() {
    _helper_find_nest_cli_json_path
    if [[ -n "$nest_cli_json_path" ]]; then
        cat "$nest_cli_json_path" | yq '(.projects // {}) | keys | .[]'
    fi

}

_choice_schematic() {
    cat <<-'EOF'
application	Generate a new application workspace
class	Generate a new class
configuration	Generate a CLI configuration file
controller	Generate a controller declaration
decorator	Generate a custom decorator
filter	Generate a filter declaration
gateway	Generate a gateway declaration
guard	Generate a guard declaration
interceptor	Generate an interceptor declaration
interface	Generate an interface
library	Generate a new library within a monorepo
middleware	Generate a middleware declaration
module	Generate a module declaration
pipe	Generate a pipe declaration
provider	Generate a provider declaration
resolver	Generate a GraphQL resolver declaration
resource	Generate a new CRUD resource
service	Generate a service declaration
sub-app	Generate a new application within a monorepo
EOF
}

_helper_find_nest_cli_json_path() {
    nest_cli_json_path="$(_argc_util_path_search_parent nest-cli.json)"
}
