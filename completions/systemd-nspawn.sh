#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  Show this help
# @flag --version                                  Print version string
# @flag -q --quiet                                 Do not show status information
# @flag --no-pager                                 Do not pipe output into a pager
# @option --settings <BOOLEAN>                     Load additional settings from .nspawn file
# @option -D --directory <PATH>                    Root directory for the container
# @option --template <PATH>                        Initialize root directory from template directory, if missing
# @flag -x --ephemeral                             Run container with snapshot of root directory, and remove it after exit
# @option -i --image <PATH>                        Root file system disk image (or device node) for the container
# @option --oci-bundle <PATH>                      OCI bundle directory
# @flag --read-only                                Mount the root directory read-only
# @option --volatile <MODE>                        Run the system in volatile mode
# @option --root-hash <HASH>                       Specify verity root hash for root disk image
# @option --root-hash-sig <SIG>                    Specify pkcs7 signature of root hash for verity as a DER encoded PKCS7, either as a path to a file or as an ASCII base64 encoded string prefixed by 'base64:'
# @option --verity-data <PATH>                     Specify hash device for verity
# @option --pivot-root <PATH[:PATH]>               Pivot root to given directory in the container
# @flag -a --as-pid2                               Maintain a stub init as PID1, invoke binary as PID2
# @flag -b --boot                                  Boot up full system (i.e.
# @option --chdir <PATH>                           Set working directory in the container
# @option -E --setenv <NAME=VALUE>                 Pass an environment variable to PID 1
# @option -u --user                                Run the command under specified user or UID
# @option --kill-signal <SIGNAL>                   Select signal to use for shutting down PID 1
# @option --notify-ready <BOOLEAN>                 Receive notifications from the child init process
# @option -M --machine <NAME>                      Set the machine name for the container
# @option --hostname <NAME>                        Override the hostname for the container
# @option --uuid                                   Set a specific machine UUID for the container
# @option -S --slice                               Place the container in the specified slice
# @option --property <NAME=VALUE>                  Set scope unit property
# @option --register <BOOLEAN>                     Register container as machine
# @flag --keep-unit                                Do not register a scope for the machine, reuse the service unit nspawn is running in
# @option --private-users <UIDBASE[:NUIDS]>        Similar, but with user configured UID/GID range
# @option --private-users-ownership <MODE>         Adjust ('chown') or map ('map') OS tree ownership to private UID/GID range
# @flag --private-network                          Disable network in container
# @option --network-interface <INTERFACE>          Assign an existing network interface to the container
# @option --network-macvlan <INTERFACE>            Create a macvlan network interface based on an existing network interface to the container
# @option --network-ipvlan <INTERFACE>             Create an ipvlan network interface based on an existing network interface to the container
# @flag -n --network-veth                          Add a virtual Ethernet connection between host and container
# @option --network-veth-extra <HOSTIF[:CONTAINERIF]>  Add an additional virtual Ethernet link between host and container
# @option --network-bridge <INTERFACE>             Add a virtual Ethernet connection to the container and attach it to an existing bridge on the host
# @option --network-zone <NAME>                    Similar, but attach the new interface to an an automatically managed bridge interface
# @option --network-namespace-path <PATH>          Set network namespace to the one represented by the specified kernel namespace file node
# @option -p --port <[PROTOCOL:]HOSTPORT[:CONTAINERPORT]>  Expose a container IP port on the host
# @option --capability <CAP>                       In addition to the default, retain specified capability
# @option --drop-capability <CAP>                  Drop the specified capability from the default set
# @option --ambient-capability <CAP>               Sets the specified capability for the started process.
# @flag --no-new-privileges                        Set PR_SET_NO_NEW_PRIVS flag for container payload
# @option --system-call-filter <LIST|~LIST>        Permit/prohibit specific system calls
# @option -Z --selinux-context <SECLABEL>          Set the SELinux security context to be used by processes in the container
# @option -L --selinux-apifs-context <SECLABEL>    Set the SELinux security context to be used by API/tmpfs file systems in the container
# @option --rlimit <NAME=LIMIT>                    Set a resource limit for the payload
# @option --oom-score-adjust <VALUE>               Adjust the OOM score value for the payload
# @option --cpu-affinity <CPUS>                    Adjust the CPU affinity of the container
# @option --personality <ARCH>                     Pick personality for this container
# @option --resolv-conf <MODE>                     Select mode of /etc/resolv.conf initialization
# @option --timezone <MODE>                        Select mode of /etc/localtime initialization
# @option --link-journal <MODE>                    Link up guest journal, one of no, auto, guest, host, try-guest, try-host
# @flag -j                                         Equivalent to --link-journal=try-guest
# @option --bind <PATH[:PATH[:OPTIONS]]>           Bind mount a file or directory from the host into the container
# @option --bind-ro <PATH[:PATH[:OPTIONS] # Similar but creates a read-only bind mount>
# @option --inaccessible <PATH>                    Over-mount file node with inaccessible node to mask it
# @option --tmpfs <PATH:[OPTIONS]>                 Mount an empty tmpfs to the specified directory
# @option --overlay <PATH[:PATH...]:PATH>          Create an overlay mount from the host to the container
# @option --overlay-ro <PATH[:PATH...]:PATH>       Similar, but creates a read-only overlay mount
# @option --bind-user <NAME>                       Bind user from host to container
# @option --console <MODE>                         Select how stdin/stdout/stderr and /dev/console are set up for the container.
# @flag -P --pipe                                  Equivalent to --console=pipe
# @option --set-credential <ID:VALUE>              Pass a credential with literal value to container.
# @option --load-credential <ID:PATH>              Load credential to pass to container from file or AF_UNIX stream socket.

command eval "$(argc --argc-eval "$0" "$@")"