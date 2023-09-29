#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --automigrate                 enable/disable auto migrations (default true)
# @flag --debug                       enable debug mode, aka.
# @option --dir <dir>                 the PocketBase data directory (default "pb_data")
# @option --encryptionEnv <string>    the env variable whose value of 32 characters will be used as encryption key for the app settings (default none)
# @flag -h --help                     help for pocketbase
# @option --hooksDir <dir>            the directory with the JS app hooks
# @option --hooksPool <int>           the total prewarm goja.Runtime instances for the JS app hooks execution (default 25)
# @flag --hooksWatch                  auto restart the app on pb_hooks file change (default true)
# @flag --indexFallback               fallback the request to index.html on missing static path (eg.
# @option --migrationsDir <dir>       the directory with the user defined migrations
# @option --publicDir <path>          the directory to serve static files (default "pb_public")
# @option --queryTimeout <int>        the default SELECT queries timeout in seconds (default 30)
# @flag -v --version                  version for pocketbase

# {{ pocketbase admin
# @cmd Manages admin accounts
# @flag -h --help                     help for admin
# @flag --automigrate                 enable/disable auto migrations (default true)
# @flag --debug                       enable debug mode, aka.
# @option --dir <dir>                 the PocketBase data directory (default "pb_data")
# @option --encryptionEnv <string>    the env variable whose value of 32 characters will be used as encryption key for the app settings (default none)
# @option --hooksDir <dir>            the directory with the JS app hooks
# @option --hooksPool <int>           the total prewarm goja.Runtime instances for the JS app hooks execution (default 25)
# @flag --hooksWatch                  auto restart the app on pb_hooks file change (default true)
# @flag --indexFallback               fallback the request to index.html on missing static path (eg.
# @option --migrationsDir <dir>       the directory with the user defined migrations
# @option --publicDir <path>          the directory to serve static files (default "pb_public")
# @option --queryTimeout <int>        the default SELECT queries timeout in seconds (default 30)
admin() {
    :;
}

# {{{ pocketbase admin create
# @cmd Creates a new admin account
# @flag -h --help                     help for create
# @flag --automigrate                 enable/disable auto migrations (default true)
# @flag --debug                       enable debug mode, aka.
# @option --dir <dir>                 the PocketBase data directory (default "pb_data")
# @option --encryptionEnv <string>    the env variable whose value of 32 characters will be used as encryption key for the app settings (default none)
# @option --hooksDir <dir>            the directory with the JS app hooks
# @option --hooksPool <int>           the total prewarm goja.Runtime instances for the JS app hooks execution (default 25)
# @flag --hooksWatch                  auto restart the app on pb_hooks file change (default true)
# @flag --indexFallback               fallback the request to index.html on missing static path (eg.
# @option --migrationsDir <dir>       the directory with the user defined migrations
# @option --publicDir <path>          the directory to serve static files (default "pb_public")
# @option --queryTimeout <int>        the default SELECT queries timeout in seconds (default 30)
admin::create() {
    :;
}
# }}} pocketbase admin create

# {{{ pocketbase admin delete
# @cmd Deletes an existing admin account
# @flag -h --help                     help for delete
# @flag --automigrate                 enable/disable auto migrations (default true)
# @flag --debug                       enable debug mode, aka.
# @option --dir <dir>                 the PocketBase data directory (default "pb_data")
# @option --encryptionEnv <string>    the env variable whose value of 32 characters will be used as encryption key for the app settings (default none)
# @option --hooksDir <dir>            the directory with the JS app hooks
# @option --hooksPool <int>           the total prewarm goja.Runtime instances for the JS app hooks execution (default 25)
# @flag --hooksWatch                  auto restart the app on pb_hooks file change (default true)
# @flag --indexFallback               fallback the request to index.html on missing static path (eg.
# @option --migrationsDir <dir>       the directory with the user defined migrations
# @option --publicDir <path>          the directory to serve static files (default "pb_public")
# @option --queryTimeout <int>        the default SELECT queries timeout in seconds (default 30)
admin::delete() {
    :;
}
# }}} pocketbase admin delete

# {{{ pocketbase admin update
# @cmd Changes the password of a single admin account
# @flag -h --help                     help for update
# @flag --automigrate                 enable/disable auto migrations (default true)
# @flag --debug                       enable debug mode, aka.
# @option --dir <dir>                 the PocketBase data directory (default "pb_data")
# @option --encryptionEnv <string>    the env variable whose value of 32 characters will be used as encryption key for the app settings (default none)
# @option --hooksDir <dir>            the directory with the JS app hooks
# @option --hooksPool <int>           the total prewarm goja.Runtime instances for the JS app hooks execution (default 25)
# @flag --hooksWatch                  auto restart the app on pb_hooks file change (default true)
# @flag --indexFallback               fallback the request to index.html on missing static path (eg.
# @option --migrationsDir <dir>       the directory with the user defined migrations
# @option --publicDir <path>          the directory to serve static files (default "pb_public")
# @option --queryTimeout <int>        the default SELECT queries timeout in seconds (default 30)
admin::update() {
    :;
}
# }}} pocketbase admin update
# }} pocketbase admin

# {{ pocketbase migrate
# @cmd Executes app DB migration scripts
# @flag -h --help                     help for migrate
# @flag --automigrate                 enable/disable auto migrations (default true)
# @flag --debug                       enable debug mode, aka.
# @option --dir <dir>                 the PocketBase data directory (default "pb_data")
# @option --encryptionEnv <string>    the env variable whose value of 32 characters will be used as encryption key for the app settings (default none)
# @option --hooksDir <dir>            the directory with the JS app hooks
# @option --hooksPool <int>           the total prewarm goja.Runtime instances for the JS app hooks execution (default 25)
# @flag --hooksWatch                  auto restart the app on pb_hooks file change (default true)
# @flag --indexFallback               fallback the request to index.html on missing static path (eg.
# @option --migrationsDir <dir>       the directory with the user defined migrations
# @option --publicDir <path>          the directory to serve static files (default "pb_public")
# @option --queryTimeout <int>        the default SELECT queries timeout in seconds (default 30)
migrate() {
    :;
}
# }} pocketbase migrate

# {{ pocketbase serve
# @cmd Starts the web server (default to 127.0.0.1:8090 if no domain is specified)
# @flag -h --help                     help for serve
# @option --http <string>             TCP address to listen for the HTTP server (if domain args are specified - default to 0.0.0.0:80, otherwise - default to 127.0.0.1:8090)
# @option --https <string>            TCP address to listen for the HTTPS server (if domain args are specified - default to 0.0.0.0:443, otherwise - default to empty string, aka.
# @option --origins* <string>         CORS allowed domain origins list (default [*])
# @flag --automigrate                 enable/disable auto migrations (default true)
# @flag --debug                       enable debug mode, aka.
# @option --dir <dir>                 the PocketBase data directory (default "pb_data")
# @option --encryptionEnv <string>    the env variable whose value of 32 characters will be used as encryption key for the app settings (default none)
# @option --hooksDir <dir>            the directory with the JS app hooks
# @option --hooksPool <int>           the total prewarm goja.Runtime instances for the JS app hooks execution (default 25)
# @flag --hooksWatch                  auto restart the app on pb_hooks file change (default true)
# @flag --indexFallback               fallback the request to index.html on missing static path (eg.
# @option --migrationsDir <dir>       the directory with the user defined migrations
# @option --publicDir <path>          the directory to serve static files (default "pb_public")
# @option --queryTimeout <int>        the default SELECT queries timeout in seconds (default 30)
# @arg domain*
serve() {
    :;
}
# }} pocketbase serve

# {{ pocketbase update
# @cmd Automatically updates the current PocketBase executable with the latest available version
# @flag --backup                      Creates a pb_data backup at the end of the update process (default true)
# @flag -h --help                     help for update
# @flag --automigrate                 enable/disable auto migrations (default true)
# @flag --debug                       enable debug mode, aka.
# @option --dir <dir>                 the PocketBase data directory (default "pb_data")
# @option --encryptionEnv <string>    the env variable whose value of 32 characters will be used as encryption key for the app settings (default none)
# @option --hooksDir <dir>            the directory with the JS app hooks
# @option --hooksPool <int>           the total prewarm goja.Runtime instances for the JS app hooks execution (default 25)
# @flag --hooksWatch                  auto restart the app on pb_hooks file change (default true)
# @flag --indexFallback               fallback the request to index.html on missing static path (eg.
# @option --migrationsDir <dir>       the directory with the user defined migrations
# @option --publicDir <path>          the directory to serve static files (default "pb_public")
# @option --queryTimeout <int>        the default SELECT queries timeout in seconds (default 30)
update() {
    :;
}
# }} pocketbase update

command eval "$(argc --argc-eval "$0" "$@")"