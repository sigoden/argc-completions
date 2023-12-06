#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]

# {{ wrangler docs
# @cmd 📚 Open wrangler's docs in your browser
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag -y --yes                         Takes you to the docs, even if search fails
# @arg command                           Enter the wrangler command you want to know more about  [array] [default: []]
docs() {
    :;
}
# }} wrangler docs

# {{ wrangler init
# @cmd 📥 Initialize a basic Worker project, including a wrangler.toml file
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag -y --yes                         Answer "yes" to any prompts for new projects
# @option --from-dash <string>           The name of the Worker you wish to download from the Cloudflare dashboard for local development.
# @arg name                              The name of your worker
init() {
    :;
}
# }} wrangler init

# {{ wrangler generate
# @cmd ✨ Generate a new Worker project from an existing Worker template.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              Name of the Workers project
# @arg template                          The URL of a GitHub template
generate() {
    :;
}
# }} wrangler generate

# {{ wrangler dev
# @cmd 👂 Start a local server for developing your worker
# @flag -j --experimental-json-config              Experimental: Support wrangler.json  [boolean]
# @flag -c --config                                Path to .toml configuration file  [string]
# @flag -e --env                                   Environment to use for operations and .env files  [string]
# @flag -h --help                                  Show help  [boolean]
# @flag -v --version                               Show version number  [boolean]
# @option --name <string>                          Name of the worker
# @flag --no-bundle                                Skip internal build steps and directly deploy script
# @option --compatibility-date <string>            Date to use for compatibility checks
# @option --compatibility-flags* <string>          Flags to use for compatibility checks
# @option --compatibility-flag* <string>           Flags to use for compatibility checks
# @flag --latest                                   Use the latest version of the worker runtime
# @option --ip <string>                            IP address to listen on
# @option --port <number>                          Port to listen on
# @option --inspector-port <number>                Port for devtools to connect to
# @option --routes* <string>                       Routes to upload
# @option --route* <string>                        Routes to upload
# @option --host <string>                          Host to forward requests to, defaults to the zone of project
# @option --local-protocol[http|https] <string>    Protocol to listen to requests on, defaults to http.
# @option --local-upstream <string>                Host to act as origin in local mode, defaults to dev.host or route
# @option --assets <string>                        Static assets to be served
# @option --site <string>                          Root folder of static assets for Workers Sites
# @option --site-include* <dir>                    Array of .gitignore-style patterns that match file or directory names from the sites directory.
# @option --site-exclude* <dir>                    Array of .gitignore-style patterns that match file or directory names from the sites directory.
# @option --upstream-protocol[http|https] <string>  Protocol to forward requests to host on, defaults to https.
# @option --var* <string>                          A key-value pair to be injected into the script as a variable
# @option --define* <string>                       A key-value pair to be substituted in the script
# @option --jsx-factory <string>                   The function that is called for each JSX element
# @option --jsx-fragment <string>                  The function that is called for each JSX fragment
# @option --tsconfig <file>                        Path to a custom tsconfig.json file
# @flag -r --remote                                Run on the global Cloudflare network with access to production resources
# @flag --minify                                   Minify the script
# @flag --node-compat                              Enable Node.js compatibility
# @option --persist-to <dir>                       Specify directory to use for local persistence (defaults to .wrangler/state)
# @flag --live-reload                              Auto reload HTML pages when change is detected in local mode
# @flag --test-scheduled                           Test scheduled events by visiting /__scheduled in browser
# @option --log-level[debug|info|log|warn|error|none] <string>  Specify logging level
# @arg script                                      The path to an entry point for your worker
dev() {
    :;
}
# }} wrangler dev

# {{ wrangler deploy
# @cmd 🆙 Deploy your Worker to Cloudflare.
# @alias publish
# @flag -j --experimental-json-config        Experimental: Support wrangler.json  [boolean]
# @flag -c --config                          Path to .toml configuration file  [string]
# @flag -e --env                             Environment to use for operations and .env files  [string]
# @flag -h --help                            Show help  [boolean]
# @flag -v --version                         Show version number  [boolean]
# @option --name <string>                    Name of the worker
# @flag --no-bundle                          Skip internal build steps and directly deploy Worker
# @option --outdir <dir>                     Output directory for the bundled worker
# @option --compatibility-date <string>      Date to use for compatibility checks
# @option --compatibility-flags* <string>    Flags to use for compatibility checks
# @option --compatibility-flag* <string>     Flags to use for compatibility checks
# @flag --latest                             Use the latest version of the worker runtime
# @option --assets <string>                  Static assets to be served
# @option --site <string>                    Root folder of static assets for Workers Sites
# @option --site-include* <dir>              Array of .gitignore-style patterns that match file or directory names from the sites directory.
# @option --site-exclude* <dir>              Array of .gitignore-style patterns that match file or directory names from the sites directory.
# @option --var* <string>                    A key-value pair to be injected into the script as a variable
# @option --define* <string>                 A key-value pair to be substituted in the script
# @option --triggers* <string>               cron schedules to attach
# @option --schedule* <string>               cron schedules to attach
# @option --schedules* <string>              cron schedules to attach
# @option --routes* <string>                 Routes to upload
# @option --route* <string>                  Routes to upload
# @option --jsx-factory <string>             The function that is called for each JSX element
# @option --jsx-fragment <string>            The function that is called for each JSX fragment
# @option --tsconfig <file>                  Path to a custom tsconfig.json file
# @flag --minify                             Minify the Worker
# @flag --node-compat                        Enable Node.js compatibility
# @flag --dry-run                            Don't actually deploy
# @flag --keep-vars                          Stop wrangler from deleting vars that are not present in the wrangler.toml By default Wrangler will remove all vars and replace them with those found in the wrangler.toml configuration.
# @flag --logpush                            Send Trace Events from this worker to Workers Logpush.
# @option --old-asset-ttl <number>           Expire old assets in given seconds rather than immediate deletion.
# @arg script                                The path to an entry point for your worker
deploy() {
    :;
}
# }} wrangler deploy

# {{ wrangler delete
# @cmd 🗑  Delete your Worker from Cloudflare.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --name <string>                Name of the worker
# @flag --dry-run                        Don't actually delete
# @flag --force                          Delete even if doing so will break other Workers that depend on this one
# @arg script                            The path to an entry point for your worker
delete() {
    :;
}
# }} wrangler delete

# {{ wrangler tail
# @cmd 🦚 Starts a log tailing session for a published Worker.
# @flag -j --experimental-json-config              Experimental: Support wrangler.json  [boolean]
# @flag -c --config                                Path to .toml configuration file  [string]
# @flag -e --env                                   Environment to use for operations and .env files  [string]
# @flag -h --help                                  Show help  [boolean]
# @flag -v --version                               Show version number  [boolean]
# @option --format[json|pretty] <string>           The format of log entries
# @option --status*[ok|error|canceled] <string>    Filter by invocation status
# @option --header <string>                        Filter by HTTP header
# @option --method* <string>                       Filter by HTTP method
# @option --sampling-rate <number>                 Adds a percentage of requests to log sampling rate
# @option --search <string>                        Filter by a text match in console.log messages
# @option --ip* <string>                           Filter by the IP address the request originates from.
# @arg worker                                      Name or route of the worker to tail
tail_() {
    :;
}
# }} wrangler tail

# {{ wrangler secret
# @cmd 🤫 Generate a secret that can be referenced in a Worker
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
secret() {
    :;
}

# {{{ wrangler secret put
# @cmd Create or update a secret variable for a Worker
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --name <string>                Name of the Worker
# @arg key                               The variable name to be accessible in the Worker
secret::put() {
    :;
}
# }}} wrangler secret put

# {{{ wrangler secret delete
# @cmd Delete a secret variable from a Worker
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --name <string>                Name of the Worker
# @arg key                               The variable name to be accessible in the Worker
secret::delete() {
    :;
}
# }}} wrangler secret delete

# {{{ wrangler secret list
# @cmd List all secrets for a Worker
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --name <string>                Name of the Worker
secret::list() {
    :;
}
# }}} wrangler secret list
# }} wrangler secret

# {{ wrangler secret:bulk
# @cmd 🗄️  Bulk upload secrets for a Worker
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --name <string>                Name of the Worker
# @arg json                              The JSON file of key-value pairs to upload, in form {"key": value, ...}
secret:bulk() {
    :;
}
# }} wrangler secret:bulk

# {{ wrangler kv:namespace
# @cmd 🗂️  Interact with your Workers KV Namespaces
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
kv:namespace() {
    :;
}

# {{{ wrangler kv:namespace create
# @cmd Create a new namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --preview                        Interact with a preview namespace
# @arg namespace                         The name of the new namespace
kv:namespace::create() {
    :;
}
# }}} wrangler kv:namespace create

# {{{ wrangler kv:namespace list
# @cmd Outputs a list of all KV namespaces associated with your account id.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
kv:namespace::list() {
    :;
}
# }}} wrangler kv:namespace list

# {{{ wrangler kv:namespace delete
# @cmd Deletes a given namespace.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --binding <string>             The name of the namespace to delete
# @option --namespace-id <string>        The id of the namespace to delete
# @flag --preview                        Interact with a preview namespace
kv:namespace::delete() {
    :;
}
# }}} wrangler kv:namespace delete
# }} wrangler kv:namespace

# {{ wrangler kv:key
# @cmd 🔑 Individually manage Workers KV key-value pairs
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
kv:key() {
    :;
}

# {{{ wrangler kv:key put
# @cmd Writes a single key/value pair to the given namespace.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --binding <string>             The binding of the namespace to write to
# @option --namespace-id <string>        The id of the namespace to write to
# @flag --preview                        Interact with a preview namespace
# @option --ttl <number>                 Time for which the entries should be visible
# @option --expiration <number>          Time since the UNIX epoch after which the entry expires
# @option --metadata <string>            Arbitrary JSON that is associated with a key
# @option --path <file>                  Read value from the file at a given path
# @flag --local                          Interact with local storage
# @option --persist-to <dir>             Directory for local persistence
# @arg key                               The key to write to
# @arg value                             The value to write
kv:key::put() {
    :;
}
# }}} wrangler kv:key put

# {{{ wrangler kv:key list
# @cmd Outputs a list of all keys in a given namespace.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --binding <string>             The name of the namespace to list
# @option --namespace-id <string>        The id of the namespace to list
# @flag --preview                        Interact with a preview namespace
# @option --prefix <string>              A prefix to filter listed keys
# @flag --local                          Interact with local storage
# @option --persist-to <dir>             Directory for local persistence
kv:key::list() {
    :;
}
# }}} wrangler kv:key list

# {{{ wrangler kv:key get
# @cmd Reads a single value by key from the given namespace.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --binding <string>             The name of the namespace to get from
# @option --namespace-id <string>        The id of the namespace to get from
# @flag --preview                        Interact with a preview namespace
# @flag --text                           Decode the returned value as a utf8 string
# @flag --local                          Interact with local storage
# @option --persist-to <dir>             Directory for local persistence
# @arg key                               The key value to get.
kv:key::get() {
    :;
}
# }}} wrangler kv:key get

# {{{ wrangler kv:key delete
# @cmd Removes a single key value pair from the given namespace.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --binding <string>             The name of the namespace to delete from
# @option --namespace-id <string>        The id of the namespace to delete from
# @flag --preview                        Interact with a preview namespace
# @flag --local                          Interact with local storage
# @option --persist-to <dir>             Directory for local persistence
# @arg key                               The key value to delete
kv:key::delete() {
    :;
}
# }}} wrangler kv:key delete
# }} wrangler kv:key

# {{ wrangler kv:bulk
# @cmd 💪 Interact with multiple Workers KV key-value pairs at once
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
kv:bulk() {
    :;
}

# {{{ wrangler kv:bulk put
# @cmd Upload multiple key-value pairs to a namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --binding <string>             The name of the namespace to insert values into
# @option --namespace-id <string>        The id of the namespace to insert values into
# @flag --preview                        Interact with a preview namespace
# @flag --local                          Interact with local storage
# @option --persist-to <dir>             Directory for local persistence
# @arg filename                          The JSON file of key-value pairs to upload, in form [{"key":..., "value":...}"...]
kv:bulk::put() {
    :;
}
# }}} wrangler kv:bulk put

# {{{ wrangler kv:bulk delete
# @cmd Delete multiple key-value pairs from a namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --binding <string>             The name of the namespace to delete from
# @option --namespace-id <string>        The id of the namespace to delete from
# @flag --preview                        Interact with a preview namespace
# @flag -f --force                       Do not ask for confirmation before deleting
# @flag --local                          Interact with local storage
# @option --persist-to <dir>             Directory for local persistence
# @arg filename                          The JSON file of keys to delete, in the form ["key1", "key2", ...]
kv:bulk::delete() {
    :;
}
# }}} wrangler kv:bulk delete
# }} wrangler kv:bulk

# {{ wrangler pages
# @cmd ⚡️ Configure Cloudflare Pages
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
pages() {
    :;
}

# {{{ wrangler pages dev
# @cmd 🧑‍💻 Develop your full-stack Pages application locally
# @flag -j --experimental-json-config              Experimental: Support wrangler.json  [boolean]
# @flag -e --env                                   Environment to use for operations and .env files  [string]
# @flag -h --help                                  Show help  [boolean]
# @flag -v --version                               Show version number  [boolean]
# @option --compatibility-date <string>            Date to use for compatibility checks
# @option --compatibility-flags* <string>          Flags to use for compatibility checks
# @option --compatibility-flag* <string>           Flags to use for compatibility checks
# @option --ip <string>                            The IP address to listen on
# @option --port <number>                          The port to listen on (serve from)
# @option --inspector-port <number>                Port for devtools to connect to
# @option --proxy <number>                         The port to proxy (where the static assets are served)
# @option --script-path <path>                     The location of the single Worker script if not using functions
# @flag --no-bundle                                Whether to run bundling on `_worker.js`
# @option -b --binding* <string>                   Bind variable/secret (KEY=VALUE)
# @option -k --kv* <string>                        KV namespace to bind (--kv KV_BINDING)
# @option --d1* <string>                           D1 database to bind (--d1 D1_BINDING)
# @option -o --do* <string>                        Durable Object to bind (--do DO_BINDING=CLASS_NAME@SCRIPT_NAME)
# @option --r2* <string>                           R2 bucket to bind (--r2 R2_BINDING)
# @option --service* <string>                      Service to bind (--service SERVICE=SCRIPT_NAME)
# @flag --live-reload                              Auto reload HTML pages when change is detected
# @option --local-protocol[http|https] <string>    Protocol to listen to requests on, defaults to http.
# @option --persist-to <dir>                       Specify directory to use for local persistence (defaults to .wrangler/state)
# @option --log-level[debug|info|log|warn|error|none] <string>  Specify logging level
# @arg directory                                   The directory of static assets to serve
# @arg command                                     The proxy command to run
pages::dev() {
    :;
}
# }}} wrangler pages dev

# {{{ wrangler pages project
# @cmd ⚡️ Interact with your Pages projects
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
pages::project() {
    :;
}

# {{{{ wrangler pages project list
# @cmd List your Cloudflare Pages projects
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
pages::project::list() {
    :;
}
# }}}} wrangler pages project list

# {{{{ wrangler pages project create
# @cmd Create a new Cloudflare Pages project
# @flag -j --experimental-json-config        Experimental: Support wrangler.json  [boolean]
# @flag -c --config                          Path to .toml configuration file  [string]
# @flag -e --env                             Environment to use for operations and .env files  [string]
# @flag -h --help                            Show help  [boolean]
# @flag -v --version                         Show version number  [boolean]
# @option --production-branch <string>       The name of the production branch of your project
# @option --compatibility-flags* <string>    Flags to use for compatibility checks
# @option --compatibility-flag* <string>     Flags to use for compatibility checks
# @option --compatibility-date <string>      Date to use for compatibility checks
# @arg project-name                          The name of your Pages project
pages::project::create() {
    :;
}
# }}}} wrangler pages project create

# {{{{ wrangler pages project delete
# @cmd Delete a Cloudflare Pages project
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag -y --yes                         Answer "yes" to confirm project deletion
# @arg project-name                      The name of your Pages project
pages::project::delete() {
    :;
}
# }}}} wrangler pages project delete
# }}} wrangler pages project

# {{{ wrangler pages deployment
# @cmd 🚀 Interact with the deployments of a project
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
pages::deployment() {
    :;
}

# {{{{ wrangler pages deployment list
# @cmd List deployments in your Cloudflare Pages project
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --project-name <string>        The name of the project you would like to list deployments for
pages::deployment::list() {
    :;
}
# }}}} wrangler pages deployment list

# {{{{ wrangler pages deployment create
# @cmd 🆙 Publish a directory of static assets as a Pages deployment
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --project-name <string>        The name of the project you want to deploy to
# @option --branch <string>              The name of the branch you want to deploy to
# @option --commit-hash <string>         The SHA to attach to this deployment
# @option --commit-message <string>      The commit message to attach to this deployment
# @flag --commit-dirty                   Whether or not the workspace should be considered dirty for this deployment
# @flag --skip-caching                   Skip asset caching which speeds up builds
# @flag --no-bundle                      Whether to run bundling on `_worker.js` before deploying
# @arg directory                         The directory of static files to upload
pages::deployment::create() {
    :;
}
# }}}} wrangler pages deployment create

# {{{{ wrangler pages deployment tail
# @cmd Start a tailing session for a project's deployment and livestream logs from your Functions
# @flag -j --experimental-json-config              Experimental: Support wrangler.json  [boolean]
# @flag -c --config                                Path to .toml configuration file  [string]
# @flag -e --env                                   Environment to use for operations and .env files  [string]
# @flag -h --help                                  Show help  [boolean]
# @flag -v --version                               Show version number  [boolean]
# @option --project-name <string>                  The name of the project you would like to tail
# @option --environment[production|preview] <string>  When not providing a specific deployment ID, specifying environment will grab the latest production or preview deployment
# @option --format[json|pretty] <string>           The format of log entries
# @option --status*[ok|error|canceled] <string>    Filter by invocation status
# @option --header <string>                        Filter by HTTP header
# @option --method* <string>                       Filter by HTTP method
# @option --search <string>                        Filter by a text match in console.log messages
# @option --sampling-rate <number>                 Adds a percentage of requests to log sampling rate
# @option --ip* <string>                           Filter by the IP address the request originates from.
# @arg deployment                                  (Optional) ID or URL of the deployment to tail.
pages::deployment::tail_() {
    :;
}
# }}}} wrangler pages deployment tail
# }}} wrangler pages deployment

# {{{ wrangler pages deploy
# @cmd 🆙 Deploy a directory of static assets as a Pages deployment
# @alias publish
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --project-name <string>        The name of the project you want to deploy to
# @option --branch <string>              The name of the branch you want to deploy to
# @option --commit-hash <string>         The SHA to attach to this deployment
# @option --commit-message <string>      The commit message to attach to this deployment
# @flag --commit-dirty                   Whether or not the workspace should be considered dirty for this deployment
# @flag --skip-caching                   Skip asset caching which speeds up builds
# @flag --no-bundle                      Whether to run bundling on `_worker.js` before deploying
# @arg directory                         The directory of static files to upload
pages::deploy() {
    :;
}
# }}} wrangler pages deploy
# }} wrangler pages

# {{ wrangler queues
# @cmd 🇶 Configure Workers Queues
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
queues() {
    :;
}

# {{{ wrangler queues list
# @cmd List Queues
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --page <number>                Page number for pagination
queues::list() {
    :;
}
# }}} wrangler queues list

# {{{ wrangler queues create
# @cmd Create a Queue
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              The name of the queue
queues::create() {
    :;
}
# }}} wrangler queues create

# {{{ wrangler queues delete
# @cmd Delete a Queue
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              The name of the queue
queues::delete() {
    :;
}
# }}} wrangler queues delete

# {{{ wrangler queues consumer
# @cmd Configure Queue Consumers
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
queues::consumer() {
    :;
}

# {{{{ wrangler queues consumer add
# @cmd Add a Queue Consumer
# @flag -j --experimental-json-config     Experimental: Support wrangler.json  [boolean]
# @flag -c --config                       Path to .toml configuration file  [string]
# @flag -e --env                          Environment to use for operations and .env files  [string]
# @flag -h --help                         Show help  [boolean]
# @flag -v --version                      Show version number  [boolean]
# @option --batch-size <number>           Maximum number of messages per batch
# @option --batch-timeout <number>        Maximum number of seconds to wait to fill a batch with messages
# @option --message-retries <number>      Maximum number of retries for each message
# @option --dead-letter-queue <string>    Queue to send messages that failed to be consumed
# @option --max-concurrency <number>      The maximum number of concurrent consumer Worker invocations.
# @arg queue-name                         Name of the queue to configure
# @arg script-name                        Name of the consumer script
queues::consumer::add() {
    :;
}
# }}}} wrangler queues consumer add

# {{{{ wrangler queues consumer remove
# @cmd Remove a Queue Consumer
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg queue-name                        Name of the queue to configure
# @arg script-name                       Name of the consumer script
queues::consumer::remove() {
    :;
}
# }}}} wrangler queues consumer remove
# }}} wrangler queues consumer
# }} wrangler queues

# {{ wrangler r2
# @cmd 📦 Interact with an R2 store
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
r2() {
    :;
}

# {{{ wrangler r2 object
# @cmd Manage R2 objects
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
r2::object() {
    :;
}

# {{{{ wrangler r2 object get
# @cmd Fetch an object from an R2 bucket
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option -f --file <file>               The destination file to create
# @flag -p --pipe                        Enables the file to be piped to a destination, rather than specified with the --file option
# @flag --local                          Interact with local storage
# @option --persist-to <dir>             Directory for local persistence
# @option -J --jurisdiction <string>     The jurisdiction where the object exists
# @arg objectpath                        The source object path in the form of {bucket}/{key}
r2::object::get() {
    :;
}
# }}}} wrangler r2 object get

# {{{{ wrangler r2 object put
# @cmd Create an object in an R2 bucket
# @flag -j --experimental-json-config       Experimental: Support wrangler.json  [boolean]
# @flag -c --config                         Path to .toml configuration file  [string]
# @flag -e --env                            Environment to use for operations and .env files  [string]
# @flag -h --help                           Show help  [boolean]
# @flag -v --version                        Show version number  [boolean]
# @option -f --file <file>                  The path of the file to upload
# @flag -p --pipe                           Enables the file to be piped in, rather than specified with the --file option
# @option --content-type <string>           A standard MIME type describing the format of the object data
# @option --ct <string>                     A standard MIME type describing the format of the object data
# @option --content-disposition <string>    Specifies presentational information for the object
# @option --cd <string>                     Specifies presentational information for the object
# @option --content-encoding <string>       Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field
# @option --ce <string>                     Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field
# @option --content-language <string>       The language the content is in
# @option --cl <string>                     The language the content is in
# @option --cache-control <string>          Specifies caching behavior along the request/reply chain
# @option --cc <string>                     Specifies caching behavior along the request/reply chain
# @option --expires <string>                The date and time at which the object is no longer cacheable
# @flag --local                             Interact with local storage
# @option --persist-to <dir>                Directory for local persistence
# @option -J --jurisdiction <string>        The jurisdiction where the object will be created
# @arg objectpath                           The destination object path in the form of {bucket}/{key}
r2::object::put() {
    :;
}
# }}}} wrangler r2 object put

# {{{{ wrangler r2 object delete
# @cmd Delete an object in an R2 bucket
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --local                          Interact with local storage
# @option --persist-to <dir>             Directory for local persistence
# @option -J --jurisdiction <string>     The jurisdiction where the object exists
# @arg objectpath                        The destination object path in the form of {bucket}/{key}
r2::object::delete() {
    :;
}
# }}}} wrangler r2 object delete
# }}} wrangler r2 object

# {{{ wrangler r2 bucket
# @cmd Manage R2 buckets
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
r2::bucket() {
    :;
}

# {{{{ wrangler r2 bucket create
# @cmd Create a new R2 bucket
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option -J --jurisdiction <string>     The jurisdiction where the new bucket will be created
# @arg name                              The name of the new bucket
r2::bucket::create() {
    :;
}
# }}}} wrangler r2 bucket create

# {{{{ wrangler r2 bucket list
# @cmd List R2 buckets
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option -J --jurisdiction <string>     The jurisdiction to list
r2::bucket::list() {
    :;
}
# }}}} wrangler r2 bucket list

# {{{{ wrangler r2 bucket delete
# @cmd Delete an R2 bucket
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option -J --jurisdiction <string>     The jurisdiction where the bucket exists
# @arg name                              The name of the bucket to delete
r2::bucket::delete() {
    :;
}
# }}}} wrangler r2 bucket delete
# }}} wrangler r2 bucket
# }} wrangler r2

# {{ wrangler dispatch-namespace
# @cmd 📦 Interact with a dispatch namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
dispatch-namespace() {
    :;
}

# {{{ wrangler dispatch-namespace list
# @cmd List all dispatch namespaces
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
dispatch-namespace::list() {
    :;
}
# }}} wrangler dispatch-namespace list

# {{{ wrangler dispatch-namespace get
# @cmd Get information about a dispatch namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              Name of the dispatch namespace
dispatch-namespace::get() {
    :;
}
# }}} wrangler dispatch-namespace get

# {{{ wrangler dispatch-namespace create
# @cmd Create a dispatch namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              Name of the dispatch namespace
dispatch-namespace::create() {
    :;
}
# }}} wrangler dispatch-namespace create

# {{{ wrangler dispatch-namespace delete
# @cmd Delete a dispatch namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              Name of the dispatch namespace
dispatch-namespace::delete() {
    :;
}
# }}} wrangler dispatch-namespace delete

# {{{ wrangler dispatch-namespace rename
# @cmd Rename a dispatch namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg old-name                          Name of the dispatch namespace
# @arg new-name                          New name of the dispatch namespace
dispatch-namespace::rename() {
    :;
}
# }}} wrangler dispatch-namespace rename
# }} wrangler dispatch-namespace

# {{ wrangler d1
# @cmd 🗄  Interact with a D1 database
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
d1() {
    :;
}

# {{{ wrangler d1 list
# @cmd List D1 databases
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --json                           return output as clean JSON
d1::list() {
    :;
}
# }}} wrangler d1 list

# {{{ wrangler d1 info
# @cmd Get information about a D1 database, including the current database size and state.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --json                           return output as clean JSON
# @arg name                              The name of the DB
d1::info() {
    :;
}
# }}} wrangler d1 info

# {{{ wrangler d1 create
# @cmd Create D1 database
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --location                       A hint for the primary location of the new DB.
# @arg name                              The name of the new DB
d1::create() {
    :;
}
# }}} wrangler d1 create

# {{{ wrangler d1 delete
# @cmd Delete D1 database
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag -y --skip-confirmation           Skip confirmation
# @arg name                              The name or binding of the DB
d1::delete() {
    :;
}
# }}} wrangler d1 delete

# {{{ wrangler d1 backup
# @cmd Interact with D1 Backups
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
d1::backup() {
    :;
}

# {{{{ wrangler d1 backup list
# @cmd List your D1 backups
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              The name or binding of the DB
d1::backup::list() {
    :;
}
# }}}} wrangler d1 backup list

# {{{{ wrangler d1 backup create
# @cmd Create a new D1 backup
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              The name or binding of the DB
d1::backup::create() {
    :;
}
# }}}} wrangler d1 backup create

# {{{{ wrangler d1 backup restore
# @cmd Restore a DB backup
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              The name or binding of the DB
# @arg backup-id                         The Backup ID to restore
d1::backup::restore() {
    :;
}
# }}}} wrangler d1 backup restore

# {{{{ wrangler d1 backup download
# @cmd Download a DB backup
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --output <file>                The .sqlite3 file to write to (defaults to '<db-name>.<short-backup-id>.sqlite3'
# @arg name                              The name or binding of the DB
# @arg backup-id                         The Backup ID to download
d1::backup::download() {
    :;
}
# }}}} wrangler d1 backup download
# }}} wrangler d1 backup

# {{{ wrangler d1 execute
# @cmd Executed command or SQL file
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag -y --yes                         Answer "yes" to any prompts
# @flag --local                          Execute commands/files against a local DB for use with wrangler dev
# @option --file <file>                  A .sql file to ingest
# @option --command <string>             A single SQL statement to execute
# @option --persist-to <dir>             Specify directory to use for local persistence (for --local)
# @flag --json                           Return output as clean JSON
# @flag --preview                        Execute commands/files against a preview D1 DB
# @option --batch-size <number>          Number of queries to send in a single batch
# @arg database                          The name or binding of the DB
d1::execute() {
    :;
}
# }}} wrangler d1 execute

# {{{ wrangler d1 time-travel
# @cmd Use Time Travel to restore, fork or copy a database at a specific point-in-time.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
d1::time-travel() {
    :;
}

# {{{{ wrangler d1 time-travel info
# @cmd Retrieve information about a database at a specific point-in-time using Time Travel.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --timestamp <string>           accepts a Unix (seconds from epoch) or RFC3339 timestamp (e.g. 2023-07-13T08:46:42.228Z) to retrieve a bookmark for
# @flag --json                           return output as clean JSON
# @arg database                          The name or binding of the DB
d1::time-travel::info() {
    :;
}
# }}}} wrangler d1 time-travel info

# {{{{ wrangler d1 time-travel restore
# @cmd Restore a database back to a specific point-in-time.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --bookmark <string>            Bookmark to use for time travel
# @option --timestamp <string>           accepts a Unix (seconds from epoch) or RFC3339 timestamp (e.g. 2023-07-13T08:46:42.228Z) to retrieve a bookmark for
# @flag --json                           return output as clean JSON
# @arg database                          The name or binding of the DB
d1::time-travel::restore() {
    :;
}
# }}}} wrangler d1 time-travel restore
# }}} wrangler d1 time-travel

# {{{ wrangler d1 migrations
# @cmd Interact with D1 Migrations
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
d1::migrations() {
    :;
}

# {{{{ wrangler d1 migrations list
# @cmd List your D1 migrations
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --local                          Execute commands/files against a local DB for use with wrangler dev --local
# @flag --preview                        Execute commands/files against a preview D1 DB
# @option --persist-to <dir>             Specify directory to use for local persistence (you must use --local with this flag)
# @arg database                          The name or binding of the DB
d1::migrations::list() {
    :;
}
# }}}} wrangler d1 migrations list

# {{{{ wrangler d1 migrations create
# @cmd Create a new Migration
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg database                          The name or binding of the DB
# @arg message                           The Migration message
d1::migrations::create() {
    :;
}
# }}}} wrangler d1 migrations create

# {{{{ wrangler d1 migrations apply
# @cmd Apply D1 Migrations
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --local                          Execute commands/files against a local DB for use with wrangler dev --local
# @flag --preview                        Execute commands/files against a preview D1 DB
# @option --persist-to <dir>             Specify directory to use for local persistence (you must use --local with this flag)
# @option --batch-size <number>          Number of queries to send in a single batch
# @arg database                          The name or binding of the DB
d1::migrations::apply() {
    :;
}
# }}}} wrangler d1 migrations apply
# }}} wrangler d1 migrations
# }} wrangler d1

# {{ wrangler hyperdrive
# @cmd 🚀 Configure Hyperdrive databases
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
hyperdrive() {
    :;
}

# {{{ wrangler hyperdrive create
# @cmd Create a Hyperdrive config
# @flag -j --experimental-json-config       Experimental: Support wrangler.json  [boolean]
# @flag -c --config                         Path to .toml configuration file  [string]
# @flag -e --env                            Environment to use for operations and .env files  [string]
# @flag -h --help                           Show help  [boolean]
# @flag -v --version                        Show version number  [boolean]
# @option --connection-string <required>    The connection string for the database you want Hyperdrive to connect to - ex: protocol://user:password@host:port/database
# @flag --caching-disabled                  Whether caching query results is disabled for this Hyperdrive config
# @arg name                                 The name of the Hyperdrive config
hyperdrive::create() {
    :;
}
# }}} wrangler hyperdrive create

# {{{ wrangler hyperdrive delete
# @cmd Delete a Hyperdrive config
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg id                                The ID of the Hyperdrive config
hyperdrive::delete() {
    :;
}
# }}} wrangler hyperdrive delete

# {{{ wrangler hyperdrive get
# @cmd Get a Hyperdrive config
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg id                                The ID of the Hyperdrive config
hyperdrive::get() {
    :;
}
# }}} wrangler hyperdrive get

# {{{ wrangler hyperdrive list
# @cmd List Hyperdrive configs
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
hyperdrive::list() {
    :;
}
# }}} wrangler hyperdrive list

# {{{ wrangler hyperdrive update
# @cmd Update a Hyperdrive config
# @flag -j --experimental-json-config     Experimental: Support wrangler.json  [boolean]
# @flag -c --config                       Path to .toml configuration file  [string]
# @flag -e --env                          Environment to use for operations and .env files  [string]
# @flag -h --help                         Show help  [boolean]
# @flag -v --version                      Show version number  [boolean]
# @option --origin-host <string>          The host of the origin database
# @option --origin-port <number>          The port number of the origin database
# @option --origin-scheme <string>        The scheme used to connect to the origin database - e.g. postgresql or postgres
# @option --database <string>             The name of the database within the origin database
# @option --origin-user <string>          The username used to connect to the origin database
# @option --origin-password <required>    The password used to connect to the origin database
# @flag --caching-disabled                Whether caching query results is disabled for this Hyperdrive config
# @arg id                                 The ID of the Hyperdrive config
hyperdrive::update() {
    :;
}
# }}} wrangler hyperdrive update
# }} wrangler hyperdrive

# {{ wrangler ai
# @cmd 🤖 Interact with AI models
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
ai() {
    :;
}

# {{{ wrangler ai models
# @cmd List catalog models
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --json                           return output as clean JSON
ai::models() {
    :;
}
# }}} wrangler ai models
# }} wrangler ai

# {{ wrangler constellation
# @cmd 🤖 Interact with Constellation models
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
constellation() {
    :;
}

# {{{ wrangler constellation project
# @cmd Manage your projects
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
constellation::project() {
    :;
}

# {{{{ wrangler constellation project list
# @cmd List your projects
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --json                           return output as clean JSON
constellation::project::list() {
    :;
}
# }}}} wrangler constellation project list

# {{{{ wrangler constellation project create
# @cmd Create project
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              The name of the project
# @arg runtime                           The name of the runtime to use
constellation::project::create() {
    :;
}
# }}}} wrangler constellation project create

# {{{{ wrangler constellation project delete
# @cmd Delete project
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag -f --force                       Skip confirmation
# @arg name                              The name of the project
constellation::project::delete() {
    :;
}
# }}}} wrangler constellation project delete
# }}} wrangler constellation project

# {{{ wrangler constellation model
# @cmd Manage your models
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
constellation::model() {
    :;
}

# {{{{ wrangler constellation model upload
# @cmd Upload a model for an existing project
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option -d --description <string>      include a description of the model
# @arg projectname                       The name of the project
# @arg modelname                         The name of the uploaded model
# @arg modelfile                         The name of the local file with the model contents
constellation::model::upload() {
    :;
}
# }}}} wrangler constellation model upload

# {{{{ wrangler constellation model list
# @cmd List models of a project
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --json                           return output as clean JSON
# @arg projectname                       The name of the project
constellation::model::list() {
    :;
}
# }}}} wrangler constellation model list

# {{{{ wrangler constellation model delete
# @cmd Delete a model of a project
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag -f --force                       Skip confirmation
# @arg projectname                       The name of the project
# @arg modelname                         The name of the uploaded model
constellation::model::delete() {
    :;
}
# }}}} wrangler constellation model delete
# }}} wrangler constellation model

# {{{ wrangler constellation catalog
# @cmd Check the curated model catalog
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
constellation::catalog() {
    :;
}

# {{{{ wrangler constellation catalog list
# @cmd List catalog models
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --json                           return output as clean JSON
constellation::catalog::list() {
    :;
}
# }}}} wrangler constellation catalog list
# }}} wrangler constellation catalog

# {{{ wrangler constellation runtime
# @cmd Check the suported runtimes
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
constellation::runtime() {
    :;
}

# {{{{ wrangler constellation runtime list
# @cmd List suported runtimes
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --json                           return output as clean JSON
constellation::runtime::list() {
    :;
}
# }}}} wrangler constellation runtime list
# }}} wrangler constellation runtime
# }} wrangler constellation

# {{ wrangler vectorize
# @cmd 🧮 Interact with Vectorize indexes
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
vectorize() {
    :;
}

# {{{ wrangler vectorize create
# @cmd Create a Vectorize index
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --dimensions <number>          The dimension size to configure this index for, based on the output dimensions of your ML model.
# @option --metric[euclidean|cosine|dot-product] <string>  The distance metric to use for searching within the index.
# @option --preset <string>              The name of an preset representing an embeddings model: Vectorize will configure the dimensions and distance metric for you when provided.
# @option --description <string>         An optional description for this index.
# @flag --json                           return output as clean JSON
# @arg name                              The name of the Vectorize index to create (must be unique).
vectorize::create() {
    :;
}
# }}} wrangler vectorize create

# {{{ wrangler vectorize delete
# @cmd Delete a Vectorize index
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag -y --force                       Skip confirmation
# @arg name                              The name of the Vectorize index
vectorize::delete() {
    :;
}
# }}} wrangler vectorize delete

# {{{ wrangler vectorize get
# @cmd Get a Vectorize index by name
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --json                           return output as clean JSON
# @arg name                              The name of the Vectorize index.
vectorize::get() {
    :;
}
# }}} wrangler vectorize get

# {{{ wrangler vectorize list
# @cmd List your Vectorize indexes
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --json                           return output as clean JSON
vectorize::list() {
    :;
}
# }}} wrangler vectorize list

# {{{ wrangler vectorize insert
# @cmd Insert vectors into a Vectorize index
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --file <required>              A file containing line separated json (ndjson) vector objects.
# @option --batch-size <number>          Number of vector records to include when sending to the Cloudflare API.
# @flag --json                           return output as clean JSON
# @arg name                              The name of the Vectorize index.
vectorize::insert() {
    :;
}
# }}} wrangler vectorize insert
# }} wrangler vectorize

# {{ wrangler pubsub
# @cmd 📮 Interact and manage Pub/Sub Brokers
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
pubsub() {
    :;
}

# {{{ wrangler pubsub namespace
# @cmd Manage your Pub/Sub Namespaces
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
pubsub::namespace() {
    :;
}

# {{{{ wrangler pubsub namespace create
# @cmd Create a new Pub/Sub Namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --description <string>         Textual description of Namespace
# @arg name                              The name of the new Namespace.
pubsub::namespace::create() {
    :;
}
# }}}} wrangler pubsub namespace create

# {{{{ wrangler pubsub namespace list
# @cmd List your existing Pub/Sub Namespaces
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
pubsub::namespace::list() {
    :;
}
# }}}} wrangler pubsub namespace list

# {{{{ wrangler pubsub namespace delete
# @cmd Delete a Pub/Sub Namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              The name of the namespace to delete
pubsub::namespace::delete() {
    :;
}
# }}}} wrangler pubsub namespace delete

# {{{{ wrangler pubsub namespace describe
# @cmd Describe a Pub/Sub Namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @arg name                              The name of the namespace to describe.
pubsub::namespace::describe() {
    :;
}
# }}}} wrangler pubsub namespace describe
# }}} wrangler pubsub namespace

# {{{ wrangler pubsub broker
# @cmd Interact with your Pub/Sub Brokers
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
pubsub::broker() {
    :;
}

# {{{{ wrangler pubsub broker create
# @cmd Create a new Pub/Sub Broker
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --namespace <required>         An existing Namespace to associate the Broker with.
# @option --ns <required>                An existing Namespace to associate the Broker with.
# @option --description <string>         Longer description for the broker
# @option --expiration <string>          Time to allow token validity (can use seconds, hours, months, weeks, years)
# @option --on-publish-url <string>      A (HTTPS) Cloudflare Worker (or webhook) URL that messages will be sent to on-publish.
# @arg name                              The name of the Pub/Sub Broker.
pubsub::broker::create() {
    :;
}
# }}}} wrangler pubsub broker create

# {{{{ wrangler pubsub broker update
# @cmd Update an existing Pub/Sub Broker's configuration.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --namespace <required>         The Namespace the Broker is associated with
# @option --ns <required>                The Namespace the Broker is associated with
# @option --description <string>         A optional description of the Broker.
# @option --expiration <string>          The expiration date for all client credentials issued by the Broker (can use seconds, hours, months, weeks, years)
# @option --on-publish-url <string>      A (HTTPS) Cloudflare Worker (or webhook) URL that messages will be sent to on-publish.
# @arg name                              The name of an existing Pub/Sub Broker
pubsub::broker::update() {
    :;
}
# }}}} wrangler pubsub broker update

# {{{{ wrangler pubsub broker list
# @cmd List the Pub/Sub Brokers within a Namespace
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --namespace <required>         The Namespace the Brokers are associated with.
# @option --ns <required>                The Namespace the Brokers are associated with.
pubsub::broker::list() {
    :;
}
# }}}} wrangler pubsub broker list

# {{{{ wrangler pubsub broker delete
# @cmd Delete an existing Pub/Sub Broker
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --namespace <required>         The Namespace the Broker is associated with.
# @option --ns <required>                The Namespace the Broker is associated with.
# @arg name                              The name of the Broker to delete
pubsub::broker::delete() {
    :;
}
# }}}} wrangler pubsub broker delete

# {{{{ wrangler pubsub broker describe
# @cmd Describe an existing Pub/Sub Broker.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --namespace <required>         The Namespace the Broker is associated with.
# @option --ns <required>                The Namespace the Broker is associated with.
# @arg name                              The name of the Broker to describe.
pubsub::broker::describe() {
    :;
}
# }}}} wrangler pubsub broker describe

# {{{{ wrangler pubsub broker issue
# @cmd Issue new client credentials for a specific Pub/Sub Broker.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --namespace <required>         The Namespace the Broker is associated with.
# @option --ns <required>                The Namespace the Broker is associated with.
# @option -n --number <number>           The number of credentials to generate.
# @option --type <string>                The type of credential to generate.
# @option --expiration <string>          The expiration to set on the issued credentials.
# @option --exp <string>                 The expiration to set on the issued credentials.
# @option --client-id* <string>          A list of existing clientIds to generate tokens for.
# @option --jti* <string>                A list of existing clientIds to generate tokens for.
# @arg name                              The name of the Broker to issue credentials for.
pubsub::broker::issue() {
    :;
}
# }}}} wrangler pubsub broker issue

# {{{{ wrangler pubsub broker revoke
# @cmd Revoke a set of active client credentials associated with the given Broker
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --namespace <required>         The Namespace the Broker is associated with.
# @option --ns <required>                The Namespace the Broker is associated with.
# @option --jti <required>               Tokens to revoke
# @arg name                              The name of the Broker to revoke credentials against.
pubsub::broker::revoke() {
    :;
}
# }}}} wrangler pubsub broker revoke

# {{{{ wrangler pubsub broker unrevoke
# @cmd Restore access to a set of previously revoked client credentials.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --namespace <required>         The Namespace the Broker is associated with.
# @option --ns <required>                The Namespace the Broker is associated with.
# @option --jti <required>               Tokens to revoke
# @arg name                              The name of the Broker to revoke credentials against.
pubsub::broker::unrevoke() {
    :;
}
# }}}} wrangler pubsub broker unrevoke

# {{{{ wrangler pubsub broker show-revocations
# @cmd Show all previously revoked client credentials.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --namespace <required>         The Namespace the Broker is associated with.
# @option --ns <required>                The Namespace the Broker is associated with.
# @arg name                              The name of the Broker to revoke credentials against.
pubsub::broker::show-revocations() {
    :;
}
# }}}} wrangler pubsub broker show-revocations

# {{{{ wrangler pubsub broker public-keys
# @cmd Show the public keys used for verifying on-publish hooks and credentials for a Broker.
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --namespace <required>         The Namespace the Broker is associated with.
# @option --ns <required>                The Namespace the Broker is associated with.
# @arg name                              The name of the Broker to revoke credentials against.
pubsub::broker::public-keys() {
    :;
}
# }}}} wrangler pubsub broker public-keys
# }}} wrangler pubsub broker
# }} wrangler pubsub

# {{ wrangler mtls-certificate
# @cmd 🪪 Manage certificates used for mTLS connections
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
mtls-certificate() {
    :;
}

# {{{ wrangler mtls-certificate upload
# @cmd Upload an mTLS certificate
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --cert <required>              The path to a certificate file (.pem) containing a chain of certificates to upload
# @option --key <required>               The path to a file containing the private key for your leaf certificate
# @option --name <string>                The name for the certificate
mtls-certificate::upload() {
    :;
}
# }}} wrangler mtls-certificate upload

# {{{ wrangler mtls-certificate list
# @cmd List uploaded mTLS certificates
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
mtls-certificate::list() {
    :;
}
# }}} wrangler mtls-certificate list

# {{{ wrangler mtls-certificate delete
# @cmd Delete an mTLS certificate
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --id <string>                  The id of the mTLS certificate to delete
# @option --name <string>                The name of the mTLS certificate record to delete
mtls-certificate::delete() {
    :;
}
# }}} wrangler mtls-certificate delete
# }} wrangler mtls-certificate

# {{ wrangler login
# @cmd 🔓 Login to Cloudflare
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --scopes-list <string>         List all the available OAuth scopes with descriptions
# @flag --browser                        Automatically open the OAuth link in a browser
# @option --scopes* <string>             Pick the set of applicable OAuth scopes when logging in
login() {
    :;
}
# }} wrangler login

# {{ wrangler logout
# @cmd 🚪 Logout from Cloudflare
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
logout() {
    :;
}
# }} wrangler logout

# {{ wrangler whoami
# @cmd 🕵️  Retrieve your user info and test your auth config
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
whoami() {
    :;
}
# }} wrangler whoami

# {{ wrangler types
# @cmd 📝 Generate types from bindings & module rules in config
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
types() {
    :;
}
# }} wrangler types

# {{ wrangler deployments
# @cmd 🚢 List and view details for deployments
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --name <string>                The name of your worker
deployments() {
    :;
}

# {{{ wrangler deployments list
# @cmd 🚢 Displays the 10 most recent deployments for a worker
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --name <string>                The name of your worker
deployments::list() {
    :;
}
# }}} wrangler deployments list

# {{{ wrangler deployments view
# @cmd 🔍 View a deployment
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --name <string>                The name of your worker
# @arg deployment-id                     The ID of the deployment you want to inspect
deployments::view() {
    :;
}
# }}} wrangler deployments view
# }} wrangler deployments

# {{ wrangler rollback
# @cmd 🔙 Rollback a deployment
# @flag -j --experimental-json-config    Experimental: Support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option -m --message <string>          Skip confirmation and message prompts, uses provided argument as message
# @arg deployment-id                     The ID of the deployment to rollback to
rollback() {
    :;
}
# }} wrangler rollback

command eval "$(argc --argc-eval "$0" "$@")"