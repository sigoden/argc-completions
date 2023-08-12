# Example Input
#
#   --addons=[]:
#       Enable addons. see `minikube addons list` for a list of valid addon names.
#
#   --apiserver-name='minikubeCA':
#       The authoritative apiserver hostname for apiserver certificates and connectivity. 

#   --apiserver-port=8443:
#       The apiserver listening port
#
#   --auto-update-drivers=true:
#       If set, automatically updates drivers to the latest version. Defaults to true.
#
#   --binary-mirror='':
#       Location to fetch kubectl, kubelet, & kubeadm binaries from.
#
#   --wait=[apiserver,system_pods]:
#       comma separated list of Kubernetes components to verify and wait for after starting a cluster.
#
# Example output
#
#    --addons <value>...
#      	Enable addons. see `minikube addons list` for a list of valid addon names.
#      
#    --apiserver-name <minikubeCA>
#      	The authoritative apiserver hostname for apiserver certificates and connectivity.
#      
#    --apiserver-port=8443
#      	The apiserver listening port
#      
#    --auto-update-drivers
#      	If set, automatically updates drivers to the latest version. Defaults to true.
#      
#    --binary-mirror <value>
#      	Location to fetch kubectl, kubelet, & kubeadm binaries from.
#      
#      
#    --wait apiserver|system_pods
#      	comma separated list of Kubernetes components to verify and wait for after starting a cluster.
#
{
    noPrint = 0
    if (match($0, /^Options:/)) {
        optionZone = 1
        ignoreZone = 0
    } else if (match($0, /^(Usage|Available Commands):/)) {
        optionZone = 0
        ignoreZone = 0
    } else if (match($0, /^\S+:/)) {
        ignoreZone = 1
        optionZone = 0
    } else if (match($0, /^\s*(-\S+ )?-[A-Za-z0-9-][^=]+=\S+\s*$/) && optionZone) {
        noPrint = 1
        line = substr($0, 1, length($0) - 1)
        if (match(line, /=(false|true)$/)) {
            line = substr(line, 1, length(line) - RLENGTH)
        } else if (match(line, /=\[([A-Za-z0-9_-]+(,[A-Za-z0-9_-]+)+)\]$/, arr)) {
            gsub(",", "|", arr[1])
            line = substr(line, 1, length(line) - RLENGTH) " " arr[1]
        } else if (match(line, /=\[\]$/)) {
            line = substr(line, 1, length(line) - RLENGTH) " <value>..."
        } else if (match(line, /=(\047\047)?$/)) {
            line = substr(line, 1, length(line) - RLENGTH) " <value>"
        } else if (match(line, /=\047(\S+)\047$/, arr)) {
            line = substr(line, 1, length(line) - RLENGTH) " <" arr[1] ">"
        } else if (match(line, /=\047\x7b\x7b(\S+)\x7d$/, arr)) {
            line = substr(line, 1, length(line) - RLENGTH) " <template>"
        }
        print line
    } else if (match($0, /^\s*-/)) {
        noPrint = 1
    }  else if (optionZone == 1) {
        noPrint = 1
        print "      " $0
    }

    if (noPrint == 0 && !ignoreZone) {
        print $0
    }
}