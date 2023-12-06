#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help    Shows a help message for this command in the console.

# {{ ng add
# @cmd Adds support for an external library to your project.
# @flag --help                   Shows a help message for this command in the console.
# @flag --interactive            Enable interactive input prompts.
# @flag --dry-run                Run through and reports activity without writing out results.
# @flag --defaults               Disable interactive input prompts for options with a default.
# @flag --force                  Force overwriting of existing files.
# @option --registry <string>    The NPM registry to use.
# @flag --verbose                Display additional details about internal operations during execution.
# @flag --skip-confirmation      Skip asking a confirmation prompt before installing and executing the package.
# @arg collection                The package to be added.
add() {
    :;
}
# }} ng add

# {{ ng analytics
# @cmd Configures the gathering of Angular CLI usage metrics.
# @flag --help    Shows a help message for this command in the console.
analytics() {
    :;
}

# {{{ ng analytics disable
# @cmd Disables analytics gathering and reporting for the user.
# @alias off
# @flag --help         Shows a help message for this command in the console.
# @flag -g --global    Configure analytics gathering and reporting globally in the caller's home directory.
analytics::disable() {
    :;
}
# }}} ng analytics disable

# {{{ ng analytics enable
# @cmd Enables analytics gathering and reporting for the user.
# @alias on
# @flag --help         Shows a help message for this command in the console.
# @flag -g --global    Configure analytics gathering and reporting globally in the caller's home directory.
analytics::enable() {
    :;
}
# }}} ng analytics enable

# {{{ ng analytics info
# @cmd Prints analytics gathering and reporting configuration in the console.
# @flag --help    Shows a help message for this command in the console.
analytics::info() {
    :;
}
# }}} ng analytics info

# {{{ ng analytics prompt
# @cmd Prompts the user to set the analytics gathering status interactively.
# @flag --help         Shows a help message for this command in the console.
# @flag -g --global    Configure analytics gathering and reporting globally in the caller's home directory.
analytics::prompt() {
    :;
}
# }}} ng analytics prompt
# }} ng analytics

# {{ ng build
# @cmd Compiles an Angular application or library into an output directory named dist/ at the given output path.
# @alias b
# @flag --help                                 Shows a help message for this command in the console.
# @option -c --configuration*,[`_choice_configuration`] <string>  One or more named builder configurations as a comma-separated list as specified in the "configurations" section in angular.json.
# @option --allowed-common-js-dependencies* <string>  A list of CommonJS packages that are allowed to be used without a build time warning.
# @flag --aot                                  Build using Ahead of Time compilation.
# @flag --app-shell                            Generates an application shell during build time.
# @option --base-href <string>                 Base url for the application being built.
# @option --browser <path>                     The full path for the browser entry point to the application, relative to the current workspace.
# @option --cross-origin[none|anonymous|use-credentials] <string>  Define the crossorigin attribute setting of elements that provide CORS support.
# @flag --delete-output-path                   Delete the output path before building.
# @option --external-dependencies* <string>    Exclude the listed external dependencies from being bundled into the bundle.
# @flag --extract-licenses                     Extract all licenses in a separate file.
# @option --i18n-duplicate-translation[warning|error|ignore] <string>  How to handle duplicate translations for i18n.
# @option --i18n-missing-translation[warning|error|ignore] <string>  How to handle missing translations for i18n.
# @option --index <string>                     Configures the generation of the application's HTML index.
# @option --inline-style-language[css|less|sass|scss] <string>  The stylesheet language to use for the application's inline component styles.
# @flag --localize                             Translate the bundles in one or more locales.
# @flag --named-chunks                         Use file name for lazy loaded chunks.
# @flag --optimization                         Enables optimization of the build output.
# @option --output-hashing[none|all|media|bundles] <file>  Define the output filename cache-busting hashing mode.
# @option --output-path <dir>                  The full path for the new output directory, relative to the current workspace.
# @option --poll <number>                      Enable and define the file watching poll time period in milliseconds.
# @option --polyfills* <string>                A list of polyfills to include in the build.
# @flag --prerender                            Prerender (SSG) pages of your application during build time.
# @flag --preserve-symlinks                    Do not use the real path when resolving modules.
# @flag --progress                             Log progress to the console while building.
# @option --server <path>                      The full path for the server entry point to the application, relative to the current workspace.
# @option --service-worker <string>            Generates a service worker configuration.
# @flag --source-map                           Output source maps for scripts and styles.
# @flag --ssr                                  Server side render (SSR) pages of your application during runtime.
# @flag --stats-json                           Generates a 'stats.json' file which can be analyzed with https://esbuild.github.io/analyze/.
# @flag --subresource-integrity                Enables the use of subresource integrity validation.
# @option --ts-config <file>                   The full path for the TypeScript configuration file, relative to the current workspace.
# @flag --verbose                              Adds more details to output logging.
# @flag --watch                                Run build when files change.
# @option --web-worker-ts-config <string>      TypeScript configuration for Web Worker modules.
# @arg project[`_choice_project`]              The name of the project to build.
build() {
    :;
}
# }} ng build

# {{ ng cache
# @cmd Configure persistent disk cache and retrieve cache statistics.
# @flag --help    Shows a help message for this command in the console.
cache() {
    :;
}

# {{{ ng cache clean
# @cmd Deletes persistent disk cache from disk.
# @flag --help    Shows a help message for this command in the console.
cache::clean() {
    :;
}
# }}} ng cache clean

# {{{ ng cache disable
# @cmd Disables persistent disk cache for all projects in the workspace.
# @alias off
# @flag --help    Shows a help message for this command in the console.
cache::disable() {
    :;
}
# }}} ng cache disable

# {{{ ng cache enable
# @cmd Enables disk cache for all projects in the workspace.
# @alias on
# @flag --help    Shows a help message for this command in the console.
cache::enable() {
    :;
}
# }}} ng cache enable

# {{{ ng cache info
# @cmd Prints persistent disk cache configuration and statistics in the console.
# @flag --help    Shows a help message for this command in the console.
cache::info() {
    :;
}
# }}} ng cache info
# }} ng cache

# {{ ng completion
# @cmd Set up Angular CLI autocompletion for your terminal.
# @flag --help    Shows a help message for this command in the console.
completion() {
    :;
}

# {{{ ng completion script
# @cmd Generate a bash and zsh real-time type-ahead autocompletion script.
# @flag --help    Shows a help message for this command in the console.
completion::script() {
    :;
}
# }}} ng completion script
# }} ng completion

# {{ ng config
# @cmd Retrieves or sets Angular configuration values in the angular.json file for the workspace.
# @flag --help         Shows a help message for this command in the console.
# @flag -g --global    Access the global configuration in the caller's home directory.
# @arg json-path       The configuration key to set or query, in JSON path format.
# @arg value           If provided, a new value for the given configuration key.
config() {
    :;
}
# }} ng config

# {{ ng deploy
# @cmd Invokes the deploy builder for a specified project or for the default project in the workspace.
# @flag --help                       Shows a help message for this command in the console.
# @option -c --configuration*,[`_choice_configuration`] <string>  One or more named builder configurations as a comma-separated list as specified in the "configurations" section in angular.json.
# @arg project[`_choice_project`]    The name of the project to build.
deploy() {
    :;
}
# }} ng deploy

# {{ ng doc
# @cmd Opens the official Angular documentation (angular.io) in a browser, and searches for a given keyword.
# @alias d
# @flag --help                  Shows a help message for this command in the console.
# @flag -s --search             Search all of angular.io.
# @option --version <string>    The version of Angular to use for the documentation.
# @arg keyword                  The keyword to search for, as provided in the search bar in angular.io.
doc() {
    :;
}
# }} ng doc

# {{ ng e2e
# @cmd Builds and serves an Angular application, then runs end-to-end tests.
# @alias e
# @flag --help                       Shows a help message for this command in the console.
# @option -c --configuration*,[`_choice_configuration`] <string>  One or more named builder configurations as a comma-separated list as specified in the "configurations" section in angular.json.
# @arg project[`_choice_project`]    The name of the project to build.
e2e() {
    :;
}
# }} ng e2e

# {{ ng extract-i18n
# @cmd Extracts i18n messages from source code.
# @flag --help                         Shows a help message for this command in the console.
# @option -c --configuration*,[`_choice_configuration`] <string>  One or more named builder configurations as a comma-separated list as specified in the "configurations" section in angular.json.
# @option --browser-target <string>    A browser builder target to extract i18n messages in the format of `project:target[:configuration]`.
# @option --build-target <string>      A builder target to extract i18n messages in the format of `project:target[:configuration]`.
# @option --format[xmb|xlf|xlif|xliff|xlf2|xliff2|json|arb|legacy-migrate] <file>  Output format for the generated file.
# @option --out-file <file>            Name of the file to output.
# @option --output-path <path>         Path where output will be placed.
# @flag --progress                     Log progress to the console.
# @arg project[`_choice_project`]      The name of the project to build.
extract-i18n() {
    :;
}
# }} ng extract-i18n

# {{ ng generate
# @cmd Generates and/or modifies files based on a schematic.
# @alias g
# @flag --help           Shows a help message for this command in the console.
# @flag --interactive    Enable interactive input prompts.
# @flag --dry-run        Run through and reports activity without writing out results.
# @flag --defaults       Disable interactive input prompts for options with a default.
# @flag --force          Force overwriting of existing files.
# @arg schematic         The [collection:schematic] to run.
generate() {
    :;
}

# {{{ ng generate app-shell
# @cmd Generates an application shell for running a server-side version of an app.
# @flag --help                  Shows a help message for this command in the console.
# @flag --interactive           Enable interactive input prompts.
# @flag --dry-run               Run through and reports activity without writing out results.
# @flag --defaults              Disable interactive input prompts for options with a default.
# @flag --force                 Force overwriting of existing files.
# @option --project <string>    The name of the related client app.
generate::app-shell() {
    :;
}
# }}} ng generate app-shell

# {{{ ng generate application
# @cmd Generates a new basic application definition in the "projects" subfolder of the workspace.
# @alias app
# @flag --help                                  Shows a help message for this command in the console.
# @flag --interactive                           Enable interactive input prompts.
# @flag --dry-run                               Run through and reports activity without writing out results.
# @flag --defaults                              Disable interactive input prompts for options with a default.
# @flag --force                                 Force overwriting of existing files.
# @flag -s --inline-style                       Include styles inline in the root component.ts file.
# @flag -t --inline-template                    Include template inline in the root component.ts file.
# @flag --minimal                               Create a bare-bones project without any testing frameworks.
# @option -p --prefix <string>                  A prefix to apply to generated selectors.
# @option --project-root <dir>                  The root directory of the new application.
# @flag --routing                               Creates an application with routing enabled.
# @flag --skip-install                          Skip installing dependency packages.
# @flag --skip-package-json                     Do not add dependencies to the "package.json" file.
# @flag -S --skip-tests                         Do not create "spec.ts" test files for the application.
# @flag --ssr                                   Creates an application with Server-Side Rendering (SSR) and Static Site Generation (SSG/Prerendering) enabled.
# @flag --standalone                            Creates an application based upon the standalone API, without NgModules.
# @flag --strict                                Creates an application with stricter bundle budgets settings.
# @option --style[css|scss|sass|less] <file>    The file extension or preprocessor to use for style files.
# @option --view-encapsulation[Emulated|None|ShadowDom] <string>  The view encapsulation strategy to use in the new application.
# @arg name                                     The name of the new application.
generate::application() {
    :;
}
# }}} ng generate application

# {{{ ng generate class
# @cmd Creates a new, generic class definition in the given project.
# @alias cl
# @flag --help                  Shows a help message for this command in the console.
# @flag --interactive           Enable interactive input prompts.
# @flag --dry-run               Run through and reports activity without writing out results.
# @flag --defaults              Disable interactive input prompts for options with a default.
# @flag --force                 Force overwriting of existing files.
# @option --project <string>    The name of the project.
# @flag --skip-tests            Do not create "spec.ts" test files for the new class.
# @option --type <file>         Adds a developer-defined type to the filename, in the format "name.type.ts".
# @arg name                     The name of the new class.
generate::class() {
    :;
}
# }}} ng generate class

# {{{ ng generate component
# @cmd Creates a new, generic component definition in the given project.
# @alias c
# @flag --help                    Shows a help message for this command in the console.
# @flag --interactive             Enable interactive input prompts.
# @flag --dry-run                 Run through and reports activity without writing out results.
# @flag --defaults                Disable interactive input prompts for options with a default.
# @flag --force                   Force overwriting of existing files.
# @option -c --change-detection[Default|OnPush] <string>  The change detection strategy to use in the new component.
# @flag -b --display-block        Specifies if the style will contain `:host { display: block; }`.
# @flag --export                  The declaring NgModule exports this component.
# @flag --flat                    Create the new files at the top level of the current project.
# @flag -s --inline-style         Include styles inline in the component.ts file.
# @flag -t --inline-template      Include template inline in the component.ts file.
# @option -m --module <string>    The declaring NgModule.
# @option -p --prefix <string>    The prefix to apply to the generated component selector.
# @option --project <string>      The name of the project.
# @option --selector <string>     The HTML selector to use for this component.
# @flag --skip-import             Do not import this component into the owning NgModule.
# @flag --skip-selector           Specifies if the component should have a selector or not.
# @flag --skip-tests              Do not create "spec.ts" test files for the new component.
# @flag --standalone              Whether the generated component is standalone.
# @option --style[css|scss|sass|less|none] <file>  The file extension or preprocessor to use for style files, or 'none' to skip generating the style file.
# @option --type <file>           Adds a developer-defined type to the filename, in the format "name.type.ts".
# @option -v --view-encapsulation[Emulated|None|ShadowDom] <string>  The view encapsulation strategy to use in the new component.
# @arg name                       The name of the component.
generate::component() {
    :;
}
# }}} ng generate component

# {{{ ng generate config
# @cmd Generates a configuration file in the given project.
# @flag --help                     Shows a help message for this command in the console.
# @flag --interactive              Enable interactive input prompts.
# @flag --dry-run                  Run through and reports activity without writing out results.
# @flag --defaults                 Disable interactive input prompts for options with a default.
# @flag --force                    Force overwriting of existing files.
# @option --project <string>       The name of the project.
# @arg type[karma|browserslist]    Specifies which type of configuration file to create.
generate::config() {
    :;
}
# }}} ng generate config

# {{{ ng generate directive
# @cmd Creates a new, generic directive definition in the given project.
# @alias d
# @flag --help                    Shows a help message for this command in the console.
# @flag --interactive             Enable interactive input prompts.
# @flag --dry-run                 Run through and reports activity without writing out results.
# @flag --defaults                Disable interactive input prompts for options with a default.
# @flag --force                   Force overwriting of existing files.
# @flag --export                  The declaring NgModule exports this directive.
# @flag --flat                    When true (the default), creates the new files at the top level of the current project.
# @option -m --module <string>    The declaring NgModule.
# @option -p --prefix <string>    A prefix to apply to generated selectors.
# @option --project <string>      The name of the project.
# @option --selector <dir>        The HTML selector to use for this directive.
# @flag --skip-import             Do not import this directive into the owning NgModule.
# @flag --skip-tests              Do not create "spec.ts" test files for the new class.
# @flag --standalone              Whether the generated directive is standalone.
# @arg name                       The name of the new directive.
generate::directive() {
    :;
}
# }}} ng generate directive

# {{{ ng generate enum
# @cmd Generates a new, generic enum definition in the given project.
# @alias e
# @flag --help                  Shows a help message for this command in the console.
# @flag --interactive           Enable interactive input prompts.
# @flag --dry-run               Run through and reports activity without writing out results.
# @flag --defaults              Disable interactive input prompts for options with a default.
# @flag --force                 Force overwriting of existing files.
# @option --project <string>    The name of the project in which to create the enum.
# @option --type <file>         Adds a developer-defined type to the filename, in the format "name.type.ts".
# @arg name                     The name of the enum.
generate::enum() {
    :;
}
# }}} ng generate enum

# {{{ ng generate environments
# @cmd Generates and configures environment files for a project.
# @flag --help                  Shows a help message for this command in the console.
# @flag --interactive           Enable interactive input prompts.
# @flag --dry-run               Run through and reports activity without writing out results.
# @flag --defaults              Disable interactive input prompts for options with a default.
# @flag --force                 Force overwriting of existing files.
# @option --project <string>    The name of the project.
generate::environments() {
    :;
}
# }}} ng generate environments

# {{{ ng generate guard
# @cmd Generates a new, generic route guard definition in the given project.
# @alias g
# @flag --help                      Shows a help message for this command in the console.
# @flag --interactive               Enable interactive input prompts.
# @flag --dry-run                   Run through and reports activity without writing out results.
# @flag --defaults                  Disable interactive input prompts for options with a default.
# @flag --force                     Force overwriting of existing files.
# @flag --flat                      When true (the default), creates the new files at the top level of the current project.
# @flag --functional                Specifies whether to generate a guard as a function.
# @option --implements* <string>    Specifies which type of guard to create.
# @option --guardType* <string>     Specifies which type of guard to create.
# @option --project <string>        The name of the project.
# @flag --skip-tests                Do not create "spec.ts" test files for the new guard.
# @arg name                         The name of the new route guard.
generate::guard() {
    :;
}
# }}} ng generate guard

# {{{ ng generate interceptor
# @cmd Creates a new, generic interceptor definition in the given project.
# @flag --help                  Shows a help message for this command in the console.
# @flag --interactive           Enable interactive input prompts.
# @flag --dry-run               Run through and reports activity without writing out results.
# @flag --defaults              Disable interactive input prompts for options with a default.
# @flag --force                 Force overwriting of existing files.
# @flag --flat                  When true (the default), creates files at the top level of the project.
# @flag --functional            Creates the interceptor as a `HttpInterceptorFn`.
# @option --project <string>    The name of the project.
# @flag --skip-tests            Do not create "spec.ts" test files for the new interceptor.
# @arg name                     The name of the interceptor.
generate::interceptor() {
    :;
}
# }}} ng generate interceptor

# {{{ ng generate interface
# @cmd Creates a new, generic interface definition in the given project.
# @alias i
# @flag --help                  Shows a help message for this command in the console.
# @flag --interactive           Enable interactive input prompts.
# @flag --dry-run               Run through and reports activity without writing out results.
# @flag --defaults              Disable interactive input prompts for options with a default.
# @flag --force                 Force overwriting of existing files.
# @option --prefix <string>     A prefix to apply to generated selectors.
# @option --project <string>    The name of the project.
# @arg name                     The name of the interface.
# @arg type                     Adds a developer-defined type to the filename, in the format "name.type.ts".
generate::interface() {
    :;
}
# }}} ng generate interface

# {{{ ng generate library
# @cmd Creates a new, generic library project in the current workspace.
# @alias lib
# @flag --help                    Shows a help message for this command in the console.
# @flag --interactive             Enable interactive input prompts.
# @flag --dry-run                 Run through and reports activity without writing out results.
# @flag --defaults                Disable interactive input prompts for options with a default.
# @flag --force                   Force overwriting of existing files.
# @option --entry-file <file>     The path at which to create the library's public API file, relative to the workspace root.
# @option -p --prefix <string>    A prefix to apply to generated selectors.
# @option --project-root <dir>    The root directory of the new library.
# @flag --skip-install            Do not install dependency packages.
# @flag --skip-package-json       Do not add dependencies to the "package.json" file.
# @flag --skip-ts-config          Do not update "tsconfig.json" to add a path mapping for the new library.
# @flag --standalone              Creates a library based upon the standalone API, without NgModules.
# @arg name                       The name of the library.
generate::library() {
    :;
}
# }}} ng generate library

# {{{ ng generate module
# @cmd Creates a new, generic NgModule definition in the given project.
# @alias m
# @flag --help                                    Shows a help message for this command in the console.
# @flag --interactive                             Enable interactive input prompts.
# @flag --dry-run                                 Run through and reports activity without writing out results.
# @flag --defaults                                Disable interactive input prompts for options with a default.
# @flag --force                                   Force overwriting of existing files.
# @flag --flat                                    Create the new files at the top level of the current project root.
# @option -m --module <string>                    The declaring NgModule.
# @option --project <string>                      The name of the project.
# @option --route <path>                          The route path for a lazy-loaded module.
# @flag --routing                                 Create a routing module.
# @option --routing-scope[Child|Root] <string>    The scope for the new routing module.
# @arg name                                       The name of the NgModule.
generate::module() {
    :;
}
# }}} ng generate module

# {{{ ng generate pipe
# @cmd Creates a new, generic pipe definition in the given project.
# @alias p
# @flag --help                    Shows a help message for this command in the console.
# @flag --interactive             Enable interactive input prompts.
# @flag --dry-run                 Run through and reports activity without writing out results.
# @flag --defaults                Disable interactive input prompts for options with a default.
# @flag --force                   Force overwriting of existing files.
# @flag --export                  The declaring NgModule exports this pipe.
# @flag --flat                    When true (the default) creates files at the top level of the project.
# @option -m --module <string>    The declaring NgModule.
# @option --project <string>      The name of the project.
# @flag --skip-import             Do not import this pipe into the owning NgModule.
# @flag --skip-tests              Do not create "spec.ts" test files for the new pipe.
# @flag --standalone              Whether the generated pipe is standalone.
# @arg name                       The name of the pipe.
generate::pipe() {
    :;
}
# }}} ng generate pipe

# {{{ ng generate resolver
# @cmd Generates a new, generic resolver definition in the given project.
# @alias r
# @flag --help                  Shows a help message for this command in the console.
# @flag --interactive           Enable interactive input prompts.
# @flag --dry-run               Run through and reports activity without writing out results.
# @flag --defaults              Disable interactive input prompts for options with a default.
# @flag --force                 Force overwriting of existing files.
# @flag --flat                  When true (the default), creates the new files at the top level of the current project.
# @flag --functional            Creates the resolver as a `ResolveFn`.
# @option --project <string>    The name of the project.
# @flag --skip-tests            Do not create "spec.ts" test files for the new resolver.
# @arg name                     The name of the new resolver.
generate::resolver() {
    :;
}
# }}} ng generate resolver

# {{{ ng generate service
# @cmd Creates a new, generic service definition in the given project.
# @alias s
# @flag --help                  Shows a help message for this command in the console.
# @flag --interactive           Enable interactive input prompts.
# @flag --dry-run               Run through and reports activity without writing out results.
# @flag --defaults              Disable interactive input prompts for options with a default.
# @flag --force                 Force overwriting of existing files.
# @flag --flat                  When true (the default), creates files at the top level of the project.
# @option --project <string>    The name of the project.
# @flag --skip-tests            Do not create "spec.ts" test files for the new service.
# @arg name                     The name of the service.
generate::service() {
    :;
}
# }}} ng generate service

# {{{ ng generate service-worker
# @cmd Pass this schematic to the "run" command to create a service worker
# @flag --help                  Shows a help message for this command in the console.
# @flag --interactive           Enable interactive input prompts.
# @flag --dry-run               Run through and reports activity without writing out results.
# @flag --defaults              Disable interactive input prompts for options with a default.
# @flag --force                 Force overwriting of existing files.
# @option --project <string>    The name of the project.
# @option --target <string>     The target to apply service worker to.
generate::service-worker() {
    :;
}
# }}} ng generate service-worker

# {{{ ng generate web-worker
# @cmd Creates a new, generic web worker definition in the given project.
# @flag --help                  Shows a help message for this command in the console.
# @flag --interactive           Enable interactive input prompts.
# @flag --dry-run               Run through and reports activity without writing out results.
# @flag --defaults              Disable interactive input prompts for options with a default.
# @flag --force                 Force overwriting of existing files.
# @option --project <string>    The name of the project.
# @flag --snippet               Add a worker creation snippet in a sibling file of the same name.
# @arg name                     The name of the worker.
generate::web-worker() {
    :;
}
# }}} ng generate web-worker
# }} ng generate

# {{ ng lint
# @cmd Runs linting tools on Angular application code in a given project folder.
# @flag --help                       Shows a help message for this command in the console.
# @option -c --configuration*,[`_choice_configuration`] <string>  One or more named builder configurations as a comma-separated list as specified in the "configurations" section in angular.json.
# @arg project[`_choice_project`]    The name of the project to build.
lint() {
    :;
}
# }} ng lint

# {{ ng new
# @cmd Creates a new Angular workspace.
# @alias n
# @flag --help                                  Shows a help message for this command in the console.
# @flag --interactive                           Enable interactive input prompts.
# @flag --dry-run                               Run through and reports activity without writing out results.
# @flag --defaults                              Disable interactive input prompts for options with a default.
# @flag --force                                 Force overwriting of existing files.
# @option -c --collection <string>              A collection of schematics to use in generating the initial application.
# @flag --commit                                Initial git repository commit information.
# @flag --create-application                    Create a new initial application project in the 'src' folder of the new workspace.
# @option --directory <dir>                     The directory name to create the workspace in.
# @flag -s --inline-style                       Include styles inline in the component TS file.
# @flag -t --inline-template                    Include template inline in the component TS file.
# @flag --minimal                               Create a workspace without any testing frameworks.
# @option --new-project-root <path>             The path where new projects will be created, relative to the new workspace root.
# @option --package-manager[npm|yarn|pnpm|cnpm] <string>  The package manager used to install dependencies.
# @option -p --prefix <string>                  The prefix to apply to generated selectors for the initial project.
# @flag --routing                               Enable routing in the initial project.
# @flag -g --skip-git                           Do not initialize a git repository.
# @flag --skip-install                          Do not install dependency packages.
# @flag -S --skip-tests                         Do not generate "spec.ts" test files for the new project.
# @flag --ssr                                   Creates an application with Server-Side Rendering (SSR) and Static Site Generation (SSG/Prerendering) enabled.
# @flag --standalone                            Creates an application based upon the standalone API, without NgModules.
# @flag --strict                                Creates a workspace with stricter type checking and stricter bundle budgets settings.
# @option --style[css|scss|sass|less] <file>    The file extension or preprocessor to use for style files.
# @option --view-encapsulation[Emulated|None|ShadowDom] <string>  The view encapsulation strategy to use in the initial project.
# @arg name                                     The name of the new workspace and initial project.
new() {
    :;
}
# }} ng new

# {{ ng run
# @cmd Runs an Architect target with an optional custom builder configuration defined in your project.
# @flag --help                  Shows a help message for this command in the console.
# @arg target[`_choice_run`]    The Architect target to run provided in the following format `project:target[:configuration]`.
run() {
    :;
}
# }} ng run

# {{ ng serve
# @cmd Builds and serves your application, rebuilding on file changes.
# @alias s
# @flag --help                         Shows a help message for this command in the console.
# @option -c --configuration*,[`_choice_configuration`] <string>  One or more named builder configurations as a comma-separated list as specified in the "configurations" section in angular.json.
# @option --allowed-hosts* <string>    List of hosts that are allowed to access the dev server.
# @option --browser-target <string>    A browser builder target to serve in the format of `project:target[:configuration]`.
# @option --build-target <string>      A build builder target to serve in the format of `project:target[:configuration]`.
# @flag --disable-host-check           Don't verify connected clients are part of allowed hosts.
# @flag --force-esbuild                Force the development server to use the 'browser-esbuild' builder when building.
# @flag --hmr                          Enable hot module replacement.
# @option --host <string>              Host to listen on.
# @flag --live-reload                  Whether to reload the page on change, using live-reload.
# @flag -o --open                      Opens the url in default browser.
# @option --poll <number>              Enable and define the file watching poll time period in milliseconds.
# @option --port <number>              Port to listen on.
# @option --proxy-config <file>        Proxy configuration file.
# @option --public-host <string>       The URL that the browser client (or live-reload client, if enabled) should use to connect to the development server.
# @option --serve-path <path>          The pathname where the application will be served.
# @flag --ssl                          Serve using HTTPS.
# @option --ssl-cert <string>          SSL certificate to use for serving HTTPS.
# @option --ssl-key <string>           SSL key to use for serving HTTPS.
# @flag --verbose                      Adds more details to output logging.
# @flag --watch                        Rebuild on change.
# @arg project[`_choice_project`]      The name of the project to build.
serve() {
    :;
}
# }} ng serve

# {{ ng test
# @cmd Runs unit tests in a project.
# @alias t
# @flag --help                                 Shows a help message for this command in the console.
# @option -c --configuration*,[`_choice_configuration`] <string>  One or more named builder configurations as a comma-separated list as specified in the "configurations" section in angular.json.
# @option --browsers <string>                  Override which browsers tests are run against.
# @flag --code-coverage                        Output a code coverage report.
# @option --code-coverage-exclude* <string>    Globs to exclude from code coverage.
# @option --exclude* <file>                    Globs of files to exclude, relative to the project root.
# @option --include* <file>                    Globs of files to include, relative to project root.
# @option --inline-style-language[css|less|sass|scss] <string>  The stylesheet language to use for the application's inline component styles.
# @option --karma-config <file>                The name of the Karma configuration file.
# @option --main <file>                        The name of the main entry-point file.
# @option --poll <number>                      Enable and define the file watching poll time period in milliseconds.
# @option --polyfills <string>                 Polyfills to be included in the build.
# @flag --preserve-symlinks                    Do not use the real path when resolving modules.
# @flag --progress                             Log progress to the console while building.
# @option --reporters* <string>                Karma reporters to use.
# @flag --source-map                           Output source maps for scripts and styles.
# @option --ts-config <file>                   The name of the TypeScript configuration file.
# @flag --watch                                Run build when files change.
# @option --web-worker-ts-config <string>      TypeScript configuration for Web Worker modules.
# @arg project[`_choice_project`]              The name of the project to build.
test() {
    :;
}
# }} ng test

# {{ ng update
# @cmd Updates your workspace and its dependencies.
# @flag --help                 Shows a help message for this command in the console.
# @flag --force                Ignore peer dependency version mismatches.
# @flag --next                 Use the prerelease version, including beta and RCs.
# @flag --migrate-only         Only perform a migration, do not update the installed version.
# @option --name <string>      The name of the migration to run.
# @option --from <string>      Version from which to migrate from.
# @option --to <string>        Version up to which to apply migrations.
# @flag --allow-dirty          Whether to allow updating when the repository contains modified or untracked files.
# @flag --verbose              Display additional details about internal operations during execution.
# @flag -C --create-commits    Create source control commits for updates and migrations.
# @arg packages*               The names of package(s) to update.
update() {
    :;
}
# }} ng update

# {{ ng version
# @cmd Outputs Angular CLI version.
# @alias v
# @flag --help    Shows a help message for this command in the console.
version() {
    :;
}
# }} ng version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_configuration() {
    _helper_find_angular_json_path
    if [[ ! -f "$angular_json_path" ]]; then
        return
    fi
    project="${argc_project:-"${argc__positionals[0]}"}" 
    if [[ -z "$project"  ]]; then
        return
    fi
    if [[ "$argc__cmd_fn" =~ ^(build|lint|test|serve)$ ]]; then
        architect="$argc__cmd_fn"
    fi
    _helper_list_configuration_keys "$project" "$architect"
}

_choice_project() {
    _helper_find_angular_json_path
    if [[ ! -f "$angular_json_path" ]]; then
        return
    fi
    cat "$angular_json_path" | yq '.projects | keys | .[]'
}

_choice_run() {
    _helper_find_angular_json_path
    if [[ ! -f "$angular_json_path" ]]; then
        return
    fi
    _argc_util_mode_parts :
    if [[ "$argc__parts_len" -lt  2 ]]; then
        _choice_project | _argc_util_transform suffix=: nospace
    elif [[ "$argc__parts_len" -eq  2 ]]; then
        cat "$angular_json_path" | \
        yq '(.projects["'"${argc__parts_values[0]}"'"] // {}) | .architect | keys | .[]' | \
        _argc_util_transform nospace
    else
        _helper_list_configuration_keys "${argc__parts_values[0]}" "${argc__parts_values[1]}"
    fi
}

_helper_find_angular_json_path() {
    angular_json_path="$(_argc_util_path_search_parent angular.json)"
}

_helper_list_configuration_keys() {
    cat "$angular_json_path" | \
    yq '(.projects["'$1'"].architect["'$2'"].configurations // {}) | keys | .[]'
}

command eval "$(argc --argc-eval "$0" "$@")"