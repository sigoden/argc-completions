#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --error-on-warning     Treat any warning as an error
# @option -f --file* <file>    Specify an alternative compose file
# @flag -h --help              help for kompose
# @option --provider[Kubernetes|OpenShift] <string>  Specify a provider.
# @flag --suppress-warnings    Suppress all warnings
# @flag -v --verbose           verbose output

# {{ kompose completion
# @cmd Output shell completion code
# @flag -h --help              help for completion
# @flag --error-on-warning     Treat any warning as an error
# @option -f --file* <file>    Specify an alternative compose file
# @option --provider[Kubernetes|OpenShift] <string>  Specify a provider.
# @flag --suppress-warnings    Suppress all warnings
# @flag -v --verbose           verbose output
# @arg shell
completion() {
    :;
}
# }} kompose completion

# {{ kompose convert
# @cmd Convert a Docker Compose file
# @flag -c --chart                          Create a Helm chart for converted objects
# @flag --build-branch                      Specify repository branch to use for buildconfig (default is current branch name)
# @flag --build-repo                        Specify source repository for buildconfig (default is current branch's remote url)
# @flag --insecure-repository               Specify to use insecure docker repository while generating Openshift image stream object
# @option --build[local|build-config|none] <string>  Set the type of build ("local"|"build-config"(OpenShift only)|"none") (default "none")
# @option --build-command <string>          Set the command used to build the container image.
# @option --controller[deployment|daemonSet|replicationController] <string>  Set the output controller
# @flag --generate-network-policies         Specify whether to generate network policies or not.
# @flag -h --help                           help for convert
# @option --indent <int>                    Spaces length to indent generated yaml files (default 2)
# @flag -j --json                           Generate resource files into JSON format
# @option -n --namespace <string>           Specify the namespace of the generated resources
# @option -o --out <path>                   Specify a file name or directory to save objects to (if path does not exist, a file will be created)
# @option --profile* <file>                 Specify the profile to use, can use multiple profiles
# @option --push-command <string>           Set the command used to push the container image.
# @flag --push-image                        If we should push the docker image we built
# @option --push-image-registry <string>    Specify registry for pushing image, which will override registry from image name.
# @option --pvc-request-size <string>       Specify the size of pvc storage requests in the generated resource spec
# @option --replicas <int>                  Specify the number of replicas in the generated resource spec (default 1)
# @flag --secrets-as-files                  Always convert docker-compose secrets into files instead of symlinked directories.
# @option --service-group-mode <label>      Group multiple service to create single workload by label(`kompose.service.group`) or `volume`(shared volumes)
# @option --service-group-name <string>     Using with --service-group-mode=volume to specific a final service name for the group
# @flag --stdout                            Print converted objects to stdout
# @option --volumes[persistentVolumeClaim|emptyDir|hostPath|configMap] <dir>  Volumes to be generated ("persistentVolumeClaim"|"emptyDir"|"hostPath" | "configMap") (default "persistentVolumeClaim")
# @flag --with-kompose-annotation           Add kompose annotations to generated resource (default true)
# @flag --error-on-warning                  Treat any warning as an error
# @option -f --file* <file>                 Specify an alternative compose file
# @option --provider[Kubernetes|OpenShift] <string>  Specify a provider.
# @flag --suppress-warnings                 Suppress all warnings
# @flag -v --verbose                        verbose output
convert() {
    :;
}
# }} kompose convert

# {{ kompose version
# @cmd Print the version of Kompose
# @flag -h --help              help for version
# @flag --error-on-warning     Treat any warning as an error
# @option -f --file* <file>    Specify an alternative compose file
# @option --provider[Kubernetes|OpenShift] <string>  Specify a provider.
# @flag --suppress-warnings    Suppress all warnings
# @flag -v --verbose           verbose output
version() {
    :;
}
# }} kompose version

command eval "$(argc --argc-eval "$0" "$@")"