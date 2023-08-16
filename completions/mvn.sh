#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -am                                        If project list is specified, also build projects required by the list
# @flag --also-make                                If project list is specified, also build projects required by the list
# @flag -amd                                       If project list is specified, also build projects that depend on projects on the list
# @flag --also-make-dependents                     If project list is specified, also build projects that depend on projects on the list
# @flag -B --batch-mode                            Run in non-interactive (batch) mode (disables output color)
# @option -b --builder <arg>                       The id of the build strategy to use
# @flag -C --strict-checksums                      Fail the build if checksums don't match
# @flag -c --lax-checksums                         Warn if checksums don't match
# @option --color[auto|always|never] <arg>         Defines the color mode of the output.
# @flag -cpu                                       Ineffective, only kept for backward compatibility
# @flag --check-plugin-updates                     Ineffective, only kept for backward compatibility
# @option -D --define <arg>                        Define a user property
# @flag -e --errors                                Produce execution error messages
# @option -emp <arg>                               Encrypt master security password
# @option --encrypt-master-password <arg>          Encrypt master security password
# @option -ep <arg>                                Encrypt server password
# @option --encrypt-password <arg>                 Encrypt server password
# @option -f --file <file:.xml>                    Force the use of an alternate POM file (or directory with pom.xml)
# @flag -fae                                       Only fail the build afterwards; allow all non-impacted builds to continue
# @flag --fail-at-end                              Only fail the build afterwards; allow all non-impacted builds to continue
# @flag -ff                                        Stop at first failure in reactorized builds
# @flag --fail-fast                                Stop at first failure in reactorized builds
# @flag -fn                                        NEVER fail the build, regardless of project result
# @flag --fail-never                               NEVER fail the build, regardless of project result
# @option -gs <file:.xml>                          Alternate path for the global settings file
# @option --global-settings <file:.xml>            Alternate path for the global settings file
# @option -gt <file:.xml>                          Alternate path for the global toolchains file
# @option --global-toolchains <file:.xml>          Alternate path for the global toolchains file
# @flag -h --help                                  Display help information
# @option -l --log-file <file>                     Log file where all build output will go (disables output color)
# @flag -llr                                       UNSUPPORTED: Use of this option will make Maven invocation fail.
# @flag --legacy-local-repository                  UNSUPPORTED: Use of this option will make Maven invocation fail.
# @flag -N --non-recursive                         Do not recurse into sub-projects
# @flag -npr                                       Ineffective, only kept for backward compatibility
# @flag --no-plugin-registry                       Ineffective, only kept for backward compatibility
# @flag -npu                                       Ineffective, only kept for backward compatibility
# @flag --no-plugin-updates                        Ineffective, only kept for backward compatibility
# @flag -nsu                                       Suppress SNAPSHOT updates
# @flag --no-snapshot-updates                      Suppress SNAPSHOT updates
# @flag -ntp                                       Do not display transfer progress when downloading or uploading
# @flag --no-transfer-progress                     Do not display transfer progress when downloading or uploading
# @flag -o --offline                               Work offline
# @option -P --activate-profiles*,[`_choice_profile`] <arg>  Comma-delimited list of profiles to activate
# @option -pl*,[`_choice_project`] <arg>           Comma-delimited list of specified reactor projects to build instead of all projects.
# @option --projects*,[`_choice_project`] <arg>    Comma-delimited list of specified reactor projects to build instead of all projects.
# @flag -q --quiet                                 Quiet output - only show errors
# @option -rf[`_choice_project`] <arg>             Resume reactor from specified project
# @option --resume-from[`_choice_project`] <arg>   Resume reactor from specified project
# @option -s --settings <file:.xml>                Alternate path for the user settings file
# @option -t --toolchains <file:.xml>              Alternate path for the user toolchains file
# @option -T --threads <arg>                       Thread count, for instance 4 (int) or 2C/2.5C (int/float) where C is core multiplied
# @flag -U --update-snapshots                      Forces a check for missing releases and updated snapshots on remote repositories
# @flag -up                                        Ineffective, only kept for backward compatibility
# @flag --update-plugins                           Ineffective, only kept for backward compatibility
# @flag -v --version                               Display version information
# @flag -V --show-version                          Display version information WITHOUT stopping build
# @flag -X --debug                                 Produce execution debug output
# @arg goalandphase*[`_choice_goal_phase`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_profile() {
    _helper_find_pom_path
    if [[ ! -f "$pom_path" ]]; then
        return
    fi
    cat "$pom_path" | yq -p xml  '.project.profiles[].[].id' 
}

_choice_project() {
    _helper_find_pom_path
    if [[ ! -f "$pom_path" ]]; then
        return
    fi
    mvn --file "$pom_path" -Dexec.executable='echo' -Dexec.args='${project.artifactId}' exec:exec -q
}

_choice_goal_phase() {
    _choice_default_goal_phase
    _helper_find_pom_path
    if [[ ! -f "$pom_path" ]]; then
        return
    fi
    local IFS=$'\n'
    plugin_paths=( $(cat "$pom_path" | yq -p xml '.project.build.plugins.plugin | .[] |  .groupId |= sub("\.", "/") | .groupId + "/" + .artifactId + "/" + .version + "/" + .artifactId + "-" + .version + ".jar"') )
    for plugin_subpath in ${plugin_paths[@]}; do
        plugin_path="$HOME/.m2/repository/$plugin_subpath" 
        if [[ -f "$plugin_path" ]]; then
            unzip -p "$plugin_path" META-INF/maven/plugin.xml | \
            yq -p xml '.plugin.goalPrefix as $prefix | .plugin.mojos[] | .[] | .description |= split("\n") | $prefix + ":" + .goal + "   " + .description[0]'
        fi
    done
}

_choice_default_goal_phase() {
    cat <<-'EOF'
pre-clean	execute processes needed prior to the actual project cleaning
clean	remove all files generated by the previous build
post-clean	execute processes needed to finalize the project cleanin
validate	validate the project is correct and all necessary information is available
initialize	initialize build state, e.g. set properties or create directories
generate-sources	generate any source code for inclusion in compilation
process-sources	process the source code, for example to filter any values
generate-resources	generate resources for inclusion in the package
process-resources	copy and process the resources into the destination directory, ready for packaging
compile	compile the source code of the project
process-classes	post-process the generated files from compilation
generate-test-sources	generate any test source code for inclusion in compilation
process-test-sources	process the test source code, for example to filter any values
generate-test-resources	create resources for testing
process-test-resources	copy and process the resources into the test destination directory
test-compile	compile the test source code into the test destination directory
process-test-classes	post-process the generated files from test compilation
test	run tests using a suitable unit testing framework
prepare-package	perform any operations necessary to prepare a package before the actual packaging
package	take the compiled code and package it in its distributable format, such as a JAR
pre-integration-test	perform actions required before integration tests are executed
integration-test	process and deploy the package into an environment where integration tests can be run
post-integration-test	perform actions required after integration tests have been executed
verify	run any checks to verify the package is valid and meets quality criteria
install	install the package into the local repository
deploy	copies the final package to the remote repository
pre-site	execute processes needed prior to the actual project site generation
site	generate the project's site documentation
post-site	execute processes needed to finalize the site generation
site-deploy	deploy the generated site documentation to the specified web server
EOF
}

_helper_find_pom_path() {
    if [[ -n "$argc_file" ]]; then 
        pom_path="$argc_file"
    else
        pom_path="$(_argc_util_path_search_parent pom.xml)"
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"