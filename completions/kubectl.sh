#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code

# {{ kubectl create
# @cmd Create a resource from a file or from stdin
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @flag --edit                                    Edit the API resource before creating
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files to use to create the resource
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option --raw <value>                           Raw URI to POST to the server.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @flag --windows-line-endings                    Only relevant if --edit=true.
create() {
    :;
}

# {{{ kubectl create clusterrole
# @cmd Create a cluster role
# @option --as <value>                             Username to impersonate for the operation.
# @option --as-group* <value>                      Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                         UID to impersonate for the operation.
# @option --cache-dir <dir>                        Default cache directory
# @option --certificate-authority <path>           Path to a cert file for the certificate authority
# @option --client-certificate <path>              Path to a client certificate file for TLS
# @option --client-key <path>                      Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>     The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>     The name of the kubeconfig context to use
# @flag --disable-compression                      If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                 If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                      Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>               Maximum number of seconds between log flushes
# @flag --match-server-version                     Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                       Password for basic authentication to the API server
# @option --profile <none>                         Name of profile to capture.
# @option --profile-output <profile.pprof>         Name of the file to write the profile to
# @option --request-timeout <0>                    The length of time to wait before giving up on a single server request.
# @option -s --server <value>                      The address and port of the Kubernetes API server
# @option --tls-server-name <value>                Server name to use for server certificate validation.
# @option --token <value>                          Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>           The name of the kubeconfig user to use
# @option --username <value>                       Username for basic authentication to the API server
# @option -v --v <0>                               number for the log level verbosity
# @option --vmodule*, <value>                      comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                       Treat warnings received from the server as errors and exit with a non-zero exit code
# @option --aggregation-rule <value>               An aggregation label selector for combining ClusterRoles.
# @flag --allow-missing-template-keys              If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>      Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>         Name of the manager used to track field ownership.
# @option --non-resource-url* <value>              A partial url that user should have access to.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option --resource* <value>                      Resource that the rule applies to
# @option --resource-name* <value>                 Resource in the white list that the rule applies to, repeat this flag for multiple items
# @flag --save-config                              If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                      If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                        Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @option --verb*,[`_choice_verb_type`] <value>    Verb that applies to the resources contained in the rule
# @arg name
create::clusterrole() {
    :;
}
# }}} kubectl create clusterrole

# {{{ kubectl create clusterrolebinding
# @cmd Create a cluster role binding for a particular cluster role
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --clusterrole <value>                   ClusterRole this ClusterRoleBinding should reference
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --group* <value>                        Groups to bind to the clusterrole.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @option --serviceaccount* <value>               Service accounts to bind to the clusterrole, in the format <namespace>:<name>.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --user* <value>                         Usernames to bind to the clusterrole.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::clusterrolebinding() {
    :;
}
# }}} kubectl create clusterrolebinding

# {{{ kubectl create configmap
# @cmd Create a config map from a local file, directory or literal value
# @alias cm
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @flag --append-hash                             Append a hash of the configmap to its name.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --from-env-file* <value>                Specify the path to a file to read lines of key=val pairs to create a configmap.
# @option --from-file* <value>                    Key file can be specified using its file path, in which case file basename will be used as configmap key, or optionally with a key and file path, in which case the given key will be used.
# @option --from-literal* <value>                 Specify a key and literal value to insert in configmap (i.e.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::configmap() {
    :;
}
# }}} kubectl create configmap

# {{{ kubectl create cronjob
# @cmd Create a cron job with the specified name
# @alias cj
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --image <value>                         Image name to run.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option --restart[OnFailure|Never] <value>      job's restart policy.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @option --schedule <value>                      A schedule in the Cron format the job should be run with.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
# @arg command
# @arg args*
create::cronjob() {
    :;
}
# }}} kubectl create cronjob

# {{{ kubectl create deployment
# @cmd Create a deployment with the specified name
# @alias deploy
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --image* <value>                        Image names to run.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option --port <-1>                             The port that this container exposes.
# @option -r --replicas <1>                       Number of replicas to create.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
# @arg command[`_module_os_command`]
# @arg args~[`_choice_args`]
create::deployment() {
    :;
}
# }}} kubectl create deployment

# {{{ kubectl create ingress
# @cmd Create an ingress with the specified name
# @alias ing
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --annotation* <value>                   Annotation to insert in the ingress object, in the format annotation=value
# @option --class <value>                         Ingress Class to be used
# @option --default-backend <value>               Default service for backend, in format of svcname:port
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option --rule* <value>                         Rule in format host/path=service:port[,tls=secretname].
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::ingress() {
    :;
}
# }}} kubectl create ingress

# {{{ kubectl create job
# @cmd Create a job with the specified name
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --from <value>                          The name of the resource to create a Job from (only cronjob is supported).
# @option --image <value>                         Image name to run.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
# @arg command[`_module_os_command`]
# @arg args~[`_choice_args`]
create::job() {
    :;
}
# }}} kubectl create job

# {{{ kubectl create namespace
# @cmd Create a namespace with the specified name
# @alias ns
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::namespace() {
    :;
}
# }}} kubectl create namespace

# {{{ kubectl create poddisruptionbudget
# @cmd Create a pod disruption budget with the specified name
# @alias pdb
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --max-unavailable <value>               The maximum number or percentage of unavailable pods this budget requires.
# @option --min-available <value>                 The minimum number or percentage of available pods this budget requires.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @option --selector <value>                      A label selector to use for this budget.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::poddisruptionbudget() {
    :;
}
# }}} kubectl create poddisruptionbudget

# {{{ kubectl create priorityclass
# @cmd Create a priority class with the specified name
# @alias pc
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --description <value>                   description is an arbitrary string that usually provides guidelines on when this priority class should be used.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @flag --global-default                          global-default specifies whether this PriorityClass should be considered as the default priority.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option --preemption-policy <PreemptLowerPriority>  preemption-policy is the policy for preempting pods with lower priority.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @option --value <0>                             the value of this priority class.
# @arg name
create::priorityclass() {
    :;
}
# }}} kubectl create priorityclass

# {{{ kubectl create quota
# @cmd Create a quota with the specified name
# @alias resourcequota
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --hard <value>                          A comma-delimited set of resource=quantity pairs that define a hard limit.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @option --scopes <value>                        A comma-delimited set of quota scopes that must all match each object tracked by the quota.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::quota() {
    :;
}
# }}} kubectl create quota

# {{{ kubectl create role
# @cmd Create a role with single rule
# @option --as <value>                             Username to impersonate for the operation.
# @option --as-group* <value>                      Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                         UID to impersonate for the operation.
# @option --cache-dir <dir>                        Default cache directory
# @option --certificate-authority <path>           Path to a cert file for the certificate authority
# @option --client-certificate <path>              Path to a client certificate file for TLS
# @option --client-key <path>                      Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>     The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>     The name of the kubeconfig context to use
# @flag --disable-compression                      If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                 If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                      Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>               Maximum number of seconds between log flushes
# @flag --match-server-version                     Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                       Password for basic authentication to the API server
# @option --profile <none>                         Name of profile to capture.
# @option --profile-output <profile.pprof>         Name of the file to write the profile to
# @option --request-timeout <0>                    The length of time to wait before giving up on a single server request.
# @option -s --server <value>                      The address and port of the Kubernetes API server
# @option --tls-server-name <value>                Server name to use for server certificate validation.
# @option --token <value>                          Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>           The name of the kubeconfig user to use
# @option --username <value>                       Username for basic authentication to the API server
# @option -v --v <0>                               number for the log level verbosity
# @option --vmodule*, <value>                      comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                       Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys              If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>      Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>         Name of the manager used to track field ownership.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option --resource* <value>                      Resource that the rule applies to
# @option --resource-name* <value>                 Resource in the white list that the rule applies to, repeat this flag for multiple items
# @flag --save-config                              If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                      If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                        Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @option --verb*,[`_choice_verb_type`] <value>    Verb that applies to the resources contained in the rule
# @arg name
create::role() {
    :;
}
# }}} kubectl create role

# {{{ kubectl create rolebinding
# @cmd Create a role binding for a particular role or cluster role
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --clusterrole[`_choice_clusterrole`] <value>  ClusterRole this RoleBinding should reference
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --group* <value>                        Groups to bind to the role.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option --role <value>                          Role this RoleBinding should reference
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @option --serviceaccount*[`_choice_serviceaccount`] <value>  Service accounts to bind to the role, in the format <namespace>:<name>.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --user* <value>                         Usernames to bind to the role.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::rolebinding() {
    :;
}
# }}} kubectl create rolebinding

# {{{ kubectl create secret
# @cmd Create a secret using a specified subcommand
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @arg enum[docker-registry|generic|tls]
create::secret() {
    :;
}

# {{{{ kubectl create secret docker-registry
# @cmd Create a secret for use with a Docker registry
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @flag --append-hash                             Append a hash of the secret to its name.
# @option --docker-email <value>                  Email for Docker registry
# @option --docker-password <value>               Password for Docker registry authentication
# @option --docker-server <https://index.docker.io/v1/>  Server location for Docker registry
# @option --docker-username <value>               Username for Docker registry authentication
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --from-file <file>                      Key files can be specified using their file path, in which case a default name will be given to them, or optionally with a name and file path, in which case the given name will be used.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::secret::docker-registry() {
    :;
}
# }}}} kubectl create secret docker-registry

# {{{{ kubectl create secret generic
# @cmd Create a secret from a local file, directory, or literal value
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @flag --append-hash                             Append a hash of the secret to its name.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --from-env-file <file>                  Specify the path to a file to read lines of key=val pairs to create a secret.
# @option --from-file <file>                      Key files can be specified using their file path, in which case a default name will be given to them, or optionally with a name and file path, in which case the given name will be used.
# @option --from-literal* <value>                 Specify a key and literal value to insert in secret (i.e.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --type <value>                          The type of secret to create
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::secret::generic() {
    :;
}
# }}}} kubectl create secret generic

# {{{{ kubectl create secret tls
# @cmd Create a TLS secret
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @flag --append-hash                             Append a hash of the secret to its name.
# @option --cert <value>                          Path to PEM encoded public key certificate.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --key <file>                            Path to private key associated with given certificate.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::secret::tls() {
    :;
}
# }}}} kubectl create secret tls
# }}} kubectl create secret

# {{{ kubectl create service
# @cmd Create a service using a specified subcommand
# @alias svc
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
create::service() {
    :;
}

# {{{{ kubectl create service clusterip
# @cmd Create a ClusterIP service
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --clusterip <value>                     Assign your own ClusterIP or set to 'None' for a 'headless' service (no loadbalancing).
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --tcp* <value>                          Port pairs can be specified as '<port>:<targetPort>'.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::service::clusterip() {
    :;
}
# }}}} kubectl create service clusterip

# {{{{ kubectl create service externalname
# @cmd Create an ExternalName service
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --external-name <value>                 External name of service
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --tcp* <value>                          Port pairs can be specified as '<port>:<targetPort>'.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
# @arg external-name <external.name>
create::service::externalname() {
    :;
}
# }}}} kubectl create service externalname

# {{{{ kubectl create service loadbalancer
# @cmd Create a LoadBalancer service
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --tcp* <value>                          Port pairs can be specified as '<port>:<targetPort>'.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::service::loadbalancer() {
    :;
}
# }}}} kubectl create service loadbalancer

# {{{{ kubectl create service nodeport
# @cmd Create a NodePort service
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option --node-port <0>                         Port used to expose the service on each node in a cluster.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --tcp* <value>                          Port pairs can be specified as '<port>:<targetPort>'.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::service::nodeport() {
    :;
}
# }}}} kubectl create service nodeport
# }}} kubectl create service

# {{{ kubectl create serviceaccount
# @cmd Create a service account with the specified name
# @alias sa
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-create>        Name of the manager used to track field ownership.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg name
create::serviceaccount() {
    :;
}
# }}} kubectl create serviceaccount

# {{{ kubectl create token
# @cmd Request a service account token
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --audience* <value>                     Audience of the requested token.
# @option --bound-object-kind <value>             Kind of an object to bind the token to.
# @option --bound-object-name <value>             Name of an object to bind the token to.
# @option --bound-object-uid <value>              UID of an object to bind the token to.
# @option --duration <0s>                         Requested lifetime of the issued token.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg service_account_name
create::token() {
    :;
}
# }}} kubectl create token
# }} kubectl create

# {{ kubectl expose
# @cmd Take a replication controller, service, deployment or pod and expose it as a new Kubernetes service
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --cluster-ip <value>                    ClusterIP to be assigned to the service.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --external-ip <value>                   Additional external IP address (not managed by Kubernetes) to accept for the service.
# @option --field-manager <kubectl-expose>        Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to expose a service
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -l --labels <value>                     Labels to apply to the service created by this call.
# @option --load-balancer-ip <value>              IP to assign to the LoadBalancer.
# @option --name <value>                          The name for the newly created object.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option --override-type[json|merge|strategic] <merge>  The method used to override the generated object: json, merge, or strategic.
# @option --overrides <value>                     An inline JSON override for the generated object.
# @option --port <value>                          The port that the service should serve on.
# @option --protocol <value>                      The network protocol for the service to be created.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @option --selector <value>                      A label selector to use for this service.
# @option --session-affinity <value>              If non-empty, set the session affinity for the service to this; legal values: 'None', 'ClientIP'
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --target-port <value>                   Name or number for the port on the container that the service should direct traffic to.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --type[ClusterIP|NodePort|LoadBalancer|ExternalName] <value>  Type for this service: ClusterIP, NodePort, LoadBalancer, or ExternalName.
# @arg type-name[`_choice_common_type`]
# @arg resource[`_choice_resource`]
expose() {
    :;
}
# }} kubectl expose

# {{ kubectl run
# @cmd Run a particular image on the cluster
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --annotations* <value>                  Annotations to apply to the pod.
# @flag --attach                                  If true, wait for the Pod to start running, and then attach to the Pod as if 'kubectl attach ...' were called.
# @flag --command                                 If true and extra arguments are present, use them as the 'command' field in the container, rather than the 'args' field which is the default.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --env* <value>                          Environment variables to set in the container.
# @flag --expose                                  If true, create a ClusterIP service associated with the pod.
# @option --field-manager <kubectl-run>           Name of the manager used to track field ownership.
# @option --image[`_module_oci_docker_image`] <value>  The image for the container to run.
# @option --image-pull-policy <value>             The image pull policy for the container.
# @option -l --labels <value>                     Comma separated labels to apply to the pod.
# @flag --leave-stdin-open                        If the pod is started in interactive mode or with stdin, leave stdin open after the first attach completes.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option --override-type[json|merge|strategic] <merge>  The method used to override the generated object: json, merge, or strategic.
# @option --overrides <value>                     An inline JSON override for the generated object.
# @option --pod-running-timeout <1m0s>            The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running
# @option --port <value>                          The port that this container exposes.
# @flag --privileged                              If true, run the container in privileged mode.
# @flag -q --quiet                                If true, suppress prompt messages.
# @option --restart[Always|OnFailure|Never] <Always>  The restart policy for this Pod.
# @flag --rm                                      If true, delete the pod after it exits.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @flag -i --stdin                                Keep stdin open on the container in the pod, even if nothing is attached.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @flag -t --tty                                  Allocate a TTY for the container in the pod.
# @arg command[`_module_os_command`]
# @arg args~[`_choice_args`]
run() {
    :;
}
# }} kubectl run

# {{ kubectl set
# @cmd Set specific features on objects
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
set() {
    :;
}

# {{{ kubectl set env
# @cmd Update environment variables on a pod template
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     If true, select all resources in the namespace of the specified resource types
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option -c --containers <*>                     The names of containers in the selected pod templates to change - may use wildcards
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option -e --env* <value>                       Specify a key-value pair for an environment variable to set into each container.
# @option --field-manager <kubectl-set>           Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files the resource to update the env
# @option --from <value>                          The name of a resource from which to inject environment variables
# @option --keys* <value>                         Comma-separated list of keys to import from specified resource
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @flag --list                                    If true, display the environment and any changes in the standard format.
# @flag --local                                   If true, set env will NOT contact api-server but run locally.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --overwrite                               If true, allow environment to be overwritten, otherwise reject updates that overwrite existing environment.
# @option --prefix <value>                        Prefix to append to variable names
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --resolve                                 If true, show secret or configmap references when listing variables
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg resource-name[`_choice_resource_type_and_name`]
# @arg kv*
set::env() {
    :;
}
# }}} kubectl set env

# {{{ kubectl set image
# @cmd Update the image of a pod template
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all resources, in the namespace of the specified resource types
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-set>           Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to get from a server.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @flag --local                                   If true, set image will NOT contact api-server but run locally.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg type-name[`_choice_resource_type_or_resource`]
# @arg container-image*[`_choice_container_image`]
set::image() {
    :;
}
# }}} kubectl set image

# {{{ kubectl set resources
# @cmd Update resource requests/limits on objects with pod templates
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all resources, in the namespace of the specified resource types
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option -c --containers <*>                     The names of containers in the selected pod templates to change, all containers are selected by default - may use wildcards
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-set>           Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to get from a server.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option --limits <value>                        The resource requirement requests for this container.
# @flag --local                                   If true, set resources will NOT contact api-server but run locally.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option --requests <value>                      The resource requirement requests for this container.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
set::resources() {
    :;
}
# }}} kubectl set resources

# {{{ kubectl set selector
# @cmd Set the selector on a resource
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all resources in the namespace of the specified resource types
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-set>           Name of the manager used to track field ownership.
# @option -f --filename <file>                    identifying the resource.
# @flag --local                                   If true, annotation will NOT contact api-server but run locally.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option --resource-version <value>              If non-empty, the selectors update will only succeed if this is the current resource-version for the object.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg type-name[`_choice_all_type`]
# @arg resource[`_choice_resource`]
# @arg key-value* <key=value>
set::selector() {
    :;
}
# }}} kubectl set selector

# {{{ kubectl set serviceaccount
# @cmd Update the service account of a resource
# @alias sa
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all resources, in the namespace of the specified resource types
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-set>           Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to get from a server.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @flag --local                                   If true, set serviceaccount will NOT contact api-server but run locally.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg resource-name[`_choice_resource_type_and_name`]
# @arg name
set::serviceaccount() {
    :;
}
# }}} kubectl set serviceaccount

# {{{ kubectl set subject
# @cmd Update the user, group, or service account in a role binding or cluster role binding
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all resources, in the namespace of the specified resource types
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-set>           Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files the resource to update the subjects
# @option --group* <value>                        Groups to bind to the role
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @flag --local                                   If true, set subject will NOT contact api-server but run locally.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @option --serviceaccount* <value>               Service accounts to bind to the role
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --user* <value>                         Usernames to bind to the role
set::subject() {
    :;
}
# }}} kubectl set subject
# }} kubectl set

# {{ kubectl explain
# @cmd Get documentation for a resource
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option --api-version <value>                   Use given api-version (group/version) of the resource.
# @option --output[plaintext|plaintext-openapiv2] <plaintext>  Format in which to render the schema.
# @flag --recursive                               When true, print the name of all the fields recursively.
# @arg type
explain() {
    :;
}
# }} kubectl explain

# {{ kubectl get
# @cmd Display one or many resources
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag -A --all-namespaces                       If present, list the requested object(s) across all namespaces.
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --chunk-size <500>                      Return large lists in chunks rather than all at once.
# @option --field-selector <value>                Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1,key2=value2).
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to get from a server.
# @flag --ignore-not-found                        If the requested object does not exist the command will return exit code 0.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -L --label-columns* <value>             Accepts a comma separated list of labels that are going to be presented as columns.
# @flag --no-headers                              When using the default or custom-column output format, don't print headers (default print headers).
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file|custom-columns|custom-columns-file|wide] <value>  Output format.
# @flag --output-watch-events                     Output watch event objects when --watch or --watch-only is used.
# @option --raw <value>                           Raw URI to request from the server.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --server-print                            If true, have the server return the appropriate table output.
# @flag --show-kind                               If present, list the resource type for the requested object(s).
# @flag --show-labels                             When printing, show all labels as the last column (default hide labels column)
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --sort-by <value>                       If non-empty, sort list types using this field specification.
# @option --subresource <value>                   If specified, gets the subresource of the requested object.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @flag -w --watch                                After listing/getting the requested object, watch for changes.
# @flag --watch-only                              Watch for changes to the requested object(s), without listing/getting first.
# @arg type-name[`_choice_all_type`]
# @arg resource[`_choice_resource`]
get() {
    :;
}
# }} kubectl get

# {{ kubectl edit
# @cmd Edit a resource on the server
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --field-manager <kubectl-edit>          Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files to use to edit the resource
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --output-patch                            Output the patch if the resource is edited.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --subresource <value>                   If specified, edit will operate on the subresource of the requested object.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @flag --windows-line-endings                    Defaults to the line ending native to your platform.
# @arg type-name[`_choice_all_type`]
# @arg resource[`_choice_resource`]
edit() {
    :;
}
# }} kubectl edit

# {{ kubectl delete
# @cmd Delete resources by file names, stdin, resources and names, or by resources and label selector
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Delete all resources, in the namespace of the specified resource types.
# @flag -A --all-namespaces                       If present, list the requested object(s) across all namespaces.
# @option --cascade <background>                  Must be "background", "orphan", or "foreground".
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-selector <value>                Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1,key2=value2).
# @option -f --filename <file>                    containing the resource to delete.
# @flag --force                                   If true, immediately remove resources from API and bypass graceful deletion.
# @option --grace-period <-1>                     Period of time in seconds given to the resource to terminate gracefully.
# @flag --ignore-not-found                        Treat "resource not found" as a successful delete.
# @option -k --kustomize <dir>                    Process a kustomization directory.
# @flag --now                                     If true, resources are signaled for immediate shutdown (same as --grace-period=1).
# @option -o --output <value>                     Output mode.
# @option --raw <value>                           Raw URI to DELETE to the server.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @option --timeout <0s>                          The length of time to wait before giving up on a delete, zero means determine a timeout from the size of the object
# @flag --wait                                    If true, wait for resources to be gone before returning.
# @arg type-name[`_choice_all_type`]
# @arg resource[`_choice_resource`]
delete() {
    :;
}
# }} kubectl delete

# {{ kubectl rollout
# @cmd Manage the rollout of a resource
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
rollout() {
    :;
}

# {{{ kubectl rollout history
# @cmd View rollout history
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to get from a server.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option --revision <0>                          See the details, including podTemplate of the revision specified
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg resource-name[`_choice_resource_type_and_name`]
rollout::history() {
    :;
}
# }}} kubectl rollout history

# {{{ kubectl rollout pause
# @cmd Mark the provided resource as paused
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --field-manager <kubectl-rollout>       Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to get from a server.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg resource-name[`_choice_resource_type_and_name`]
rollout::pause() {
    :;
}
# }}} kubectl rollout pause

# {{{ kubectl rollout restart
# @cmd Restart a resource
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --field-manager <kubectl-rollout>       Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to get from a server.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg resource-name[`_choice_resource_type_and_name`]
rollout::restart() {
    :;
}
# }}} kubectl rollout restart

# {{{ kubectl rollout resume
# @cmd Resume a paused resource
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --field-manager <kubectl-rollout>       Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to get from a server.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg resource-name[`_choice_resource_type_and_name`]
rollout::resume() {
    :;
}
# }}} kubectl rollout resume

# {{{ kubectl rollout status
# @cmd Show the status of the rollout
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to get from a server.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option --revision <0>                          Pin to a specific revision for showing its status.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @option --timeout <0s>                          The length of time to wait before ending watch, zero means never.
# @flag -w --watch                                Watch the status of the rollout until it's done.
# @arg resource-name[`_choice_resource_type_and_name`]
rollout::status() {
    :;
}
# }}} kubectl rollout status

# {{{ kubectl rollout undo
# @cmd Undo a previous rollout
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to get from a server.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --to-revision <0>                       The revision to rollback to.
# @arg resource-name[`_choice_resource_type_and_name`]
rollout::undo() {
    :;
}
# }}} kubectl rollout undo
# }} kubectl rollout

# {{ kubectl scale
# @cmd Set a new size for a deployment, replica set, or replication controller
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all resources in the namespace of the specified resource types
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --current-replicas <-1>                 Precondition for current size.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to set a new size
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option --replicas <0>                          The new desired number of replicas.
# @option --resource-version <value>              Precondition for resource version.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --timeout <0s>                          The length of time to wait before giving up on a scale operation, zero means don't wait.
# @arg resource-name[`_choice_resource_type_and_name`]
scale() {
    :;
}
# }} kubectl scale

# {{ kubectl autoscale
# @cmd Auto-scale a deployment, replica set, stateful set, or replication controller
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --cpu-percent <-1>                      The target average CPU utilization (represented as a percent of requested CPU) over all the pods.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-autoscale>     Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to autoscale.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option --max <-1>                              The upper limit for the number of pods that can be set by the autoscaler.
# @option --min <-1>                              The lower limit for the number of pods that can be set by the autoscaler.
# @option --name <value>                          The name for the newly created object.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg resource-name[`_choice_resource_type_and_name`]
autoscale() {
    :;
}
# }} kubectl autoscale

# {{ kubectl certificate
# @cmd Modify certificate resources
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
certificate() {
    :;
}

# {{{ kubectl certificate approve
# @cmd Approve a certificate signing request
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to update
# @flag --force                                   Update the CSR even if it is already approved.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
certificate::approve() {
    :;
}
# }}} kubectl certificate approve

# {{{ kubectl certificate deny
# @cmd Deny a certificate signing request
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to update
# @flag --force                                   Update the CSR even if it is already denied.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
certificate::deny() {
    :;
}
# }}} kubectl certificate deny
# }} kubectl certificate

# {{ kubectl cluster-info
# @cmd Display cluster information
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
cluster-info() {
    :;
}

# {{{ kubectl cluster-info dump
# @cmd Dump relevant information for debugging and diagnosis
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag -A --all-namespaces                       If true, dump all namespaces.
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --namespaces* <value>                   A comma separated list of namespaces to dump.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <json>  Output format.
# @option --output-directory <value>              Where to output the files.
# @option --pod-running-timeout <20s>             The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
cluster-info::dump() {
    :;
}
# }}} kubectl cluster-info dump
# }} kubectl cluster-info

# {{ kubectl top
# @cmd Display resource (CPU/memory) usage
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
top() {
    :;
}

# {{{ kubectl top node
# @cmd Display resource (CPU/memory) usage of nodes
# @alias nodes,no
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --no-headers                              If present, print output without headers
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-capacity                           Print node resources based on Capacity instead of Allocatable(default) of the nodes.
# @option --sort-by <value>                       If non-empty, sort nodes list using specified field.
# @flag --use-protocol-buffers                    Enables using protocol-buffers to access Metrics API.
# @arg name[`_choice_node`]
top::node() {
    :;
}
# }}} kubectl top node

# {{{ kubectl top pod
# @cmd Display resource (CPU/memory) usage of pods
# @alias pods,po
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag -A --all-namespaces                       If present, list the requested object(s) across all namespaces.
# @flag --containers                              If present, print usage of containers within a pod.
# @option --field-selector <value>                Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1,key2=value2).
# @flag --no-headers                              If present, print output without headers.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @option --sort-by <value>                       If non-empty, sort pods list using specified field.
# @flag --sum                                     Print the sum of the resource usage
# @flag --use-protocol-buffers                    Enables using protocol-buffers to access Metrics API.
# @arg name[`_choice_pod`]
top::pod() {
    :;
}
# }}} kubectl top pod
# }} kubectl top

# {{ kubectl cordon
# @cmd Mark node as unschedulable
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @arg name[`_choice_node`]
cordon() {
    :;
}
# }} kubectl cordon

# {{ kubectl uncordon
# @cmd Mark node as schedulable
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @arg name[`_choice_node`]
uncordon() {
    :;
}
# }} kubectl uncordon

# {{ kubectl drain
# @cmd Drain node in preparation for maintenance
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option --chunk-size <500>                      Return large lists in chunks rather than all at once.
# @flag --delete-emptydir-data                    Continue even if there are pods using emptyDir (local data that will be deleted when the node is drained).
# @flag --disable-eviction                        Force drain to use delete, even if eviction is supported.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @flag --force                                   Continue even if there are pods that do not declare a controller.
# @option --grace-period <-1>                     Period of time in seconds given to each pod to terminate gracefully.
# @flag --ignore-daemonsets                       Ignore DaemonSet-managed pods.
# @option --pod-selector <value>                  Label selector to filter pods on the node
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @option --skip-wait-for-delete-timeout <0>      If pod DeletionTimestamp older than N seconds, skip waiting for the pod.
# @option --timeout <0s>                          The length of time to wait before giving up, zero means infinite
# @arg name[`_choice_node`]
drain() {
    :;
}
# }} kubectl drain

# {{ kubectl taint
# @cmd Update the taints on one or more nodes
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all nodes in the cluster
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-taint>         Name of the manager used to track field ownership.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --overwrite                               If true, allow taints to be overwritten, otherwise reject taint updates that overwrite existing taints.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @arg node[node]
# @arg name[`_choice_node`]
# @arg key-value*
taint() {
    :;
}
# }} kubectl taint

# {{ kubectl describe
# @cmd Show details of a specific resource or group of resources
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag -A --all-namespaces                       If present, list the requested object(s) across all namespaces.
# @option --chunk-size <500>                      Return large lists in chunks rather than all at once.
# @option -f --filename <file>                    Filename, directory, or URL to files containing the resource to describe
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-events                             If true, display events related to the described object.
# @arg type-name[`_choice_all_type`]
# @arg resource[`_choice_resource`]
describe() {
    :;
}
# }} kubectl describe

# {{ kubectl logs
# @cmd Print the logs for a container in a pod
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all-containers                          Get all containers' logs in the pod(s).
# @option -c --container[`_choice_filtered_container`] <value>  Print the logs of this container
# @flag -f --follow                               Specify if the logs should be streamed.
# @flag --ignore-errors                           If watching / following pod logs, allow for any errors that occur to be non-fatal
# @flag --insecure-skip-tls-verify-backend        Skip verifying the identity of the kubelet that logs are requested from.
# @option --limit-bytes <0>                       Maximum bytes of logs to return.
# @option --max-log-requests <5>                  Specify maximum number of concurrent logs to follow when using by a selector.
# @option --pod-running-timeout <20s>             The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running
# @flag --prefix                                  Prefix each log line with the log source (pod name and container name)
# @flag -p --previous                             If true, print the logs for the previous instance of the container in a pod if it exists.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @option --since <0s>                            Only return logs newer than a relative duration like 5s, 2m, or 3h.
# @option --since-time <value>                    Only return logs after a specific date (RFC3339).
# @option --tail <-1>                             Lines of recent log file to display.
# @flag --timestamps                              Include timestamps on each line in the log output
# @arg pod[`_choice_pod`]
logs() {
    :;
}
# }} kubectl logs

# {{ kubectl attach
# @cmd Attach to a running container
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option -c --container[`_choice_filtered_container`] <value>  Container name.
# @option --pod-running-timeout <1m0s>            The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running
# @flag -q --quiet                                Only print output from the remote session
# @flag -i --stdin                                Pass stdin to the container
# @flag -t --tty                                  Stdin is a TTY
# @arg pod[`_choice_pod`]
attach() {
    :;
}
# }} kubectl attach

# {{ kubectl exec
# @cmd Execute a command in a container
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option -c --container[`_choice_filtered_container`] <value>  Container name.
# @option -f --filename <file>                    to use to exec into the resource
# @option --pod-running-timeout <1m0s>            The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running
# @flag -q --quiet                                Only print output from the remote session
# @flag -i --stdin                                Pass stdin to the container
# @flag -t --tty                                  Stdin is a TTY
# @arg pod[`_choice_pod`]
# @arg args*
exec() {
    :;
}
# }} kubectl exec

# {{ kubectl port-forward
# @cmd Forward one or more local ports to a pod
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option --address <localhost>                   Addresses to listen on (comma separated).
# @option --pod-running-timeout <1m0s>            The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running
# @arg pod[`_choice_pod`]
# @arg old-new-port* <old:new-port>
port-forward() {
    :;
}
# }} kubectl port-forward

# {{ kubectl proxy
# @cmd Run a proxy to the Kubernetes API server
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option --accept-hosts <^localhost$,^127.0.0.1$,^[::1]$>  Regular expression for hosts that the proxy should accept.
# @option --accept-paths <^.*>                    Regular expression for paths that the proxy should accept.
# @option --address <127.0.0.1>                   The IP address on which to serve on.
# @option --api-prefix </>                        Prefix to serve the proxied API under.
# @flag --append-server-path                      If true, enables automatic path appending of the kube context server path to each request.
# @flag --disable-filter                          If true, disable request filtering in the proxy.
# @option --keepalive <0s>                        keepalive specifies the keep-alive period for an active network connection.
# @option -p --port <8001>                        The port on which to run the proxy.
# @option --reject-methods <^$>                   Regular expression for HTTP methods that the proxy should reject (example --reject-methods='POST,PUT,PATCH').
# @option --reject-paths <^/api/.*/pods/.*/exec,^/api/.*/pods/.*/attach>  Regular expression for paths that the proxy should reject.
# @option -u --unix-socket <value>                Unix socket on which to run the proxy.
# @option -w --www <value>                        Also serve static files from the given directory under the specified prefix.
# @option -P --www-prefix </static/>              Prefix to serve static files under, if static file directory is specified.
proxy() {
    :;
}
# }} kubectl proxy

# {{ kubectl cp
# @cmd Copy files and directories to and from containers
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option -c --container <value>                  Container name.
# @flag --no-preserve                             The copied file/directory's ownership and permissions will not be preserved in the container
# @option --retries <0>                           Set number of retries to complete a copy operation from a container.
# @arg src[`_choice_cp`]
# @arg desc[`_choice_cp`]
cp() {
    :;
}
# }} kubectl cp

# {{ kubectl auth
# @cmd Inspect authorization
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
auth() {
    :;
}

# {{{ kubectl auth can-i
# @cmd Check whether an action is allowed
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag -A --all-namespaces                       If true, check the specified action in all namespaces.
# @flag --list                                    If true, prints all allowed actions.
# @flag --no-headers                              If true, prints allowed actions without headers
# @flag -q --quiet                                If true, suppress output and just return the exit code.
# @option --subresource <value>                   SubResource such as pod/log or deployment/scale
# @arg verb[`_choice_verb_type`]
# @arg type-name[`_choice_all_type`]
auth::can-i() {
    :;
}
# }}} kubectl auth can-i

# {{{ kubectl auth reconcile
# @cmd Reconciles rules for RBAC role, role binding, cluster role, and cluster role binding objects
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to reconcile.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --remove-extra-permissions                If true, removes extra permissions added to roles
# @flag --remove-extra-subjects                   If true, removes extra subjects added to rolebindings
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg filename
auth::reconcile() {
    :;
}
# }}} kubectl auth reconcile

# {{{ kubectl auth whoami
# @cmd Experimental: Check self subject attributes
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
auth::whoami() {
    :;
}
# }}} kubectl auth whoami
# }} kubectl auth

# {{ kubectl debug
# @cmd Create debugging sessions for troubleshooting workloads and nodes
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --arguments-only                          If specified, everything after -- will be passed to the new container as Args instead of Command.
# @flag --attach                                  If true, wait for the container to start running, and then attach as if 'kubectl attach ...' were called.
# @option -c --container[`_choice_filtered_container`] <value>  Container name to use for debug container.
# @option --copy-to <value>                       Create a copy of the target Pod with this name.
# @option --env* <value>                          Environment variables to set in the container.
# @option -f --filename <file>                    identifying the resource to debug
# @option --image[`_module_oci_docker_image`] <value>  Container image to use for debug container.
# @option --image-pull-policy <value>             The image pull policy for the container.
# @option --profile[legacy|general|baseline|netadmin|restricted] <legacy>  Debugging profile.
# @flag -q --quiet                                If true, suppress informational messages.
# @flag --replace                                 When used with '--copy-to', delete the original Pod.
# @flag --same-node                               When used with '--copy-to', schedule the copy of target Pod on the same node.
# @option --set-image* <value>                    When used with '--copy-to', a list of name=image pairs for changing container images, similar to how 'kubectl set image' works.
# @flag --share-processes                         When used with '--copy-to', enable process namespace sharing in the copy.
# @flag -i --stdin                                Keep stdin open on the container(s) in the pod, even if nothing is attached.
# @option --target <value>                        When using an ephemeral container, target processes in this container name.
# @flag -t --tty                                  Allocate a TTY for the debugging container.
# @arg pod[`_choice_pod`]
# @arg args*
debug() {
    :;
}
# }} kubectl debug

# {{ kubectl events
# @cmd List events
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag -A --all-namespaces                       If present, list the requested object(s) across all namespaces.
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --chunk-size <500>                      Return large lists in chunks rather than all at once.
# @option --for <value>                           Filter events to only those pertaining to the specified resource.
# @flag --no-headers                              When using the default output format, don't print headers.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --types* <value>                        Output only events of given types.
# @flag -w --watch                                After listing the requested events, watch for more events.
events() {
    :;
}
# }} kubectl events

# {{ kubectl diff
# @cmd Diff the live version against a would-be applied version
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option --concurrency <1>                       Number of objects to process in parallel when diffing against the live version.
# @option --field-manager <kubectl-client-side-apply>  Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files contains the configuration to diff
# @flag --force-conflicts                         If true, server-side apply will force the changes against conflicts.
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @flag --prune                                   Include resources that would be deleted by pruning.
# @option --prune-allowlist* <value>              Overwrite the default whitelist with <group/version/kind> for --prune
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --server-side                             If true, apply runs in the server instead of the client.
# @flag --show-managed-fields                     If true, include managed fields in the diff.
# @arg filename
diff() {
    :;
}
# }} kubectl diff

# {{ kubectl apply
# @cmd Apply a configuration to a resource by file name or stdin
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all resources in the namespace of the specified resource types.
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --cascade <background>                  Must be "background", "orphan", or "foreground".
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-client-side-apply>  Name of the manager used to track field ownership.
# @option -f --filename <file>                    The files that contain the configurations to apply.
# @flag --force                                   If true, immediately remove resources from API and bypass graceful deletion.
# @flag --force-conflicts                         If true, server-side apply will force the changes against conflicts.
# @option --grace-period <-1>                     Period of time in seconds given to the resource to terminate gracefully.
# @option -k --kustomize <dir>                    Process a kustomization directory.
# @flag --openapi-patch                           If true, use openapi to calculate diff when the openapi presents and the resource can be found in the openapi spec.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --overwrite                               Automatically resolve conflicts between the modified and live configuration by using values from the modified configuration
# @flag --prune                                   Automatically delete resource objects, that do not appear in the configs and are created by either apply or create --save-config.
# @option --prune-allowlist* <value>              Overwrite the default allowlist with <group/version/kind> for --prune
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --server-side                             If true, apply runs in the server instead of the client.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --timeout <0s>                          The length of time to wait before giving up on a delete, zero means determine a timeout from the size of the object
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @flag --wait                                    If true, wait for resources to be gone before returning.
apply() {
    :;
}

# {{{ kubectl apply edit-last-applied
# @cmd Edit latest last-applied-configuration annotations of a resource/object
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --field-manager <kubectl-client-side-apply>  Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files to use to edit the resource
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @flag --windows-line-endings                    Defaults to the line ending native to your platform.
# @arg resource-name[`_choice_resource_type_and_name`]
apply::edit-last-applied() {
    :;
}
# }}} kubectl apply edit-last-applied

# {{{ kubectl apply set-last-applied
# @cmd Set the last-applied-configuration annotation on a live object to match the contents of a file
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @flag --create-annotation                       Will create 'last-applied-configuration' annotations if current objects doesn't have one
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option -f --filename <file>                    Filename, directory, or URL to files that contains the last-applied-configuration annotations
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
apply::set-last-applied() {
    :;
}
# }}} kubectl apply set-last-applied

# {{{ kubectl apply view-last-applied
# @cmd View the latest last-applied-configuration annotations of a resource/object
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all resources in the namespace of the specified resource types
# @option -f --filename <file>                    Filename, directory, or URL to files that contains the last-applied-configuration annotations
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @option -o --output[yaml|json] <yaml>           Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @arg type-name[`_choice_resource_type_or_resource`]
apply::view-last-applied() {
    :;
}
# }}} kubectl apply view-last-applied
# }} kubectl apply

# {{ kubectl patch
# @cmd Update fields of a resource
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-patch>         Name of the manager used to track field ownership.
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to update
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @flag --local                                   If true, patch will operate on the content of the file, not the server-side resource.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option -p --patch <value>                      The patch to be applied to the resource JSON file.
# @option --patch-file <value>                    A file containing a patch to be applied to the resource.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --subresource <value>                   If specified, patch will operate on the subresource of the requested object.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --type <strategic>                      The type of patch being provided; one of [json merge strategic]
# @arg type-name[`_choice_all_type`]
# @arg resource[`_choice_resource`]
patch() {
    :;
}
# }} kubectl patch

# {{ kubectl replace
# @cmd Replace a resource by file name or stdin
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --cascade <background>                  Must be "background", "orphan", or "foreground".
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-replace>       Name of the manager used to track field ownership.
# @option -f --filename <file>                    The files that contain the configurations to replace.
# @flag --force                                   If true, immediately remove resources from API and bypass graceful deletion.
# @option --grace-period <-1>                     Period of time in seconds given to the resource to terminate gracefully.
# @option -k --kustomize <dir>                    Process a kustomization directory.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @option --raw <value>                           Raw URI to PUT to the server.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @flag --save-config                             If true, the configuration of current object will be saved in its annotation.
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --subresource <value>                   If specified, replace will operate on the subresource of the requested object.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --timeout <0s>                          The length of time to wait before giving up on a delete, zero means determine a timeout from the size of the object
# @option --validate[strict|true|warn|ignore|false] <strict>  Must be one of: strict (or true), warn, ignore (or false).
# @flag --wait                                    If true, wait for resources to be gone before returning.
replace() {
    :;
}
# }} kubectl replace

# {{ kubectl wait
# @cmd Experimental: Wait for a specific condition on one or many resources
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all resources in the namespace of the specified resource types
# @flag -A --all-namespaces                       If present, list the requested object(s) across all namespaces.
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --field-selector <value>                Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1,key2=value2).
# @option -f --filename <file>                    identifying the resource.
# @option --for <value>                           The condition to wait on: [delete|condition=condition-name[=condition-value]|jsonpath='{JSONPath expression}'=[JSONPath value]].
# @flag --local                                   If true, annotation will NOT contact api-server but run locally.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @option --timeout <30s>                         The length of time to wait before giving up.
# @arg type-name[`_choice_common_type`]
# @arg resource[`_choice_resource`]
wait() {
    :;
}
# }} kubectl wait

# {{ kubectl kustomize
# @cmd Build a kustomization target from a directory or URL
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --as-current-user                         use the uid and gid of the command executor to run the function in the container
# @flag --enable-alpha-plugins                    enable kustomize plugins
# @flag --enable-helm                             Enable use of the Helm chart inflator generator.
# @option -e --env* <value>                       a list of environment variables to be used by functions
# @option --helm-command <helm>                   helm command (path to executable)
# @option --load-restrictor <LoadRestrictionsRootOnly>  if set to 'LoadRestrictionsNone', local kustomizations may load files from outside their root.
# @option --mount* <value>                        a list of storage options read from the filesystem
# @flag --network                                 enable network access for functions that declare it
# @option --network-name <bridge>                 the docker network to run the container in
# @option -o --output <value>                     If specified, write output to this path.
# @arg dir
kustomize() {
    :;
}
# }} kubectl kustomize

# {{ kubectl label
# @cmd Update the labels on a resource
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all resources, in the namespace of the specified resource types
# @flag -A --all-namespaces                       If true, check the specified action in all namespaces.
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-label>         Name of the manager used to track field ownership.
# @option --field-selector <value>                Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1,key2=value2).
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to update the labels
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @flag --list                                    If true, display the labels for a given resource.
# @flag --local                                   If true, label will NOT contact api-server but run locally.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --overwrite                               If true, allow labels to be overwritten, otherwise reject label updates that overwrite existing labels.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option --resource-version <value>              If non-empty, the labels update will only succeed if this is the current resource-version for the object.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg type-name[`_choice_all_type`]
# @arg resource[`_choice_resource`]
# @arg key-value*
label() {
    :;
}
# }} kubectl label

# {{ kubectl annotate
# @cmd Update the annotations on a resource
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --all                                     Select all resources, in the namespace of the specified resource types.
# @flag -A --all-namespaces                       If true, check the specified action in all namespaces.
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --dry-run[none|never|silent] <none>     Must be "none", "server", or "client".
# @option --field-manager <kubectl-annotate>      Name of the manager used to track field ownership.
# @option --field-selector <value>                Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1,key2=value2).
# @option -f --filename <file>                    Filename, directory, or URL to files identifying the resource to update the annotation
# @option -k --kustomize <dir>                    Process the kustomization directory.
# @flag --list                                    If true, display the annotations for a given resource.
# @flag --local                                   If true, annotation will NOT contact api-server but run locally.
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <value>  Output format.
# @flag --overwrite                               If true, allow annotations to be overwritten, otherwise reject annotation updates that overwrite existing annotations.
# @flag -R --recursive                            Process the directory used in -f, --filename recursively.
# @option --resource-version <value>              If non-empty, the annotation update will only succeed if this is the current resource-version for the object.
# @option -l --selector <value>                   Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2).
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
# @arg type-name[`_choice_all_type`]
# @arg resource[`_choice_resource`]
# @arg key-value*
annotate() {
    :;
}
# }} kubectl annotate

# {{ kubectl completion
# @cmd Output shell completion code for the specified shell (bash, zsh, fish, or powershell)
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @arg shell[bash|zsh|fish|powershell]
completion() {
    :;
}
# }} kubectl completion

# {{ kubectl api-resources
# @cmd Print the supported API resources on the server
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option --api-group <value>                     Limit to resources in the specified API group.
# @flag --cached                                  Use the cached list of resources if available.
# @option --categories* <value>                   Limit to resources that belong to the specified categories.
# @flag --namespaced                              If false, non-namespaced resources will be returned, otherwise returning namespaced resources by default.
# @flag --no-headers                              When using the default or custom-column output format, don't print headers (default print headers).
# @option -o --output[wide|name] <value>          Output format.
# @option --sort-by <value>                       If non-empty, sort list of resources using specified field.
# @option --verbs* <value>                        Limit to resources that support the specified verbs.
api-resources() {
    :;
}
# }} kubectl api-resources

# {{ kubectl api-versions
# @cmd Print the supported API versions on the server, in the form of "group/version"
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
api-versions() {
    :;
}
# }} kubectl api-versions

# {{ kubectl config
# @cmd Modify kubeconfig files
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
config() {
    :;
}

# {{{ kubectl config current-context
# @cmd Display the current-context
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
config::current-context() {
    :;
}
# }}} kubectl config current-context

# {{{ kubectl config delete-cluster
# @cmd Delete the specified cluster from the kubeconfig
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @arg name[`_choice_cluster`]
config::delete-cluster() {
    :;
}
# }}} kubectl config delete-cluster

# {{{ kubectl config delete-context
# @cmd Delete the specified context from the kubeconfig
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @arg name[`_choice_context`]
config::delete-context() {
    :;
}
# }}} kubectl config delete-context

# {{{ kubectl config delete-user
# @cmd Delete the specified user from the kubeconfig
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @arg name[`_choice_user`]
config::delete-user() {
    :;
}
# }}} kubectl config delete-user

# {{{ kubectl config get-clusters
# @cmd Display clusters defined in the kubeconfig
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
config::get-clusters() {
    :;
}
# }}} kubectl config get-clusters

# {{{ kubectl config get-contexts
# @cmd Describe one or many contexts
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --no-headers                              When using the default or custom-column output format, don't print headers (default print headers).
# @option -o --output <value>                     Output format.
config::get-contexts() {
    :;
}
# }}} kubectl config get-contexts

# {{{ kubectl config get-users
# @cmd Display users defined in the kubeconfig
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
config::get-users() {
    :;
}
# }}} kubectl config get-users

# {{{ kubectl config rename-context
# @cmd Rename a context from the kubeconfig file
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @arg context_name[`_choice_context`]
# @arg new_name
config::rename-context() {
    :;
}
# }}} kubectl config rename-context

# {{{ kubectl config set
# @cmd Set an individual value in a kubeconfig file
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --set-raw-bytes                           When writing a []byte PROPERTY_VALUE, write the given string directly without base64 decoding.
# @arg property_name
# @arg property_value
config::set() {
    :;
}
# }}} kubectl config set

# {{{ kubectl config set-cluster
# @cmd Set a cluster entry in kubeconfig
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --embed-certs                             embed-certs for the cluster entry in kubeconfig
# @option --proxy-url <value>                     proxy-url for the cluster entry in kubeconfig
# @arg name[`_choice_cluster`]
config::set-cluster() {
    :;
}
# }}} kubectl config set-cluster

# {{{ kubectl config set-context
# @cmd Set a context entry in kubeconfig
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --current                                 Modify the current context
# @arg name[`_choice_context`]
config::set-context() {
    :;
}
# }}} kubectl config set-context

# {{{ kubectl config set-credentials
# @cmd Set a user entry in kubeconfig
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @option --auth-provider <value>                 Auth provider for the user entry in kubeconfig
# @option --auth-provider-arg* <value>            'key=value' arguments for the auth provider
# @flag --embed-certs                             Embed client cert/key for the user entry in kubeconfig
# @option --exec-api-version <value>              API version of the exec credential plugin for the user entry in kubeconfig
# @option --exec-arg* <value>                     New arguments for the exec credential plugin command for the user entry in kubeconfig
# @option --exec-command <value>                  Command for the exec credential plugin for the user entry in kubeconfig
# @option --exec-env* <value>                     'key=value' environment values for the exec credential plugin
# @option --password <value>                      password for the user entry in kubeconfig
# @option --token <value>                         token for the user entry in kubeconfig
# @option --username <value>                      username for the user entry in kubeconfig
# @arg name
config::set-credentials() {
    :;
}
# }}} kubectl config set-credentials

# {{{ kubectl config unset
# @cmd Unset an individual value in a kubeconfig file
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @arg property_name
config::unset() {
    :;
}
# }}} kubectl config unset

# {{{ kubectl config use-context
# @cmd Set the current-context in a kubeconfig file
# @alias use
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @arg context_name[`_choice_context`]
config::use-context() {
    :;
}
# }}} kubectl config use-context

# {{{ kubectl config view
# @cmd Display merged kubeconfig settings or a specified kubeconfig file
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --allow-missing-template-keys             If true, ignore any errors in templates when a field or map key is missing in the template.
# @flag --flatten                                 Flatten the resulting kubeconfig file into self-contained output (useful for creating portable kubeconfig files)
# @flag --merge                                   Merge the full hierarchy of kubeconfig files
# @flag --minify                                  Remove all information not used by current-context from the output
# @option -o --output[json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] <yaml>  Output format.
# @flag --raw                                     Display raw byte data and sensitive data
# @flag --show-managed-fields                     If true, keep the managedFields when printing objects in JSON or YAML format.
# @option --template <file>                       Template string or path to template file to use when -o=go-template, -o=go-template-file.
config::view() {
    :;
}
# }}} kubectl config view
# }} kubectl config

# {{ kubectl plugin
# @cmd Provides utilities for interacting with plugins
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
plugin() {
    :;
}

# {{{ kubectl plugin list
# @cmd List all visible plugin executables on a user's PATH
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --name-only                               If true, display only the binary name of each plugin, rather than its full path
plugin::list() {
    :;
}
# }}} kubectl plugin list
# }} kubectl plugin

# {{ kubectl version
# @cmd Print the client and server version information
# @option --as <value>                            Username to impersonate for the operation.
# @option --as-group* <value>                     Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
# @option --as-uid <value>                        UID to impersonate for the operation.
# @option --cache-dir <dir>                       Default cache directory
# @option --certificate-authority <path>          Path to a cert file for the certificate authority
# @option --client-certificate <path>             Path to a client certificate file for TLS
# @option --client-key <path>                     Path to a client key file for TLS
# @option --cluster[`_choice_cluster`] <value>    The name of the kubeconfig cluster to use
# @option --context[`_choice_context`] <value>    The name of the kubeconfig context to use
# @flag --disable-compression                     If true, opt-out of response compression for all requests to the server
# @flag --insecure-skip-tls-verify                If true, the server's certificate will not be checked for validity.
# @option --kubeconfig <path>                     Path to the kubeconfig file to use for CLI requests.
# @option --log-flush-frequency <5s>              Maximum number of seconds between log flushes
# @flag --match-server-version                    Require server version to match client version
# @option -n --namespace[`_choice_namespace`] <value>  If present, the namespace scope for this CLI request
# @option --password <value>                      Password for basic authentication to the API server
# @option --profile <none>                        Name of profile to capture.
# @option --profile-output <profile.pprof>        Name of the file to write the profile to
# @option --request-timeout <0>                   The length of time to wait before giving up on a single server request.
# @option -s --server <value>                     The address and port of the Kubernetes API server
# @option --tls-server-name <value>               Server name to use for server certificate validation.
# @option --token <value>                         Bearer token for authentication to the API server
# @option --user[`_choice_user`] <value>          The name of the kubeconfig user to use
# @option --username <value>                      Username for basic authentication to the API server
# @option -v --v <0>                              number for the log level verbosity
# @option --vmodule*, <value>                     comma-separated list of pattern=N settings for file-filtered logging (only works for the default text log format)
# @flag --warnings-as-errors                      Treat warnings received from the server as errors and exit with a non-zero exit code
# @flag --client                                  If true, shows client version only (no server required).
# @option -o --output <value>                     One of 'yaml' or 'json'.
version() {
    :;
}
# }} kubectl version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_cluster() {
    kubectl config get-clusters | tail -n +2
}

_choice_context() {
    kubectl config get-contexts -o name
}

_choice_namespace() {
    kubectl get namespaces | tail -n +2 | gawk '{print $1}'
}

_choice_user() {
    kubectl config get-users | tail -n +2
}

_choice_verb_type() {
    printf "%s\n" get list create update patch watch delete deletecollection
}

_choice_args() {
    _argc_util_comp_subcommand 1
}

_choice_clusterrole() {
    kubectl get clusterrole | tail -n +2 | gawk '{print $1'}
}

_choice_serviceaccount() {
    kubectl get serviceaccounts | tail -n +2 |  gawk '{print $1'}
}

_choice_common_type() {
    printf "%s\n" pod service replicationcontroller deployment replicaset
}

_choice_resource() {
    if [[ -n "${argc__positionals[0]}" ]]; then
        _helper_find_resource_by_type "${argc__positionals[0]}"
    fi
}

_choice_resource_type_and_name() {
    _argc_util_mode_kv /
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_all_type | _argc_util_transform suffix=/ nospace
    else
        _helper_find_resource_by_type $argc__kv_key
    fi
}

_choice_resource_type_or_resource() {
    _argc_util_mode_kv /
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_all_type | _argc_util_transform nospace
    else
        _helper_find_resource_by_type $argc__kv_key
    fi
}

_choice_container_image() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_container | _argc_util_transform suffix== nospace
    else
        _module_oci_docker_image
    fi
}

_choice_all_type() {
    kubectl api-resources --output=name --cached | gawk -F. '{print $1}'
}

_choice_node() {
    _helper_find_resource_by_type nodes
}

_choice_pod() {
    _helper_find_resource_by_type pods
}

_choice_filtered_container() {
    if [[ "${argc__positionals[0]}" != *"/"* ]]; then
        _kubectl get pods "${argc__positionals[0]}"  -o jsonpath='{.spec.containers[*].name}'
    fi
}

_choice_cp() {
    _complete_container_path() {
        _argc_util_mode_kv ':'
        if [[ -z "$argc__kv_prefix" ]]; then
            if _argc_util_has_path_prefix; then
                echo "__argc_value=path"
                return
            fi
            _choice_pod | _argc_util_transform suffix=: nospace
        else
            _argc_util_mode_parts '/' "$argc__kv_filter" "$argc__kv_prefix"
            if [[ -z "$argc__kv_filter" ]]; then
                echo -e "/\0"
                return
            fi
            _kubectl exec "${argc__kv_key}" -- ls -1p "$argc__parts_local_prefix" | _argc_util_transform nospaceIfEnd=/
        fi
    }
    if [[ ${#argc__positionals[@]} -eq 1 ]]; then
        _complete_container_path
    else
        if [[ "${argc__positionals[0]}" == *':'* ]]; then
            echo "__argc_value=path"
        else
            _complete_container_path
        fi
    fi
}

_choice_container() {
    _kubectl get pods -o go-template --template="$(echo -e "{{range .items}}{{range .spec.containers}}{{.name}}\t{{.image}}\n{{end}}{{end}}")"
}

_helper_find_resource_by_type() {
    _kubectl get $1 -o go-template --template="$(echo -e "{{range .items}}{{.metadata.name}}\t{{.kind}}\n{{end}}")" 
}

_kubectl() {
    kubectl $(_argc_util_param_select_options --namespace) "$@"
}

_module_oci_docker_image() {
    docker image ls --format '{{.Repository}}={{.Tag}}' | _argc_util_comp_kv :
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"