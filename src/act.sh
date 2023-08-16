_patch_table() {
    _patch_table_detect_value_type \ |
    _patch_table_edit_options  \
        '--container-architecture;[`_module_oci_docker_platform`]' \
        '--job;[`_choice_job`]' \
    | \
    _patch_table_edit_arguments ';;' 'event;[`_choice_event`]'
}

_choice_job() {
    act -l 2>/dev/null | tail +2 | gawk '{print $2}'    
}

_choice_event() {
    cat <<-'EOF'
branch_protection_rule
check_run
check_suite
create
delete
deployment
deployment_status
discussion
discussion_comment
fork
gollum
issue_comment
issues
label
merge_group
milestone
page_build
project
project_card
project_column
public
pull_request
pull_request_comment
pull_request_review
pull_request_review_comment
pull_request_target
push
registry_package
release
repository_dispatch
schedule
status
watch
workflow_call
workflow_dispatch
workflow_run
EOF
}
