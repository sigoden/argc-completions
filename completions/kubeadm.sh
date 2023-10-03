#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @flag -h --help                       help for kubeadm
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity

# {{ kubeadm certs
# @cmd Commands related to handling kubernetes certificates
# @flag -h --help                       help for certs
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs() {
    :;
}

# {{{ kubeadm certs certificate-key
# @cmd Generate certificate keys
# @flag -h --help                       help for certificate-key
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::certificate-key() {
    :;
}
# }}} kubeadm certs certificate-key

# {{{ kubeadm certs check-expiration
# @cmd Check certificates expiration for a Kubernetes cluster
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for check-expiration
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::check-expiration() {
    :;
}
# }}} kubeadm certs check-expiration

# {{{ kubeadm certs generate-csr
# @cmd Generate keys and certificate signing requests
# @option --cert-dir <dir>              The path where to save the certificates
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for generate-csr
# @option --kubeconfig-dir <path>       The path where to save the kubeconfig file.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::generate-csr() {
    :;
}
# }}} kubeadm certs generate-csr

# {{{ kubeadm certs renew
# @cmd Renew certificates for a Kubernetes cluster
# @flag -h --help                       help for renew
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew() {
    :;
}

# {{{{ kubeadm certs renew admin.conf
# @cmd Renew the certificate embedded in the kubeconfig file for the admin to use and for kubeadm itself
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for admin.conf
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew::admin.conf() {
    :;
}
# }}}} kubeadm certs renew admin.conf

# {{{{ kubeadm certs renew all
# @cmd Renew all available certificates
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for all
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew::all() {
    :;
}
# }}}} kubeadm certs renew all

# {{{{ kubeadm certs renew apiserver
# @cmd Renew the certificate for serving the Kubernetes API
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for apiserver
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew::apiserver() {
    :;
}
# }}}} kubeadm certs renew apiserver

# {{{{ kubeadm certs renew apiserver-etcd-client
# @cmd Renew the certificate the apiserver uses to access etcd
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for apiserver-etcd-client
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew::apiserver-etcd-client() {
    :;
}
# }}}} kubeadm certs renew apiserver-etcd-client

# {{{{ kubeadm certs renew apiserver-kubelet-client
# @cmd Renew the certificate for the API server to connect to kubelet
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for apiserver-kubelet-client
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew::apiserver-kubelet-client() {
    :;
}
# }}}} kubeadm certs renew apiserver-kubelet-client

# {{{{ kubeadm certs renew controller-manager.conf
# @cmd Renew the certificate embedded in the kubeconfig file for the controller manager to use
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for controller-manager.conf
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew::controller-manager.conf() {
    :;
}
# }}}} kubeadm certs renew controller-manager.conf

# {{{{ kubeadm certs renew etcd-healthcheck-client
# @cmd Renew the certificate for liveness probes to healthcheck etcd
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for etcd-healthcheck-client
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew::etcd-healthcheck-client() {
    :;
}
# }}}} kubeadm certs renew etcd-healthcheck-client

# {{{{ kubeadm certs renew etcd-peer
# @cmd Renew the certificate for etcd nodes to communicate with each other
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for etcd-peer
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew::etcd-peer() {
    :;
}
# }}}} kubeadm certs renew etcd-peer

# {{{{ kubeadm certs renew etcd-server
# @cmd Renew the certificate for serving etcd
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for etcd-server
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew::etcd-server() {
    :;
}
# }}}} kubeadm certs renew etcd-server

# {{{{ kubeadm certs renew front-proxy-client
# @cmd Renew the certificate for the front proxy client
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for front-proxy-client
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew::front-proxy-client() {
    :;
}
# }}}} kubeadm certs renew front-proxy-client

# {{{{ kubeadm certs renew scheduler.conf
# @cmd Renew the certificate embedded in the kubeconfig file for the scheduler manager to use
# @option --cert-dir <dir>              The path where to save the certificates (default "/etc/kubernetes/pki")
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for scheduler.conf
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
certs::renew::scheduler.conf() {
    :;
}
# }}}} kubeadm certs renew scheduler.conf
# }}} kubeadm certs renew
# }} kubeadm certs

# {{ kubeadm completion
# @cmd Output shell completion code for the specified shell (bash or zsh)
# @flag -h --help                       help for completion
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
# @arg shell
completion() {
    :;
}
# }} kubeadm completion

# {{ kubeadm config
# @cmd Manage configuration for a kubeadm cluster persisted in a ConfigMap in the cluster
# @flag -h --help                       help for config
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
config() {
    :;
}

# {{{ kubeadm config images
# @cmd Interact with container images used by kubeadm
# @flag -h --help                       help for images
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
config::images() {
    :;
}

# {{{{ kubeadm config images list
# @cmd Print a list of images kubeadm will use.
# @flag --allow-missing-template-keys          If true, ignore any errors in templates when a field or map key is missing in the template.
# @option --config <file>                      Path to a kubeadm configuration file.
# @option -o --experimental-output <string>    Output format.
# @option --feature-gates <string>             A set of key=value pairs that describe feature gates for various features.
# @flag -h --help                              help for list
# @option --image-repository <string>          Choose a container registry to pull control plane images from (default "registry.k8s.io")
# @option --kubernetes-version <string>        Choose a specific Kubernetes version for the control plane.
# @flag --show-managed-fields                  If true, keep the managedFields when printing objects in JSON or YAML format.
# @flag --add-dir-header                       If true, adds the file directory to the header of the log messages
# @option --kubeconfig <file>                  The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>                    If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>           Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                           If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                      [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                         If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                     If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                       number for the log level verbosity
config::images::list() {
    :;
}
# }}}} kubeadm config images list

# {{{{ kubeadm config images pull
# @cmd Pull images used by kubeadm
# @option --config <file>                  Path to a kubeadm configuration file.
# @option --cri-socket <path>              Path to the CRI socket to connect.
# @option --feature-gates <string>         A set of key=value pairs that describe feature gates for various features.
# @flag -h --help                          help for pull
# @option --image-repository <string>      Choose a container registry to pull control plane images from (default "registry.k8s.io")
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --kubeconfig <file>              The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
config::images::pull() {
    :;
}
# }}}} kubeadm config images pull
# }}} kubeadm config images

# {{{ kubeadm config migrate
# @cmd Read an older version of the kubeadm configuration API types from a file, and output the similar config object for the newer version
# @flag --allow-experimental-api        Allow migration to experimental, unreleased APIs.
# @flag -h --help                       help for migrate
# @option --new-config <file>           Path to the resulting equivalent kubeadm config file using the new API version.
# @option --old-config <file>           Path to the kubeadm config file that is using an old API version and should be converted.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
config::migrate() {
    :;
}
# }}} kubeadm config migrate

# {{{ kubeadm config print
# @cmd Print configuration
# @flag -h --help                       help for print
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
config::print() {
    :;
}

# {{{{ kubeadm config print init-defaults
# @cmd Print default init configuration, that can be used for 'kubeadm init'
# @option --component-configs* <string>    A comma-separated list for component config API objects to print the default values for.
# @flag -h --help                          help for init-defaults
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --kubeconfig <file>              The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
config::print::init-defaults() {
    :;
}
# }}}} kubeadm config print init-defaults

# {{{{ kubeadm config print join-defaults
# @cmd Print default join configuration, that can be used for 'kubeadm join'
# @option --component-configs* <string>    A comma-separated list for component config API objects to print the default values for.
# @flag -h --help                          help for join-defaults
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --kubeconfig <file>              The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
config::print::join-defaults() {
    :;
}
# }}}} kubeadm config print join-defaults

# {{{{ kubeadm config print reset-defaults
# @cmd Print default reset configuration, that can be used for 'kubeadm reset'
# @option --component-configs* <string>    A comma-separated list for component config API objects to print the default values for.
# @flag -h --help                          help for reset-defaults
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --kubeconfig <file>              The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
config::print::reset-defaults() {
    :;
}
# }}}} kubeadm config print reset-defaults
# }}} kubeadm config print

# {{{ kubeadm config validate
# @cmd Read a file containing the kubeadm configuration API and report any validation problems
# @flag --allow-experimental-api        Allow validation of experimental, unreleased APIs.
# @option --config <file>               Path to a kubeadm configuration file.
# @flag -h --help                       help for validate
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
config::validate() {
    :;
}
# }}} kubeadm config validate
# }} kubeadm config

# {{ kubeadm init
# @cmd Run this command in order to set up the Kubernetes control plane
# @option --apiserver-advertise-address <string>   The IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>            Port for the API Server to bind to.
# @option --apiserver-cert-extra-sans* <string>    Optional extra Subject Alternative Names (SANs) to use for the API Server serving certificate.
# @option --cert-dir <dir>                         The path where to save and store the certificates.
# @option --certificate-key <string>               Key used to encrypt the control-plane certificates in the kubeadm-certs Secret.
# @option --config <file>                          Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>        Specify a stable IP address or DNS name for the control plane.
# @option --cri-socket <path>                      Path to the CRI socket to connect.
# @flag --dry-run                                  Don't apply any changes; just output what would be done.
# @option --feature-gates <string>                 A set of key=value pairs that describe feature gates for various features.
# @flag -h --help                                  help for init
# @option --ignore-preflight-errors*,[`_choice_preflight_error`] <string>  A list of checks whose errors will be shown as warnings.
# @option --image-repository <string>              Choose a container registry to pull control plane images from (default "registry.k8s.io")
# @option --kubernetes-version <string>            Choose a specific Kubernetes version for the control plane.
# @option --node-name <string>                     Specify the node name.
# @option --patches <path>                         Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @option --pod-network-cidr <string>              Specify range of IP addresses for the pod network.
# @option --service-cidr <string>                  Use alternative range of IP address for service VIPs.
# @option --service-dns-domain <string>            Use alternative domain for services, e.g. "myorg.internal".
# @flag --skip-certificate-key-print               Don't print the key used to encrypt the control-plane certificates.
# @option --skip-phases*,[`_choice_phase`] <string>  List of phases to be skipped
# @flag --skip-token-print                         Skip printing of the default bootstrap token generated by 'kubeadm init'.
# @option --token <dir>                            The token to use for establishing bidirectional trust between nodes and control-plane nodes.
# @option --token-ttl <duration>                   The duration before the token is automatically deleted (e.g. 1s, 2m, 3h).
# @flag --upload-certs                             Upload control-plane certificates to the kubeadm-certs Secret.
# @flag --add-dir-header                           If true, adds the file directory to the header of the log messages
# @option --log-file <file>                        If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>               Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                               If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                          [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                             If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                         If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                           number for the log level verbosity
init() {
    :;
}

# {{{ kubeadm init phase
# @cmd Use this command to invoke single phase of the init workflow
# @flag -h --help                       help for phase
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase() {
    :;
}

# {{{{ kubeadm init phase addon
# @cmd Install required addons for passing conformance tests
# @flag -h --help                       help for addon
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::addon() {
    :;
}

# {{{{{ kubeadm init phase addon all
# @cmd Install all the addons
# @option --apiserver-advertise-address <string>  The IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>        Port for the API Server to bind to.
# @option --config <file>                      Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>    Specify a stable IP address or DNS name for the control plane.
# @flag --dry-run                              Don't apply any changes; just output what would be done.
# @option --feature-gates <string>             A set of key=value pairs that describe feature gates for various features.
# @flag -h --help                              help for all
# @option --image-repository <string>          Choose a container registry to pull control plane images from (default "registry.k8s.io")
# @option --kubeconfig <file>                  The kubeconfig file to use when talking to the cluster.
# @option --kubernetes-version <string>        Choose a specific Kubernetes version for the control plane.
# @option --pod-network-cidr <string>          Specify range of IP addresses for the pod network.
# @option --service-cidr <string>              Use alternative range of IP address for service VIPs.
# @option --service-dns-domain <string>        Use alternative domain for services, e.g. "myorg.internal".
# @flag --add-dir-header                       If true, adds the file directory to the header of the log messages
# @option --log-file <file>                    If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>           Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                           If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                      [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                         If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                     If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                       number for the log level verbosity
init::phase::addon::all() {
    :;
}
# }}}}} kubeadm init phase addon all

# {{{{{ kubeadm init phase addon coredns
# @cmd Install the CoreDNS addon to a Kubernetes cluster
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @option --feature-gates <string>         A set of key=value pairs that describe feature gates for various features.
# @flag -h --help                          help for coredns
# @option --image-repository <string>      Choose a container registry to pull control plane images from (default "registry.k8s.io")
# @option --kubeconfig <file>              The kubeconfig file to use when talking to the cluster.
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @flag --print-manifest                   Print the addon manifests to STDOUT instead of installing them
# @option --service-cidr <string>          Use alternative range of IP address for service VIPs.
# @option --service-dns-domain <string>    Use alternative domain for services, e.g. "myorg.internal".
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::addon::coredns() {
    :;
}
# }}}}} kubeadm init phase addon coredns

# {{{{{ kubeadm init phase addon kube-proxy
# @cmd Install the kube-proxy addon to a Kubernetes cluster
# @option --apiserver-advertise-address <string>  The IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>        Port for the API Server to bind to.
# @option --config <file>                      Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>    Specify a stable IP address or DNS name for the control plane.
# @flag --dry-run                              Don't apply any changes; just output what would be done.
# @flag -h --help                              help for kube-proxy
# @option --image-repository <string>          Choose a container registry to pull control plane images from (default "registry.k8s.io")
# @option --kubeconfig <file>                  The kubeconfig file to use when talking to the cluster.
# @option --kubernetes-version <string>        Choose a specific Kubernetes version for the control plane.
# @option --pod-network-cidr <string>          Specify range of IP addresses for the pod network.
# @flag --print-manifest                       Print the addon manifests to STDOUT instead of installing them
# @flag --add-dir-header                       If true, adds the file directory to the header of the log messages
# @option --log-file <file>                    If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>           Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                           If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                      [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                         If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                     If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                       number for the log level verbosity
init::phase::addon::kube-proxy() {
    :;
}
# }}}}} kubeadm init phase addon kube-proxy
# }}}} kubeadm init phase addon

# {{{{ kubeadm init phase bootstrap-token
# @cmd Generates bootstrap tokens used to join a node to a cluster
# @option --config <file>               Path to a kubeadm configuration file.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for bootstrap-token
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --skip-token-print              Skip printing of the default bootstrap token generated by 'kubeadm init'.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::bootstrap-token() {
    :;
}
# }}}} kubeadm init phase bootstrap-token

# {{{{ kubeadm init phase certs
# @cmd Certificate generation
# @flag -h --help                       help for certs
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::certs() {
    :;
}

# {{{{{ kubeadm init phase certs all
# @cmd Generate all certificates
# @option --apiserver-advertise-address <string>   The IP address the API Server will advertise it's listening on.
# @option --apiserver-cert-extra-sans* <string>    Optional extra Subject Alternative Names (SANs) to use for the API Server serving certificate.
# @option --cert-dir <dir>                         The path where to save and store the certificates.
# @option --config <file>                          Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>        Specify a stable IP address or DNS name for the control plane.
# @flag --dry-run                                  Don't apply any changes; just output what would be done.
# @flag -h --help                                  help for all
# @option --kubernetes-version <string>            Choose a specific Kubernetes version for the control plane.
# @option --service-cidr <string>                  Use alternative range of IP address for service VIPs.
# @option --service-dns-domain <string>            Use alternative domain for services, e.g. "myorg.internal".
# @flag --add-dir-header                           If true, adds the file directory to the header of the log messages
# @option --log-file <file>                        If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>               Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                               If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                          [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                             If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                         If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                           number for the log level verbosity
init::phase::certs::all() {
    :;
}
# }}}}} kubeadm init phase certs all

# {{{{{ kubeadm init phase certs apiserver
# @cmd Generate the certificate for serving the Kubernetes API
# @option --apiserver-advertise-address <string>   The IP address the API Server will advertise it's listening on.
# @option --apiserver-cert-extra-sans* <string>    Optional extra Subject Alternative Names (SANs) to use for the API Server serving certificate.
# @option --cert-dir <dir>                         The path where to save and store the certificates.
# @option --config <file>                          Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>        Specify a stable IP address or DNS name for the control plane.
# @flag --dry-run                                  Don't apply any changes; just output what would be done.
# @flag -h --help                                  help for apiserver
# @option --kubernetes-version <string>            Choose a specific Kubernetes version for the control plane.
# @option --service-cidr <string>                  Use alternative range of IP address for service VIPs.
# @option --service-dns-domain <string>            Use alternative domain for services, e.g. "myorg.internal".
# @flag --add-dir-header                           If true, adds the file directory to the header of the log messages
# @option --log-file <file>                        If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>               Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                               If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                          [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                             If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                         If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                           number for the log level verbosity
init::phase::certs::apiserver() {
    :;
}
# }}}}} kubeadm init phase certs apiserver

# {{{{{ kubeadm init phase certs apiserver-etcd-client
# @cmd Generate the certificate the apiserver uses to access etcd
# @option --cert-dir <dir>                 The path where to save and store the certificates.
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for apiserver-etcd-client
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::certs::apiserver-etcd-client() {
    :;
}
# }}}}} kubeadm init phase certs apiserver-etcd-client

# {{{{{ kubeadm init phase certs apiserver-kubelet-client
# @cmd Generate the certificate for the API server to connect to kubelet
# @option --cert-dir <dir>                 The path where to save and store the certificates.
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for apiserver-kubelet-client
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::certs::apiserver-kubelet-client() {
    :;
}
# }}}}} kubeadm init phase certs apiserver-kubelet-client

# {{{{{ kubeadm init phase certs ca
# @cmd Generate the self-signed Kubernetes CA to provision identities for other Kubernetes components
# @option --cert-dir <dir>                 The path where to save and store the certificates.
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for ca
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::certs::ca() {
    :;
}
# }}}}} kubeadm init phase certs ca

# {{{{{ kubeadm init phase certs etcd-ca
# @cmd Generate the self-signed CA to provision identities for etcd
# @option --cert-dir <dir>                 The path where to save and store the certificates.
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for etcd-ca
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::certs::etcd-ca() {
    :;
}
# }}}}} kubeadm init phase certs etcd-ca

# {{{{{ kubeadm init phase certs etcd-healthcheck-client
# @cmd Generate the certificate for liveness probes to healthcheck etcd
# @option --cert-dir <dir>                 The path where to save and store the certificates.
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for etcd-healthcheck-client
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::certs::etcd-healthcheck-client() {
    :;
}
# }}}}} kubeadm init phase certs etcd-healthcheck-client

# {{{{{ kubeadm init phase certs etcd-peer
# @cmd Generate the certificate for etcd nodes to communicate with each other
# @option --cert-dir <dir>                 The path where to save and store the certificates.
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for etcd-peer
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::certs::etcd-peer() {
    :;
}
# }}}}} kubeadm init phase certs etcd-peer

# {{{{{ kubeadm init phase certs etcd-server
# @cmd Generate the certificate for serving etcd
# @option --cert-dir <dir>                 The path where to save and store the certificates.
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for etcd-server
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::certs::etcd-server() {
    :;
}
# }}}}} kubeadm init phase certs etcd-server

# {{{{{ kubeadm init phase certs front-proxy-ca
# @cmd Generate the self-signed CA to provision identities for front proxy
# @option --cert-dir <dir>                 The path where to save and store the certificates.
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for front-proxy-ca
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::certs::front-proxy-ca() {
    :;
}
# }}}}} kubeadm init phase certs front-proxy-ca

# {{{{{ kubeadm init phase certs front-proxy-client
# @cmd Generate the certificate for the front proxy client
# @option --cert-dir <dir>                 The path where to save and store the certificates.
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for front-proxy-client
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::certs::front-proxy-client() {
    :;
}
# }}}}} kubeadm init phase certs front-proxy-client

# {{{{{ kubeadm init phase certs sa
# @cmd Generate a private key for signing service account tokens along with its public key
# @option --cert-dir <dir>              The path where to save and store the certificates.
# @flag -h --help                       help for sa
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::certs::sa() {
    :;
}
# }}}}} kubeadm init phase certs sa
# }}}} kubeadm init phase certs

# {{{{ kubeadm init phase control-plane
# @cmd Generate all static Pod manifest files necessary to establish the control plane
# @flag -h --help                       help for control-plane
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::control-plane() {
    :;
}

# {{{{{ kubeadm init phase control-plane all
# @cmd Generate all static Pod manifest files
# @option --apiserver-advertise-address <string>  The IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>        Port for the API Server to bind to.
# @option --apiserver-extra-args <mapStringString>  A set of extra flags to pass to the API Server or override default ones in form of <flagname>=<value>
# @option --cert-dir <dir>                     The path where to save and store the certificates.
# @option --config <file>                      Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>    Specify a stable IP address or DNS name for the control plane.
# @option --controller-manager-extra-args <mapStringString>  A set of extra flags to pass to the Controller Manager or override default ones in form of <flagname>=<value>
# @flag --dry-run                              Don't apply any changes; just output what would be done.
# @option --feature-gates <string>             A set of key=value pairs that describe feature gates for various features.
# @flag -h --help                              help for all
# @option --image-repository <string>          Choose a container registry to pull control plane images from (default "registry.k8s.io")
# @option --kubernetes-version <string>        Choose a specific Kubernetes version for the control plane.
# @option --patches <path>                     Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @option --pod-network-cidr <string>          Specify range of IP addresses for the pod network.
# @option --scheduler-extra-args <mapStringString>  A set of extra flags to pass to the Scheduler or override default ones in form of <flagname>=<value>
# @option --service-cidr <string>              Use alternative range of IP address for service VIPs.
# @flag --add-dir-header                       If true, adds the file directory to the header of the log messages
# @option --log-file <file>                    If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>           Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                           If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                      [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                         If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                     If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                       number for the log level verbosity
init::phase::control-plane::all() {
    :;
}
# }}}}} kubeadm init phase control-plane all

# {{{{{ kubeadm init phase control-plane apiserver
# @cmd Generates the kube-apiserver static Pod manifest
# @option --apiserver-advertise-address <string>  The IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>        Port for the API Server to bind to.
# @option --apiserver-extra-args <mapStringString>  A set of extra flags to pass to the API Server or override default ones in form of <flagname>=<value>
# @option --cert-dir <dir>                     The path where to save and store the certificates.
# @option --config <file>                      Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>    Specify a stable IP address or DNS name for the control plane.
# @flag --dry-run                              Don't apply any changes; just output what would be done.
# @option --feature-gates <string>             A set of key=value pairs that describe feature gates for various features.
# @flag -h --help                              help for apiserver
# @option --image-repository <string>          Choose a container registry to pull control plane images from (default "registry.k8s.io")
# @option --kubernetes-version <string>        Choose a specific Kubernetes version for the control plane.
# @option --patches <path>                     Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @option --service-cidr <string>              Use alternative range of IP address for service VIPs.
# @flag --add-dir-header                       If true, adds the file directory to the header of the log messages
# @option --log-file <file>                    If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>           Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                           If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                      [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                         If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                     If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                       number for the log level verbosity
init::phase::control-plane::apiserver() {
    :;
}
# }}}}} kubeadm init phase control-plane apiserver

# {{{{{ kubeadm init phase control-plane controller-manager
# @cmd Generates the kube-controller-manager static Pod manifest
# @option --cert-dir <dir>                 The path where to save and store the certificates.
# @option --config <file>                  Path to a kubeadm configuration file.
# @option --controller-manager-extra-args <mapStringString>  A set of extra flags to pass to the Controller Manager or override default ones in form of <flagname>=<value>
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for controller-manager
# @option --image-repository <string>      Choose a container registry to pull control plane images from (default "registry.k8s.io")
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @option --patches <path>                 Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @option --pod-network-cidr <string>      Specify range of IP addresses for the pod network.
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::control-plane::controller-manager() {
    :;
}
# }}}}} kubeadm init phase control-plane controller-manager

# {{{{{ kubeadm init phase control-plane scheduler
# @cmd Generates the kube-scheduler static Pod manifest
# @option --cert-dir <dir>                 The path where to save and store the certificates.
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for scheduler
# @option --image-repository <string>      Choose a container registry to pull control plane images from (default "registry.k8s.io")
# @option --kubernetes-version <string>    Choose a specific Kubernetes version for the control plane.
# @option --patches <path>                 Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @option --scheduler-extra-args <mapStringString>  A set of extra flags to pass to the Scheduler or override default ones in form of <flagname>=<value>
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
init::phase::control-plane::scheduler() {
    :;
}
# }}}}} kubeadm init phase control-plane scheduler
# }}}} kubeadm init phase control-plane

# {{{{ kubeadm init phase etcd
# @cmd Generate static Pod manifest file for local etcd
# @flag -h --help                       help for etcd
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::etcd() {
    :;
}

# {{{{{ kubeadm init phase etcd local
# @cmd Generate the static Pod manifest file for a local, single-node local etcd instance
# @option --cert-dir <dir>               The path where to save and store the certificates.
# @option --config <file>                Path to a kubeadm configuration file.
# @flag --dry-run                        Don't apply any changes; just output what would be done.
# @flag -h --help                        help for local
# @option --image-repository <string>    Choose a container registry to pull control plane images from (default "registry.k8s.io")
# @option --patches <path>               Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @flag --add-dir-header                 If true, adds the file directory to the header of the log messages
# @option --log-file <file>              If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>     Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                     If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                   If true, avoid header prefixes in the log messages
# @flag --skip-log-headers               If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                 number for the log level verbosity
init::phase::etcd::local() {
    :;
}
# }}}}} kubeadm init phase etcd local
# }}}} kubeadm init phase etcd

# {{{{ kubeadm init phase kubeconfig
# @cmd Generate all kubeconfig files necessary to establish the control plane and the admin kubeconfig file
# @flag -h --help                       help for kubeconfig
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::kubeconfig() {
    :;
}

# {{{{{ kubeadm init phase kubeconfig admin
# @cmd Generate a kubeconfig file for the admin to use and for kubeadm itself
# @option --apiserver-advertise-address <string>  The IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>        Port for the API Server to bind to.
# @option --cert-dir <dir>                     The path where to save and store the certificates.
# @option --config <file>                      Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>    Specify a stable IP address or DNS name for the control plane.
# @flag --dry-run                              Don't apply any changes; just output what would be done.
# @flag -h --help                              help for admin
# @option --kubeconfig-dir <path>              The path where to save the kubeconfig file.
# @option --kubernetes-version <string>        Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                       If true, adds the file directory to the header of the log messages
# @option --log-file <file>                    If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>           Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                           If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                      [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                         If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                     If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                       number for the log level verbosity
init::phase::kubeconfig::admin() {
    :;
}
# }}}}} kubeadm init phase kubeconfig admin

# {{{{{ kubeadm init phase kubeconfig all
# @cmd Generate all kubeconfig files
# @option --apiserver-advertise-address <string>  The IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>        Port for the API Server to bind to.
# @option --cert-dir <dir>                     The path where to save and store the certificates.
# @option --config <file>                      Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>    Specify a stable IP address or DNS name for the control plane.
# @flag --dry-run                              Don't apply any changes; just output what would be done.
# @flag -h --help                              help for all
# @option --kubeconfig-dir <path>              The path where to save the kubeconfig file.
# @option --kubernetes-version <string>        Choose a specific Kubernetes version for the control plane.
# @option --node-name <string>                 Specify the node name.
# @flag --add-dir-header                       If true, adds the file directory to the header of the log messages
# @option --log-file <file>                    If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>           Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                           If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                      [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                         If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                     If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                       number for the log level verbosity
init::phase::kubeconfig::all() {
    :;
}
# }}}}} kubeadm init phase kubeconfig all

# {{{{{ kubeadm init phase kubeconfig controller-manager
# @cmd Generate a kubeconfig file for the controller manager to use
# @option --apiserver-advertise-address <string>  The IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>        Port for the API Server to bind to.
# @option --cert-dir <dir>                     The path where to save and store the certificates.
# @option --config <file>                      Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>    Specify a stable IP address or DNS name for the control plane.
# @flag --dry-run                              Don't apply any changes; just output what would be done.
# @flag -h --help                              help for controller-manager
# @option --kubeconfig-dir <path>              The path where to save the kubeconfig file.
# @option --kubernetes-version <string>        Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                       If true, adds the file directory to the header of the log messages
# @option --log-file <file>                    If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>           Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                           If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                      [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                         If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                     If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                       number for the log level verbosity
init::phase::kubeconfig::controller-manager() {
    :;
}
# }}}}} kubeadm init phase kubeconfig controller-manager

# {{{{{ kubeadm init phase kubeconfig kubelet
# @cmd Generate a kubeconfig file for the kubelet to use *only* for cluster bootstrapping purposes
# @option --apiserver-advertise-address <string>  The IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>        Port for the API Server to bind to.
# @option --cert-dir <dir>                     The path where to save and store the certificates.
# @option --config <file>                      Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>    Specify a stable IP address or DNS name for the control plane.
# @flag --dry-run                              Don't apply any changes; just output what would be done.
# @flag -h --help                              help for kubelet
# @option --kubeconfig-dir <path>              The path where to save the kubeconfig file.
# @option --kubernetes-version <string>        Choose a specific Kubernetes version for the control plane.
# @option --node-name <string>                 Specify the node name.
# @flag --add-dir-header                       If true, adds the file directory to the header of the log messages
# @option --log-file <file>                    If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>           Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                           If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                      [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                         If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                     If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                       number for the log level verbosity
init::phase::kubeconfig::kubelet() {
    :;
}
# }}}}} kubeadm init phase kubeconfig kubelet

# {{{{{ kubeadm init phase kubeconfig scheduler
# @cmd Generate a kubeconfig file for the scheduler to use
# @option --apiserver-advertise-address <string>  The IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>        Port for the API Server to bind to.
# @option --cert-dir <dir>                     The path where to save and store the certificates.
# @option --config <file>                      Path to a kubeadm configuration file.
# @option --control-plane-endpoint <string>    Specify a stable IP address or DNS name for the control plane.
# @flag --dry-run                              Don't apply any changes; just output what would be done.
# @flag -h --help                              help for scheduler
# @option --kubeconfig-dir <path>              The path where to save the kubeconfig file.
# @option --kubernetes-version <string>        Choose a specific Kubernetes version for the control plane.
# @flag --add-dir-header                       If true, adds the file directory to the header of the log messages
# @option --log-file <file>                    If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>           Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                           If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                      [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                         If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                     If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                       number for the log level verbosity
init::phase::kubeconfig::scheduler() {
    :;
}
# }}}}} kubeadm init phase kubeconfig scheduler
# }}}} kubeadm init phase kubeconfig

# {{{{ kubeadm init phase kubelet-finalize
# @cmd Updates settings relevant to the kubelet after TLS bootstrap
# @flag -h --help                       help for kubelet-finalize
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::kubelet-finalize() {
    :;
}

# {{{{{ kubeadm init phase kubelet-finalize all
# @cmd Run all kubelet-finalize phases
# @option --cert-dir <dir>              The path where to save and store the certificates.
# @option --config <file>               Path to a kubeadm configuration file.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for all
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::kubelet-finalize::all() {
    :;
}
# }}}}} kubeadm init phase kubelet-finalize all

# {{{{{ kubeadm init phase kubelet-finalize experimental-cert-rotation
# @cmd Enable kubelet client certificate rotation
# @option --cert-dir <dir>              The path where to save and store the certificates.
# @option --config <file>               Path to a kubeadm configuration file.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for experimental-cert-rotation
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::kubelet-finalize::experimental-cert-rotation() {
    :;
}
# }}}}} kubeadm init phase kubelet-finalize experimental-cert-rotation
# }}}} kubeadm init phase kubelet-finalize

# {{{{ kubeadm init phase kubelet-start
# @cmd Write kubelet settings and (re)start the kubelet
# @option --config <file>               Path to a kubeadm configuration file.
# @option --cri-socket <path>           Path to the CRI socket to connect.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for kubelet-start
# @option --node-name <string>          Specify the node name.
# @option --patches <path>              Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::kubelet-start() {
    :;
}
# }}}} kubeadm init phase kubelet-start

# {{{{ kubeadm init phase mark-control-plane
# @cmd Mark a node as a control-plane
# @option --config <file>               Path to a kubeadm configuration file.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for mark-control-plane
# @option --node-name <string>          Specify the node name.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::mark-control-plane() {
    :;
}
# }}}} kubeadm init phase mark-control-plane

# {{{{ kubeadm init phase preflight
# @cmd Run pre-flight checks
# @option --config <file>               Path to a kubeadm configuration file.
# @option --cri-socket <path>           Path to the CRI socket to connect.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for preflight
# @option --ignore-preflight-errors*,[`_choice_preflight_error`] <string>  A list of checks whose errors will be shown as warnings.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::preflight() {
    :;
}
# }}}} kubeadm init phase preflight

# {{{{ kubeadm init phase upload-certs
# @cmd Upload certificates to kubeadm-certs
# @option --certificate-key <string>    Key used to encrypt the control-plane certificates in the kubeadm-certs Secret.
# @option --config <file>               Path to a kubeadm configuration file.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for upload-certs
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --skip-certificate-key-print    Don't print the key used to encrypt the control-plane certificates.
# @flag --upload-certs                  Upload control-plane certificates to the kubeadm-certs Secret.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::upload-certs() {
    :;
}
# }}}} kubeadm init phase upload-certs

# {{{{ kubeadm init phase upload-config
# @cmd Upload the kubeadm and kubelet configuration to a ConfigMap
# @flag -h --help                       help for upload-config
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::upload-config() {
    :;
}

# {{{{{ kubeadm init phase upload-config all
# @cmd Upload all configuration to a config map
# @option --config <file>               Path to a kubeadm configuration file.
# @option --cri-socket <path>           Path to the CRI socket to connect.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for all
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::upload-config::all() {
    :;
}
# }}}}} kubeadm init phase upload-config all

# {{{{{ kubeadm init phase upload-config kubelet
# @cmd Upload the kubelet component config to a ConfigMap
# @option --config <file>               Path to a kubeadm configuration file.
# @option --cri-socket <path>           Path to the CRI socket to connect.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for kubelet
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
init::phase::upload-config::kubelet() {
    :;
}
# }}}}} kubeadm init phase upload-config kubelet
# }}}} kubeadm init phase upload-config
# }}} kubeadm init phase
# }} kubeadm init

# {{ kubeadm join
# @cmd Run this on any machine you wish to join an existing cluster
# @option --apiserver-advertise-address <string>  If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>     If the node should host a new control plane instance, the port for the API Server to bind to.
# @option --certificate-key <string>        Use this key to decrypt the certificate secrets uploaded by init.
# @option --config <file>                   Path to a kubeadm configuration file.
# @flag --control-plane                     Create a new control plane instance on this node
# @option --cri-socket <path>               Path to the CRI socket to connect.
# @option --discovery-file <file>           For file-based discovery, a file or URL from which to load cluster information.
# @option --discovery-token <string>        For token-based discovery, the token used to validate cluster information fetched from the API server.
# @option --discovery-token-ca-cert-hash* <string>  For token-based discovery, validate that the root CA public key matches this hash (format: "<type>:<value>").
# @flag --discovery-token-unsafe-skip-ca-verification  For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.
# @flag --dry-run                           Don't apply any changes; just output what would be done.
# @flag -h --help                           help for join
# @option --ignore-preflight-errors*,[`_choice_preflight_error`] <string>  A list of checks whose errors will be shown as warnings.
# @option --node-name <string>              Specify the node name.
# @option --patches <path>                  Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @option --skip-phases*,[`_choice_phase`] <string>  List of phases to be skipped
# @option --tls-bootstrap-token <string>    Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.
# @option --token <string>                  Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.
# @flag --add-dir-header                    If true, adds the file directory to the header of the log messages
# @option --log-file <file>                 If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>        Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                        If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                   [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                      If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                  If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                    number for the log level verbosity
# @arg api-server-endpoint
join() {
    :;
}

# {{{ kubeadm join phase
# @cmd Use this command to invoke single phase of the join workflow
# @flag -h --help                       help for phase
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
join::phase() {
    :;
}

# {{{{ kubeadm join phase control-plane-join
# @cmd Join a machine as a control plane instance
# @flag -h --help                       help for control-plane-join
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
join::phase::control-plane-join() {
    :;
}

# {{{{{ kubeadm join phase control-plane-join all
# @cmd Join a machine as a control plane instance
# @option --apiserver-advertise-address <string>  If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on.
# @option --config <file>               Path to a kubeadm configuration file.
# @flag --control-plane                 Create a new control plane instance on this node
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for all
# @option --node-name <string>          Specify the node name.
# @option --patches <path>              Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
join::phase::control-plane-join::all() {
    :;
}
# }}}}} kubeadm join phase control-plane-join all

# {{{{{ kubeadm join phase control-plane-join etcd
# @cmd Add a new local etcd member
# @option --apiserver-advertise-address <string>  If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on.
# @option --config <file>               Path to a kubeadm configuration file.
# @flag --control-plane                 Create a new control plane instance on this node
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for etcd
# @option --node-name <string>          Specify the node name.
# @option --patches <path>              Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
join::phase::control-plane-join::etcd() {
    :;
}
# }}}}} kubeadm join phase control-plane-join etcd

# {{{{{ kubeadm join phase control-plane-join mark-control-plane
# @cmd Mark a node as a control-plane
# @option --config <file>               Path to a kubeadm configuration file.
# @flag --control-plane                 Create a new control plane instance on this node
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for mark-control-plane
# @option --node-name <string>          Specify the node name.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
join::phase::control-plane-join::mark-control-plane() {
    :;
}
# }}}}} kubeadm join phase control-plane-join mark-control-plane

# {{{{{ kubeadm join phase control-plane-join update-status
# @cmd Register the new control-plane node into the ClusterStatus maintained in the kubeadm-config ConfigMap (DEPRECATED)
# @option --apiserver-advertise-address <string>  If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on.
# @option --config <file>               Path to a kubeadm configuration file.
# @flag --control-plane                 Create a new control plane instance on this node
# @flag -h --help                       help for update-status
# @option --node-name <string>          Specify the node name.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
join::phase::control-plane-join::update-status() {
    :;
}
# }}}}} kubeadm join phase control-plane-join update-status
# }}}} kubeadm join phase control-plane-join

# {{{{ kubeadm join phase control-plane-prepare
# @cmd Prepare the machine for serving a control plane
# @flag -h --help                       help for control-plane-prepare
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
join::phase::control-plane-prepare() {
    :;
}

# {{{{{ kubeadm join phase control-plane-prepare all
# @cmd Prepare the machine for serving a control plane
# @option --apiserver-advertise-address <string>  If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>     If the node should host a new control plane instance, the port for the API Server to bind to.
# @option --certificate-key <string>        Use this key to decrypt the certificate secrets uploaded by init.
# @option --config <file>                   Path to a kubeadm configuration file.
# @flag --control-plane                     Create a new control plane instance on this node
# @option --discovery-file <file>           For file-based discovery, a file or URL from which to load cluster information.
# @option --discovery-token <string>        For token-based discovery, the token used to validate cluster information fetched from the API server.
# @option --discovery-token-ca-cert-hash* <string>  For token-based discovery, validate that the root CA public key matches this hash (format: "<type>:<value>").
# @flag --discovery-token-unsafe-skip-ca-verification  For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.
# @flag --dry-run                           Don't apply any changes; just output what would be done.
# @flag -h --help                           help for all
# @option --node-name <string>              Specify the node name.
# @option --patches <path>                  Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @option --tls-bootstrap-token <string>    Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.
# @option --token <string>                  Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.
# @flag --add-dir-header                    If true, adds the file directory to the header of the log messages
# @option --log-file <file>                 If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>        Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                        If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                   [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                      If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                  If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                    number for the log level verbosity
# @arg api-server-endpoint
join::phase::control-plane-prepare::all() {
    :;
}
# }}}}} kubeadm join phase control-plane-prepare all

# {{{{{ kubeadm join phase control-plane-prepare certs
# @cmd Generate the certificates for the new control plane components
# @option --apiserver-advertise-address <string>  If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on.
# @option --config <file>                   Path to a kubeadm configuration file.
# @flag --control-plane                     Create a new control plane instance on this node
# @option --discovery-file <file>           For file-based discovery, a file or URL from which to load cluster information.
# @option --discovery-token <string>        For token-based discovery, the token used to validate cluster information fetched from the API server.
# @option --discovery-token-ca-cert-hash* <string>  For token-based discovery, validate that the root CA public key matches this hash (format: "<type>:<value>").
# @flag --discovery-token-unsafe-skip-ca-verification  For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.
# @flag --dry-run                           Don't apply any changes; just output what would be done.
# @flag -h --help                           help for certs
# @option --node-name <string>              Specify the node name.
# @option --tls-bootstrap-token <string>    Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.
# @option --token <string>                  Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.
# @flag --add-dir-header                    If true, adds the file directory to the header of the log messages
# @option --log-file <file>                 If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>        Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                        If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                   [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                      If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                  If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                    number for the log level verbosity
# @arg api-server-endpoint
join::phase::control-plane-prepare::certs() {
    :;
}
# }}}}} kubeadm join phase control-plane-prepare certs

# {{{{{ kubeadm join phase control-plane-prepare control-plane
# @cmd Generate the manifests for the new control plane components
# @option --apiserver-advertise-address <string>  If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>    If the node should host a new control plane instance, the port for the API Server to bind to.
# @option --config <file>                  Path to a kubeadm configuration file.
# @flag --control-plane                    Create a new control plane instance on this node
# @flag --dry-run                          Don't apply any changes; just output what would be done.
# @flag -h --help                          help for control-plane
# @option --patches <path>                 Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @flag --add-dir-header                   If true, adds the file directory to the header of the log messages
# @option --log-file <file>                If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>       Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                       If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                  [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                     If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                 If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                   number for the log level verbosity
join::phase::control-plane-prepare::control-plane() {
    :;
}
# }}}}} kubeadm join phase control-plane-prepare control-plane

# {{{{{ kubeadm join phase control-plane-prepare download-certs
# @cmd Download certificates shared among control-plane nodes from the kubeadm-certs Secret
# @option --certificate-key <string>        Use this key to decrypt the certificate secrets uploaded by init.
# @option --config <file>                   Path to a kubeadm configuration file.
# @flag --control-plane                     Create a new control plane instance on this node
# @option --discovery-file <file>           For file-based discovery, a file or URL from which to load cluster information.
# @option --discovery-token <string>        For token-based discovery, the token used to validate cluster information fetched from the API server.
# @option --discovery-token-ca-cert-hash* <string>  For token-based discovery, validate that the root CA public key matches this hash (format: "<type>:<value>").
# @flag --discovery-token-unsafe-skip-ca-verification  For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.
# @flag --dry-run                           Don't apply any changes; just output what would be done.
# @flag -h --help                           help for download-certs
# @option --tls-bootstrap-token <string>    Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.
# @option --token <string>                  Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.
# @flag --add-dir-header                    If true, adds the file directory to the header of the log messages
# @option --log-file <file>                 If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>        Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                        If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                   [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                      If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                  If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                    number for the log level verbosity
# @arg api-server-endpoint
join::phase::control-plane-prepare::download-certs() {
    :;
}
# }}}}} kubeadm join phase control-plane-prepare download-certs

# {{{{{ kubeadm join phase control-plane-prepare kubeconfig
# @cmd Generate the kubeconfig for the new control plane components
# @option --certificate-key <string>        Use this key to decrypt the certificate secrets uploaded by init.
# @option --config <file>                   Path to a kubeadm configuration file.
# @flag --control-plane                     Create a new control plane instance on this node
# @option --discovery-file <file>           For file-based discovery, a file or URL from which to load cluster information.
# @option --discovery-token <string>        For token-based discovery, the token used to validate cluster information fetched from the API server.
# @option --discovery-token-ca-cert-hash* <string>  For token-based discovery, validate that the root CA public key matches this hash (format: "<type>:<value>").
# @flag --discovery-token-unsafe-skip-ca-verification  For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.
# @flag --dry-run                           Don't apply any changes; just output what would be done.
# @flag -h --help                           help for kubeconfig
# @option --tls-bootstrap-token <string>    Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.
# @option --token <string>                  Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.
# @flag --add-dir-header                    If true, adds the file directory to the header of the log messages
# @option --log-file <file>                 If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>        Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                        If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                   [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                      If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                  If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                    number for the log level verbosity
# @arg api-server-endpoint
join::phase::control-plane-prepare::kubeconfig() {
    :;
}
# }}}}} kubeadm join phase control-plane-prepare kubeconfig
# }}}} kubeadm join phase control-plane-prepare

# {{{{ kubeadm join phase kubelet-start
# @cmd Write kubelet settings, certificates and (re)start the kubelet
# @option --config <file>                   Path to a kubeadm configuration file.
# @option --cri-socket <path>               Path to the CRI socket to connect.
# @option --discovery-file <file>           For file-based discovery, a file or URL from which to load cluster information.
# @option --discovery-token <string>        For token-based discovery, the token used to validate cluster information fetched from the API server.
# @option --discovery-token-ca-cert-hash* <string>  For token-based discovery, validate that the root CA public key matches this hash (format: "<type>:<value>").
# @flag --discovery-token-unsafe-skip-ca-verification  For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.
# @flag --dry-run                           Don't apply any changes; just output what would be done.
# @flag -h --help                           help for kubelet-start
# @option --node-name <string>              Specify the node name.
# @option --patches <path>                  Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @option --tls-bootstrap-token <string>    Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.
# @option --token <string>                  Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.
# @flag --add-dir-header                    If true, adds the file directory to the header of the log messages
# @option --log-file <file>                 If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>        Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                        If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                   [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                      If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                  If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                    number for the log level verbosity
# @arg api-server-endpoint
join::phase::kubelet-start() {
    :;
}
# }}}} kubeadm join phase kubelet-start

# {{{{ kubeadm join phase preflight
# @cmd Run join pre-flight checks
# @option --apiserver-advertise-address <string>  If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on.
# @option --apiserver-bind-port <int32>     If the node should host a new control plane instance, the port for the API Server to bind to.
# @option --certificate-key <string>        Use this key to decrypt the certificate secrets uploaded by init.
# @option --config <file>                   Path to a kubeadm configuration file.
# @flag --control-plane                     Create a new control plane instance on this node
# @option --cri-socket <path>               Path to the CRI socket to connect.
# @option --discovery-file <file>           For file-based discovery, a file or URL from which to load cluster information.
# @option --discovery-token <string>        For token-based discovery, the token used to validate cluster information fetched from the API server.
# @option --discovery-token-ca-cert-hash* <string>  For token-based discovery, validate that the root CA public key matches this hash (format: "<type>:<value>").
# @flag --discovery-token-unsafe-skip-ca-verification  For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.
# @flag --dry-run                           Don't apply any changes; just output what would be done.
# @flag -h --help                           help for preflight
# @option --ignore-preflight-errors*,[`_choice_preflight_error`] <string>  A list of checks whose errors will be shown as warnings.
# @option --node-name <string>              Specify the node name.
# @option --tls-bootstrap-token <string>    Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.
# @option --token <string>                  Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.
# @flag --add-dir-header                    If true, adds the file directory to the header of the log messages
# @option --log-file <file>                 If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>        Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                        If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                   [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                      If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                  If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                    number for the log level verbosity
# @arg api-server-endpoint
join::phase::preflight() {
    :;
}
# }}}} kubeadm join phase preflight
# }}} kubeadm join phase
# }} kubeadm join

# {{ kubeadm kubeconfig
# @cmd Kubeconfig file utilities
# @flag -h --help                       help for kubeconfig
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
kubeconfig() {
    :;
}

# {{{ kubeadm kubeconfig user
# @cmd Output a kubeconfig file for an additional user
# @option --client-name <string>          The name of user.
# @option --config <file>                 Path to a kubeadm configuration file.
# @flag -h --help                         help for user
# @option --org* <string>                 The organizations of the client certificate.
# @option --token <string>                The token that should be used as the authentication mechanism for this kubeconfig, instead of client certificates
# @option --validity-period <duration>    The validity period of the client certificate.
# @flag --add-dir-header                  If true, adds the file directory to the header of the log messages
# @option --log-file <file>               If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>      Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                      If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                 [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                    If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                  number for the log level verbosity
kubeconfig::user() {
    :;
}
# }}} kubeadm kubeconfig user
# }} kubeadm kubeconfig

# {{ kubeadm reset
# @cmd Performs a best effort revert of changes made to this host by 'kubeadm init' or 'kubeadm join'
# @option --cert-dir <dir>              The path to the directory where the certificates are stored.
# @flag --cleanup-tmp-dir               Cleanup the "/etc/kubernetes/tmp" directory
# @option --config <file>               Path to a kubeadm configuration file.
# @option --cri-socket <path>           Path to the CRI socket to connect.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -f --force                      Reset the node without prompting for confirmation.
# @flag -h --help                       help for reset
# @option --ignore-preflight-errors*,[`_choice_preflight_error`] <string>  A list of checks whose errors will be shown as warnings.
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @option --skip-phases*,[`_choice_phase`] <string>  List of phases to be skipped
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
reset() {
    :;
}

# {{{ kubeadm reset phase
# @cmd Use this command to invoke single phase of the reset workflow
# @flag -h --help                       help for phase
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
reset::phase() {
    :;
}

# {{{{ kubeadm reset phase cleanup-node
# @cmd Run cleanup node.
# @option --cert-dir <dir>              The path to the directory where the certificates are stored.
# @flag --cleanup-tmp-dir               Cleanup the "/etc/kubernetes/tmp" directory
# @option --cri-socket <path>           Path to the CRI socket to connect.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for cleanup-node
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
reset::phase::cleanup-node() {
    :;
}
# }}}} kubeadm reset phase cleanup-node

# {{{{ kubeadm reset phase preflight
# @cmd Run reset pre-flight checks
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -f --force                      Reset the node without prompting for confirmation.
# @flag -h --help                       help for preflight
# @option --ignore-preflight-errors*,[`_choice_preflight_error`] <string>  A list of checks whose errors will be shown as warnings.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
reset::phase::preflight() {
    :;
}
# }}}} kubeadm reset phase preflight

# {{{{ kubeadm reset phase remove-etcd-member
# @cmd Remove a local etcd member.
# @flag --dry-run                       Don't apply any changes; just output what would be done.
# @flag -h --help                       help for remove-etcd-member
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
reset::phase::remove-etcd-member() {
    :;
}
# }}}} kubeadm reset phase remove-etcd-member
# }}} kubeadm reset phase
# }} kubeadm reset

# {{ kubeadm token
# @cmd Manage bootstrap tokens
# @flag --dry-run                       Whether to enable dry-run mode or not
# @flag -h --help                       help for token
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
token() {
    :;
}

# {{{ kubeadm token create
# @cmd Create bootstrap tokens on the server
# @option --certificate-key <string>    When used together with '--print-join-command', print the full 'kubeadm join' flag needed to join the cluster as a control-plane.
# @option --config <file>               Path to a kubeadm configuration file.
# @option --description <string>        A human friendly description of how this token is used.
# @option --groups* <string>            Extra groups that this token will authenticate as when used for authentication.
# @flag -h --help                       help for create
# @flag --print-join-command            Instead of printing only the token, print the full 'kubeadm join' flag needed to join the cluster using the token.
# @option --ttl <duration>              The duration before the token is automatically deleted (e.g. 1s, 2m, 3h).
# @option --usages* <string>            Describes the ways in which this token can be used.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @flag --dry-run                       Whether to enable dry-run mode or not
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
# @arg token
token::create() {
    :;
}
# }}} kubeadm token create

# {{{ kubeadm token delete
# @cmd Delete bootstrap tokens on the server
# @flag -h --help                       help for delete
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @flag --dry-run                       Whether to enable dry-run mode or not
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
# @arg token-value*
token::delete() {
    :;
}
# }}} kubeadm token delete

# {{{ kubeadm token generate
# @cmd Generate and print a bootstrap token, but do not create it on the server
# @flag -h --help                       help for generate
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @flag --dry-run                       Whether to enable dry-run mode or not
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
token::generate() {
    :;
}
# }}} kubeadm token generate

# {{{ kubeadm token list
# @cmd List bootstrap tokens on the server
# @flag --allow-missing-template-keys          If true, ignore any errors in templates when a field or map key is missing in the template.
# @option -o --experimental-output <string>    Output format.
# @flag -h --help                              help for list
# @flag --show-managed-fields                  If true, keep the managedFields when printing objects in JSON or YAML format.
# @flag --add-dir-header                       If true, adds the file directory to the header of the log messages
# @flag --dry-run                              Whether to enable dry-run mode or not
# @option --kubeconfig <file>                  The kubeconfig file to use when talking to the cluster.
# @option --log-file <file>                    If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>           Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                           If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                      [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                         If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                     If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                       number for the log level verbosity
token::list() {
    :;
}
# }}} kubeadm token list
# }} kubeadm token

# {{ kubeadm upgrade
# @cmd Upgrade your cluster smoothly to a newer version with this command
# @flag -h --help                       help for upgrade
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
upgrade() {
    :;
}

# {{{ kubeadm upgrade apply
# @cmd Upgrade your Kubernetes cluster to the specified version
# @flag --allow-experimental-upgrades         Show unstable versions of Kubernetes as an upgrade alternative and allow upgrading to an alpha/beta/release candidate versions of Kubernetes.
# @flag --allow-release-candidate-upgrades    Show release candidate versions of Kubernetes as an upgrade alternative and allow upgrading to a release candidate versions of Kubernetes.
# @flag --certificate-renewal                 Perform the renewal of certificates used by component changed during upgrades.
# @option --config <file>                     Path to a kubeadm configuration file.
# @flag --dry-run                             Do not change any state, just output what actions would be performed.
# @flag --etcd-upgrade                        Perform the upgrade of etcd.
# @option --feature-gates <string>            A set of key=value pairs that describe feature gates for various features.
# @flag -f --force                            Force upgrading although some requirements might not be met.
# @flag -h --help                             help for apply
# @option --ignore-preflight-errors*,[`_choice_preflight_error`] <string>  A list of checks whose errors will be shown as warnings.
# @option --kubeconfig <file>                 The kubeconfig file to use when talking to the cluster.
# @option --patches <path>                    Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @flag --print-config                        Specifies whether the configuration file that will be used in the upgrade should be printed or not.
# @flag -y --yes                              Perform the upgrade and do not prompt for confirmation (non-interactive mode).
# @flag --add-dir-header                      If true, adds the file directory to the header of the log messages
# @option --log-file <file>                   If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>          Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                          If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                     [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                        If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                    If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                      number for the log level verbosity
# @arg version
upgrade::apply() {
    :;
}
# }}} kubeadm upgrade apply

# {{{ kubeadm upgrade diff
# @cmd Show what differences would be applied to existing static pod manifests.
# @option --api-server-manifest <path>            path to API server manifest (default "/etc/kubernetes/manifests/kube-apiserver.yaml")
# @option --config <file>                         Path to a kubeadm configuration file.
# @option -c --context-lines <int>                How many lines of context in the diff (default 3)
# @option --controller-manager-manifest <path>    path to controller manifest (default "/etc/kubernetes/manifests/kube-controller-manager.yaml")
# @flag -h --help                                 help for diff
# @option --kubeconfig <file>                     The kubeconfig file to use when talking to the cluster.
# @option --scheduler-manifest <path>             path to scheduler manifest (default "/etc/kubernetes/manifests/kube-scheduler.yaml")
# @flag --add-dir-header                          If true, adds the file directory to the header of the log messages
# @option --log-file <file>                       If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>              Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                              If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                         [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                            If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                        If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                          number for the log level verbosity
# @arg version
upgrade::diff() {
    :;
}
# }}} kubeadm upgrade diff

# {{{ kubeadm upgrade node
# @cmd Upgrade commands for a node in the cluster
# @flag --certificate-renewal           Perform the renewal of certificates used by component changed during upgrades.
# @flag --dry-run                       Do not change any state, just output the actions that would be performed.
# @flag --etcd-upgrade                  Perform the upgrade of etcd.
# @flag -h --help                       help for node
# @option --ignore-preflight-errors*,[`_choice_preflight_error`] <string>  A list of checks whose errors will be shown as warnings.
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @option --patches <path>              Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @option --skip-phases*,[`_choice_phase`] <string>  List of phases to be skipped
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
upgrade::node() {
    :;
}

# {{{{ kubeadm upgrade node phase
# @cmd Use this command to invoke single phase of the node workflow
# @flag -h --help                       help for phase
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
upgrade::node::phase() {
    :;
}

# {{{{{ kubeadm upgrade node phase control-plane
# @cmd Upgrade the control plane instance deployed on this node, if any
# @flag --certificate-renewal           Perform the renewal of certificates used by component changed during upgrades.
# @flag --dry-run                       Do not change any state, just output the actions that would be performed.
# @flag --etcd-upgrade                  Perform the upgrade of etcd.
# @flag -h --help                       help for control-plane
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @option --patches <path>              Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
upgrade::node::phase::control-plane() {
    :;
}
# }}}}} kubeadm upgrade node phase control-plane

# {{{{{ kubeadm upgrade node phase kubelet-config
# @cmd Upgrade the kubelet configuration for this node
# @flag --dry-run                       Do not change any state, just output the actions that would be performed.
# @flag -h --help                       help for kubelet-config
# @option --kubeconfig <file>           The kubeconfig file to use when talking to the cluster.
# @option --patches <path>              Path to a directory that contains files named "target[suffix][+patchtype].extension".
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
upgrade::node::phase::kubelet-config() {
    :;
}
# }}}}} kubeadm upgrade node phase kubelet-config

# {{{{{ kubeadm upgrade node phase preflight
# @cmd Run upgrade node pre-flight checks
# @flag -h --help                       help for preflight
# @option --ignore-preflight-errors*,[`_choice_preflight_error`] <string>  A list of checks whose errors will be shown as warnings.
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
upgrade::node::phase::preflight() {
    :;
}
# }}}}} kubeadm upgrade node phase preflight
# }}}} kubeadm upgrade node phase
# }}} kubeadm upgrade node

# {{{ kubeadm upgrade plan
# @cmd Check which versions are available to upgrade to and validate whether your current cluster is upgradeable.
# @flag --allow-experimental-upgrades         Show unstable versions of Kubernetes as an upgrade alternative and allow upgrading to an alpha/beta/release candidate versions of Kubernetes.
# @flag --allow-release-candidate-upgrades    Show release candidate versions of Kubernetes as an upgrade alternative and allow upgrading to a release candidate versions of Kubernetes.
# @option --config <file>                     Path to a kubeadm configuration file.
# @option --feature-gates <string>            A set of key=value pairs that describe feature gates for various features.
# @flag -h --help                             help for plan
# @option --ignore-preflight-errors*,[`_choice_preflight_error`] <string>  A list of checks whose errors will be shown as warnings.
# @option --kubeconfig <file>                 The kubeconfig file to use when talking to the cluster.
# @option -o --output <string>                EXPERIMENTAL: Output format.
# @flag --print-config                        Specifies whether the configuration file that will be used in the upgrade should be printed or not.
# @flag --show-managed-fields                 If true, keep the managedFields when printing objects in JSON or YAML format.
# @flag --add-dir-header                      If true, adds the file directory to the header of the log messages
# @option --log-file <file>                   If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>          Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                          If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>                     [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                        If true, avoid header prefixes in the log messages
# @flag --skip-log-headers                    If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                      number for the log level verbosity
# @arg version
upgrade::plan() {
    :;
}
# }}} kubeadm upgrade plan
# }} kubeadm upgrade

# {{ kubeadm version
# @cmd Print the version of kubeadm
# @flag -h --help                       help for version
# @option -o --output <string>          Output format; available options are 'yaml', 'json' and 'short'
# @flag --add-dir-header                If true, adds the file directory to the header of the log messages
# @option --log-file <file>             If non-empty, use this log file (no effect when -logtostderr=true)
# @option --log-file-max-size <uint>    Defines the maximum size a log file can grow to (no effect when -logtostderr=true).
# @flag --one-output                    If true, only write logs to their native severity level (vs also writing to each lower severity level; no effect when -logtostderr=true)
# @option --rootfs <file>               [EXPERIMENTAL] The path to the 'real' host root filesystem.
# @flag --skip-headers                  If true, avoid header prefixes in the log messages
# @flag --skip-log-headers              If true, avoid headers when opening log files (no effect when -logtostderr=true)
# @option -v --v <Level>                number for the log level verbosity
version() {
    :;
}
# }} kubeadm version

_choice_preflight_error() {
    printf "%s\n" ContainerRuntime DirAvailable ExternalEtcdVersion FileAvailable \
        FileContent FileExisting Firewalld HTTPProxy HTTPProxyCIDR Hostname ImagePull \
        InPath IsPrivilegedUser KubeletVersion KubernetesVersion Mem NumCPU \
        PortOpen Service Swap SystemVerification all
}

_choice_phase() {
    cat <<-'EOF'
preflight	Run pre-flight checks
certs	Certificate generation
certs/ca	Generate the self-signed Kubernetes CA to provision identities for other Kubernetes components
certs/apiserver	Generate the certificate for serving the Kubernetes API
certs/apiserver-kubelet-client	Generate the certificate for the API server to connect to kubelet
certs/front-proxy-ca	Generate the self-signed CA to provision identities for front proxy
certs/front-proxy-client	Generate the certificate for the front proxy client
certs/etcd-ca	Generate the self-signed CA to provision identities for etcd
certs/etcd-server	Generate the certificate for serving etcd
certs/etcd-peer	Generate the certificate for etcd nodes to communicate with each other
certs/etcd-healthcheck-client	Generate the certificate for liveness probes to healthcheck etcd
certs/apiserver-etcd-client	Generate the certificate the apiserver uses to access etcd
certs/sa	Generate a private key for signing service account tokens along with its public key
kubeconfig	Generate all kubeconfig files necessary to establish the control plane and the admin kubeconfig file
kubeconfig/admin	Generate a kubeconfig file for the admin to use and for kubeadm itself
kubeconfig/kubelet	Generate a kubeconfig file for the kubelet to use *only* for cluster bootstrapping purposes
kubeconfig/controller-manager	Generate a kubeconfig file for the controller manager to use
kubeconfig/scheduler	Generate a kubeconfig file for the scheduler to use
kubelet-start	Write kubelet settings and (re)start the kubelet
control-plane	Generate all static Pod manifest files necessary to establish the control plane
control-plane/apiserver	Generates the kube-apiserver static Pod manifest
control-plane/controller-manager	Generates the kube-controller-manager static Pod manifest
control-plane/scheduler	Generates the kube-scheduler static Pod manifest
etcd	Generate static Pod manifest file for local etcd
etcd/local	Generate the static Pod manifest file for a local, single-node local etcd instance
upload-config	Upload the kubeadm and kubelet configuration to a ConfigMap
upload-config/kubeadm	Upload the kubeadm ClusterConfiguration to a ConfigMap
upload-config/kubelet	Upload the kubelet component config to a ConfigMap
upload-certs	Upload certificates to kubeadm-certs
mark-control-plane	Mark a node as a control-plane
bootstrap-token	Generates bootstrap tokens used to join a node to a cluster
kubelet-finalize	Updates settings relevant to the kubelet after TLS bootstrap
kubelet-finalize/experimental-cert-rotation	Enable kubelet client certificate rotation
addon	Install required addons for passing conformance tests
addon/coredns	Install the CoreDNS addon to a Kubernetes cluster
addon/kube-proxy	Install the kube-proxy addon to a Kubernetes cluster
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"