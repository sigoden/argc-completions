_patch_table() {
    _patch_table_edit_options \
        '--agent;[`_choice_agent`]' \
        '--model;[`_choice_model`]' \
        '--rag;[`_choice_rag`]' \
        '--role;[`_choice_role`]' \
        '--session;[`_choice_session`]' \
        
}

_choice_model() {
    aichat --list-models
}

_choice_role() {
    aichat --list-roles
}

_choice_session() {
    aichat --list-sessions
}

_choice_agent() {
    aichat --list-agents
}

_choice_rag() {
    aichat --list-rags
}
