_patch_table() { 
    _patch_table_detect_value_type | \
    _patch_table_dedup_options \
        '--controller' \
        '--service-group-mode' \
        '--service-group-name' \
    | \
    _patch_table_edit_options \
        '--provider;[Kubernetes|OpenShift]' \
        '--build;[local|build-config|none]' \
        '--volumes;[persistentVolumeClaim|emptyDir|hostPath|configMap]' \

}