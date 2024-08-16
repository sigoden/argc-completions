#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]

# {{ wrangler init
# @cmd 📥 Initialize a basic Worker
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag -y --yes                         Answer "yes" to any prompts for new projects  [boolean]
# @flag --from-dash                      The name of the Worker you wish to download from the Cloudflare dashboard for local development.
# @arg name                              The name of your worker  [string]
init() {
    :;
}
# }} wrangler init

# {{ wrangler dev
# @cmd 👂 Start a local server for developing your Worker
# @flag -j --experimental-json-config        Experimental: support wrangler.json  [boolean]
# @flag -c --config                          Path to .toml configuration file  [string]
# @flag -e --env                             Environment to use for operations and .env files  [string]
# @flag -h --help                            Show help  [boolean]
# @flag -v --version                         Show version number  [boolean]
# @flag --name                               Name of the worker  [string]
# @flag --no-bundle                          Skip internal build steps and directly deploy script  [boolean] [default: false]
# @flag --compatibility-date                 Date to use for compatibility checks  [string]
# @flag --compatibility-flags                Flags to use for compatibility checks  [array]
# @flag --compatibility-flag                 Flags to use for compatibility checks  [array]
# @flag --latest                             Use the latest version of the worker runtime  [boolean] [default: true]
# @flag --ip                                 IP address to listen on  [string]
# @flag --port                               Port to listen on  [number]
# @flag --inspector-port                     Port for devtools to connect to  [number]
# @flag --routes                             Routes to upload  [array]
# @flag --route                              Routes to upload  [array]
# @flag --host                               Host to forward requests to, defaults to the zone of project  [string]
# @option --local-protocol[http|https]       Protocol to listen to requests on, defaults to http.
# @flag --https-key-path                     Path to a custom certificate key  [string]
# @flag --https-cert-path                    Path to a custom certificate  [string]
# @flag --local-upstream                     Host to act as origin in local mode, defaults to dev.host or route  [string]
# @flag --legacy-assets                      (Experimental) Static assets to be served  [string]
# @flag --site                               Root folder of static assets for Workers Sites  [string]
# @flag --site-include                       Array of .gitignore-style patterns that match file or directory names from the sites directory.
# @flag --site-exclude                       Array of .gitignore-style patterns that match file or directory names from the sites directory.
# @option --upstream-protocol[http|https]    Protocol to forward requests to host on, defaults to https.
# @flag --var                                A key-value pair to be injected into the script as a variable  [array]
# @flag --define                             A key-value pair to be substituted in the script  [array]
# @flag --alias                              A module pair to be substituted in the script  [array]
# @flag --jsx-factory                        The function that is called for each JSX element  [string]
# @flag --jsx-fragment                       The function that is called for each JSX fragment  [string]
# @flag --tsconfig                           Path to a custom tsconfig.json file  [string]
# @flag -r --remote                          Run on the global Cloudflare network with access to production resources  [boolean] [default: false]
# @flag --minify                             Minify the script  [boolean]
# @flag --node-compat                        Enable Node.js compatibility  [boolean]
# @flag --persist-to                         Specify directory to use for local persistence (defaults to .wrangler/state)  [string]
# @flag --live-reload                        Auto reload HTML pages when change is detected in local mode  [boolean]
# @flag --test-scheduled                     Test scheduled events by visiting /__scheduled in browser  [boolean] [default: false]
# @option --log-level[debug|info|log|warn|error|none]  Specify logging level  [default: "log"]
# @flag --show-interactive-dev-session       Show interactive dev session  (defaults to true if the terminal supports interactivity)  [boolean]
# @flag --experimental-dev-env               Use the experimental DevEnv instantiation (unified across wrangler dev and unstable_dev)  [boolean] [default: false]
# @flag --x-dev-env                          Use the experimental DevEnv instantiation (unified across wrangler dev and unstable_dev)  [boolean] [default: false]
# @flag --experimental-registry              Use the experimental file based dev registry for multi-worker development  [boolean] [default: false]
# @flag --x-registry                         Use the experimental file based dev registry for multi-worker development  [boolean] [default: false]
# @arg script                                The path to an entry point for your worker  [string]
dev() {
    :;
}
# }} wrangler dev

# {{ wrangler deploy
# @cmd 🆙 Deploy a Worker to Cloudflare  [aliases: publish]
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --name                           Name of the worker  [string]
# @flag --no-bundle                      Skip internal build steps and directly deploy Worker  [boolean] [default: false]
# @flag --outdir                         Output directory for the bundled worker  [string]
# @flag --compatibility-date             Date to use for compatibility checks  [string]
# @flag --compatibility-flags            Flags to use for compatibility checks  [array]
# @flag --compatibility-flag             Flags to use for compatibility checks  [array]
# @flag --latest                         Use the latest version of the worker runtime  [boolean] [default: false]
# @flag --legacy-assets                  (Experimental) Static assets to be served  [string]
# @flag --site                           Root folder of static assets for Workers Sites  [string]
# @flag --site-include                   Array of .gitignore-style patterns that match file or directory names from the sites directory.
# @flag --site-exclude                   Array of .gitignore-style patterns that match file or directory names from the sites directory.
# @flag --var                            A key-value pair to be injected into the script as a variable  [array]
# @flag --define                         A key-value pair to be substituted in the script  [array]
# @flag --alias                          A module pair to be substituted in the script  [array]
# @flag --triggers                       cron schedules to attach  [array]
# @flag --schedule                       cron schedules to attach  [array]
# @flag --schedules                      cron schedules to attach  [array]
# @flag --routes                         Routes to upload  [array]
# @flag --route                          Routes to upload  [array]
# @flag --jsx-factory                    The function that is called for each JSX element  [string]
# @flag --jsx-fragment                   The function that is called for each JSX fragment  [string]
# @flag --tsconfig                       Path to a custom tsconfig.json file  [string]
# @flag --minify                         Minify the Worker  [boolean]
# @flag --node-compat                    Enable Node.js compatibility  [boolean]
# @flag --dry-run                        Don't actually deploy  [boolean]
# @flag --keep-vars                      Stop wrangler from deleting vars that are not present in the wrangler.toml By default Wrangler will remove all vars and replace them with those found in the wrangler.toml configuration.
# @flag --logpush                        Send Trace Events from this worker to Workers Logpush.
# @flag --upload-source-maps             Include source maps when uploading this worker.
# @flag --old-asset-ttl                  Expire old assets in given seconds rather than immediate deletion.
# @flag --dispatch-namespace             Name of a dispatch namespace to deploy the Worker to (Workers for Platforms)  [string]
# @arg script                            The path to an entry point for your worker  [string]
deploy() {
    :;
}
# }} wrangler deploy

# {{ wrangler deployments
# @cmd 🚢 List and view the current and past deployments for your Worker [open beta]
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --name                           The name of your Worker  [string]
deployments() {
    :;
}
# }} wrangler deployments

# {{ wrangler rollback
# @cmd 🔙 Rollback a deployment for a Worker [open beta]
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag -m --message                     Skip confirmation and message prompts, uses provided argument as message  [string]
# @flag --name                           The name of your Worker  [string]
# @arg deployment-id                     The ID of the deployment to rollback to  [string]
rollback() {
    :;
}
# }} wrangler rollback

# {{ wrangler delete
# @cmd 🗑  Delete a Worker from Cloudflare
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --name                           Name of the worker  [string]
# @flag --dry-run                        Don't actually delete  [boolean]
# @flag --force                          Delete even if doing so will break other Workers that depend on this one  [boolean]
# @arg script                            The path to an entry point for your worker  [string]
delete() {
    :;
}
# }} wrangler delete

# {{ wrangler tail
# @cmd 🦚 Start a log tailing session for a Worker
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @option --format[json|pretty]          The format of log entries  [default: "json"]
# @option --status[ok|error|canceled]    Filter by invocation status  [array]
# @flag --header                         Filter by HTTP header  [string]
# @flag --method                         Filter by HTTP method  [array]
# @flag --sampling-rate                  Adds a percentage of requests to log sampling rate  [number]
# @flag --search                         Filter by a text match in console.log messages  [string]
# @flag --ip                             Filter by the IP address the request originates from.
# @flag --version-id                     Filter by Worker version  [string]
# @arg worker                            Name or route of the worker to tail  [string]
tail_() {
    :;
}
# }} wrangler tail

# {{ wrangler secret
# @cmd 🤫 Generate a secret that can be referenced in a Worker
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
secret() {
    :;
}

# {{{ wrangler secret bulk
# @cmd Bulk upload secrets for a Worker
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --name                           Name of the Worker  [string]
# @arg json                              The JSON file of key-value pairs to upload, in form {"key": value, ...}  [string]
secret::bulk() {
    :;
}
# }}} wrangler secret bulk
# }} wrangler secret

# {{ wrangler types
# @cmd 📝 Generate types from bindings and module rules in configuration
# @flag -j --experimental-json-config     Experimental: support wrangler.json  [boolean]
# @flag -c --config                       Path to .toml configuration file  [string]
# @flag -e --env                          Environment to use for operations and .env files  [string]
# @flag -h --help                         Show help  [boolean]
# @flag -v --version                      Show version number  [boolean]
# @flag --env-interface                   The name of the generated environment interface  [string] [default: "Env"]
# @flag --experimental-include-runtime    The path of the generated runtime types file  [string]
# @flag --x-include-runtime               The path of the generated runtime types file  [string]
# @arg path                               The path to the declaration file to generate  [string] [default: "worker-configuration.d.ts"]
types() {
    :;
}
# }} wrangler types

# {{ wrangler kv
# @cmd 🗂️  Manage Workers KV Namespaces
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
kv() {
    :;
}

# {{{ wrangler kv bulk
# @cmd Interact with multiple Workers KV key-value pairs at once
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
kv::bulk() {
    :;
}
# }}} wrangler kv bulk
# }} wrangler kv

# {{ wrangler queues
# @cmd 🇶  Manage Workers Queues
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
queues() {
    :;
}
# }} wrangler queues

# {{ wrangler r2
# @cmd 📦 Manage R2 buckets & objects
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
r2() {
    :;
}
# }} wrangler r2

# {{ wrangler d1
# @cmd 🗄  Manage Workers D1 databases
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
d1() {
    :;
}

# {{{ wrangler d1 migrations
# @cmd Interact with D1 migrations
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
d1::migrations() {
    :;
}
# }}} wrangler d1 migrations
# }} wrangler d1

# {{ wrangler vectorize
# @cmd 🧮 Manage Vectorize indexes [open beta]
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
vectorize() {
    :;
}
# }} wrangler vectorize

# {{ wrangler hyperdrive
# @cmd 🚀 Manage Hyperdrive databases
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
hyperdrive() {
    :;
}
# }} wrangler hyperdrive

# {{ wrangler pages
# @cmd ⚡️ Configure Cloudflare Pages
# @flag -h --help       Show help  [boolean]
# @flag -v --version    Show version number  [boolean]
pages() {
    :;
}

# {{{ wrangler pages deployment
# @cmd Interact with the deployments of a project
# @flag -h --help       Show help  [boolean]
# @flag -v --version    Show version number  [boolean]
pages::deployment() {
    :;
}

# {{{{ wrangler pages deployment pages
# @cmd Publish a directory of static assets as a Pages deployment
pages::deployment::pages() {
    :;
}
# }}}} wrangler pages deployment pages
# }}} wrangler pages deployment

# {{{ wrangler pages deploy
# @cmd Deploy a directory of static assets as a Pages deployment  [aliases: publish]
# @flag -h --help               Show help  [boolean]
# @flag -v --version            Show version number  [boolean]
# @flag --project-name          The name of the project you want to deploy to  [string]
# @flag --branch                The name of the branch you want to deploy to  [string]
# @flag --commit-hash           The SHA to attach to this deployment  [string]
# @flag --commit-message        The commit message to attach to this deployment  [string]
# @flag --commit-dirty          Whether or not the workspace should be considered dirty for this deployment  [boolean]
# @flag --skip-caching          Skip asset caching which speeds up builds  [boolean]
# @flag --no-bundle             Whether to run bundling on `_worker.js` before deploying  [boolean] [default: false]
# @flag --upload-source-maps    Whether to upload any server-side sourcemaps with this deployment  [boolean] [default: false]
# @arg directory                The directory of static files to upload  [string]
pages::deploy() {
    :;
}
# }}} wrangler pages deploy

# {{{ wrangler pages secret
# @cmd Generate a secret that can be referenced in a Pages project
# @flag -h --help       Show help  [boolean]
# @flag -v --version    Show version number  [boolean]
pages::secret() {
    :;
}

# {{{{ wrangler pages secret pages
# @cmd Bulk upload secrets for a Pages project
pages::secret::pages() {
    :;
}
# }}}} wrangler pages secret pages
# }}} wrangler pages secret

# {{{ wrangler pages download
# @cmd Download settings from your project
# @flag -h --help       Show help  [boolean]
# @flag -v --version    Show version number  [boolean]
pages::download() {
    :;
}
# }}} wrangler pages download
# }} wrangler pages

# {{ wrangler mtls-certificate
# @cmd 🪪  Manage certificates used for mTLS connections
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
mtls-certificate() {
    :;
}
# }} wrangler mtls-certificate

# {{ wrangler pubsub
# @cmd 📮 Manage Pub/Sub brokers [private beta]
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
pubsub() {
    :;
}
# }} wrangler pubsub

# {{ wrangler dispatch-namespace
# @cmd 🏗️  Manage dispatch namespaces
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
dispatch-namespace() {
    :;
}
# }} wrangler dispatch-namespace

# {{ wrangler ai
# @cmd 🤖 Manage AI models
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
ai() {
    :;
}
# }} wrangler ai

# {{ wrangler login
# @cmd 🔓 Login to Cloudflare
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --scopes-list                    List all the available OAuth scopes with descriptions
# @flag --browser                        Automatically open the OAuth link in a browser  [boolean] [default: true]
# @flag --scopes                         Pick the set of applicable OAuth scopes when logging in  [array]
login() {
    :;
}
# }} wrangler login

# {{ wrangler logout
# @cmd 🚪 Logout from Cloudflare
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
logout() {
    :;
}
# }} wrangler logout

# {{ wrangler whoami
# @cmd 🕵️  Retrieve your user information
# @flag -j --experimental-json-config    Experimental: support wrangler.json  [boolean]
# @flag -c --config                      Path to .toml configuration file  [string]
# @flag -e --env                         Environment to use for operations and .env files  [string]
# @flag -h --help                        Show help  [boolean]
# @flag -v --version                     Show version number  [boolean]
# @flag --account                        Show membership information for the given account (id or name).
whoami() {
    :;
}
# }} wrangler whoami

command eval "$(argc --argc-eval "$0" "$@")"