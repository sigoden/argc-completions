_patch_table() {
    _patch_table_edit_options  \
        '--artifact-server-path(path)' \
        '--cache-server-path(path)' \
        '--workflows(path)' \
        '--directory(dir)' \
        '--env-file(file)' \
        '--eventpath(path)' \
        '--input-file(file)' \
        '--secret-file(file)' \
        '--job;[`_choice_job`]' \
        '--container-architecture;[`_choice_container_platform`]'  | \
    _patch_table_edit_arguments ';;' 'event;[`_choice_event`]'
}

_choice_job() {
    act -l 2>/dev/null | tail +2 | gawk '{print $2}'    
}

_choice_container_platform() {
    cat <<-'EOF'
linux/amd64
linux/arm64
linux/ppc64le
linux/s390x
linux/386
linux/arm/v7
linux/arm/v6
EOF
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