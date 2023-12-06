#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --autodetect_server_javabase
# @flag --noautodetect_server_javabase
# @flag --batch
# @flag --nobatch
# @flag --batch_cpu_scheduling
# @flag --nobatch_cpu_scheduling
# @option --bazelrc <string>
# @flag --block_for_lock
# @flag --noblock_for_lock
# @flag --client_debug
# @flag --noclient_debug
# @option --connect_timeout_secs <integer>
# @flag --expand_configs_in_place
# @flag --noexpand_configs_in_place
# @option --failure_detail_out <path>
# @flag --home_rc
# @flag --nohome_rc
# @flag --idle_server_tasks
# @flag --noidle_server_tasks
# @flag --ignore_all_rc_files
# @flag --noignore_all_rc_files
# @option --io_nice_level <integer>
# @option --local_startup_timeout_secs <integer>
# @option --macos_qos_class <string>
# @option --max_idle_secs <integer>
# @option --output_base <path>
# @option --output_user_root <path>
# @flag --preemptible
# @flag --nopreemptible
# @option --server_jvm_out <path>
# @flag --shutdown_on_low_sys_mem
# @flag --noshutdown_on_low_sys_mem
# @flag --system_rc
# @flag --nosystem_rc
# @flag --unlimit_coredumps
# @flag --nounlimit_coredumps
# @flag --watchfs
# @flag --nowatchfs
# @flag --windows_enable_symlinks
# @flag --nowindows_enable_symlinks
# @flag --workspace_rc
# @flag --noworkspace_rc
# @option --host_jvm_args <string>    may be used multiple times
# @flag --host_jvm_debug
# @option --host_jvm_profile <string>
# @option --server_javabase <string>

# {{ bazel analyze-profile
# @cmd Analyzes build profile data.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @option --experimental_oom_more_eagerly_threshold <integer>
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @option --experimental_repository_hash_file <string>
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @option -d --dump[text|raw]
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --profile <path>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option --tool_tag <string>
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --experimental_downloader_config <string>
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --color[yes|no|auto]
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --ui_actions_shown <integer>
# @flag --watchfs
# @flag --nowatchfs
# @arg profile-files!
# @arg profile-file*
analyze-profile() {
    :;
}
# }} bazel analyze-profile

# {{ bazel aquery
# @cmd Analyzes the given targets and queries the action graph.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --check_up_to_date
# @flag --nocheck_up_to_date
# @option --dynamic_local_execution_delay <integer>
# @option --dynamic_local_strategy <value>       a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --dynamic_remote_strategy <value>      a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --experimental_docker_image <string>
# @flag --experimental_docker_use_customized_images
# @flag --noexperimental_docker_use_customized_images
# @flag --experimental_dynamic_exclude_tools
# @flag --noexperimental_dynamic_exclude_tools
# @option --experimental_dynamic_local_load_factor <double>
# @option --experimental_dynamic_slow_remote_time <value>  An immutable length of time.
# @flag --experimental_enable_docker_sandbox
# @flag --noexperimental_enable_docker_sandbox
# @flag --experimental_inprocess_symlink_creation
# @flag --noexperimental_inprocess_symlink_creation
# @option --experimental_oom_more_eagerly_threshold <integer>
# @flag --experimental_persistent_javac
# @flag --experimental_remotable_source_manifests
# @flag --noexperimental_remotable_source_manifests
# @option --experimental_sandbox_async_tree_delete_idle_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --experimental_sandboxfs_path <string>
# @flag --experimental_split_coverage_postprocessing
# @flag --noexperimental_split_coverage_postprocessing
# @flag --experimental_split_xml_generation
# @flag --noexperimental_split_xml_generation
# @flag --experimental_strict_fileset_output
# @flag --noexperimental_strict_fileset_output
# @option --experimental_total_worker_memory_limit_mb <value>  an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --experimental_use_hermetic_linux_sandbox
# @flag --noexperimental_use_hermetic_linux_sandbox
# @option --experimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --experimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --experimental_windows_sandbox_path <string>
# @flag --experimental_worker_as_resource
# @flag --noexperimental_worker_as_resource
# @flag --experimental_worker_cancellation
# @flag --noexperimental_worker_cancellation
# @flag --experimental_worker_multiplex
# @flag --noexperimental_worker_multiplex
# @flag --experimental_worker_multiplex_sandboxing
# @flag --noexperimental_worker_multiplex_sandboxing
# @flag --experimental_worker_strict_flagfiles
# @flag --noexperimental_worker_strict_flagfiles
# @option --genrule_strategy <value>             comma-separated list of options
# @option --high_priority_workers <string>       may be used multiple times
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag --incompatible_sandbox_hermetic_tmp
# @flag --noincompatible_sandbox_hermetic_tmp
# @flag --internal_spawn_scheduler
# @flag --nointernal_spawn_scheduler
# @option -j --jobs[auto|HOST_CPUS|HOST_RAM]     <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --modify_execution_info* <regex=[+-]key,regex=[+-]key,>
# @flag --persistent_android_dex_desugar
# @flag --persistent_android_resource_processor
# @flag --persistent_multiplex_android_dex_desugar
# @flag --persistent_multiplex_android_resource_processor
# @flag --persistent_multiplex_android_tools
# @flag --reuse_sandbox_directories
# @flag --noreuse_sandbox_directories
# @option --sandbox_base <string>
# @flag --sandbox_explicit_pseudoterminal
# @flag --nosandbox_explicit_pseudoterminal
# @option --sandbox_tmpfs_path <path>            an absolute path may be used multiple times
# @option --spawn_strategy <value>               comma-separated list of options
# @option --strategy <value>                     a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --strategy_regexp <value>              a '<RegexFilter>=value[,value]' assignment may be used multiple times
# @option --worker_extra_flag <value>            a 'name=value' assignment may be used multiple times
# @option --worker_max_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --worker_max_multiplex_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag --worker_quit_after_build
# @flag --noworker_quit_after_build
# @flag --worker_sandboxing
# @flag --noworker_sandboxing
# @flag --worker_verbose
# @flag --noworker_verbose
# @option --android_compiler <string>
# @option --android_crosstool_top[`_choice_target`] <label>
# @option --android_grte_top[`_choice_target`] <label>
# @option --android_manifest_merger[legacy|android|force_android]
# @option --android_platforms[`_choice_target`] <label>
# @option --android_sdk[`_choice_target`] <label>
# @option --apple_compiler <string>
# @option --apple_crosstool_top[`_choice_target`] <label>
# @option --apple_grte_top[`_choice_target`] <label>
# @option --cc_output_directory_tag <string>
# @option --compiler <string>
# @option --coverage_output_generator[`_choice_target`] <label>
# @option --coverage_report_generator[`_choice_target`] <label>
# @option --coverage_support[`_choice_target`] <label>
# @option --crosstool_top[`_choice_target`] <label>
# @option --custom_malloc[`_choice_target`] <label>
# @option --experimental_add_exec_constraints_to_targets <value>  a '<RegexFilter>=<label1>[,<label2>,...]' assignment may be used multiple times
# @flag --experimental_enable_objc_cc_deps
# @flag --noexperimental_enable_objc_cc_deps
# @flag --experimental_include_xcode_execution_requirements
# @flag --noexperimental_include_xcode_execution_requirements
# @flag --experimental_prefer_mutual_xcode
# @flag --noexperimental_prefer_mutual_xcode
# @option --extra_execution_platforms <value>    comma-separated list of options may be used multiple times
# @option --extra_toolchains <value>             comma-separated list of options may be used multiple times
# @option --grte_top[`_choice_target`] <label>
# @option --host_compiler <string>
# @option --host_crosstool_top[`_choice_target`] <label>
# @option --host_grte_top[`_choice_target`] <label>
# @option --host_platform[`_choice_target`] <label>
# @flag --incompatible_disable_expand_if_all_available_in_flag_set
# @flag --noincompatible_disable_expand_if_all_available_in_flag_set
# @flag --incompatible_disable_runtimes_filegroups
# @flag --noincompatible_disable_runtimes_filegroups
# @flag --incompatible_dont_emit_static_libgcc
# @flag --noincompatible_dont_emit_static_libgcc
# @flag --incompatible_dont_enable_host_nonhost_crosstool_features
# @flag --noincompatible_dont_enable_host_nonhost_crosstool_features
# @flag --incompatible_enable_android_toolchain_resolution
# @flag --noincompatible_enable_android_toolchain_resolution
# @flag --incompatible_enable_apple_toolchain_resolution
# @flag --noincompatible_enable_apple_toolchain_resolution
# @flag --incompatible_linkopts_in_user_link_flags
# @flag --noincompatible_linkopts_in_user_link_flags
# @flag --incompatible_make_thinlto_command_lines_standalone
# @flag --noincompatible_make_thinlto_command_lines_standalone
# @flag --incompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --noincompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --incompatible_remove_legacy_whole_archive
# @flag --noincompatible_remove_legacy_whole_archive
# @flag --incompatible_require_ctx_in_configure_features
# @flag --noincompatible_require_ctx_in_configure_features
# @flag --interface_shared_objects
# @flag --nointerface_shared_objects
# @option --ios_sdk_version <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --macos_sdk_version <value>            a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --minimum_os_version <string>
# @option --platform_mappings <path>             a relative path
# @option --platforms[`_choice_target`] <label>
# @option --python2_path <string>
# @option --python3_path <string>
# @option --python_path <string>
# @option --python_top[`_choice_target`] <label>
# @option --target_platform_fallback[`_choice_target`] <label>
# @option --tvos_sdk_version <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_sdk_version <value>          a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xcode_version <string>
# @option --xcode_version_config[`_choice_target`] <label>
# @flag --apple_enable_auto_dsym_dbg
# @flag --noapple_enable_auto_dsym_dbg
# @flag --apple_generate_dsym
# @flag --noapple_generate_dsym
# @flag --build
# @flag --nobuild
# @flag --build_runfile_links
# @flag --nobuild_runfile_links
# @flag --build_runfile_manifests
# @flag --nobuild_runfile_manifests
# @flag --build_test_dwp
# @flag --nobuild_test_dwp
# @option --cc_proto_library_header_suffixes <value>  comma-separated list of options
# @option --cc_proto_library_source_suffixes <value>  comma-separated list of options
# @flag --experimental_proto_descriptor_sets_include_source_info
# @flag --noexperimental_proto_descriptor_sets_include_source_info
# @flag --experimental_proto_extra_actions
# @flag --noexperimental_proto_extra_actions
# @flag --experimental_run_validations
# @flag --noexperimental_run_validations
# @flag --experimental_save_feature_state
# @flag --noexperimental_save_feature_state
# @flag --experimental_use_validation_aspect
# @flag --noexperimental_use_validation_aspect
# @option --fission <value>                      a set of compilation modes
# @flag --incompatible_always_include_files_in_data
# @flag --noincompatible_always_include_files_in_data
# @flag --legacy_external_runfiles
# @flag --nolegacy_external_runfiles
# @flag --objc_generate_linkmap
# @flag --noobjc_generate_linkmap
# @option --output_groups <value>                comma-separated list of options may be used multiple times
# @flag --run_validations
# @flag --norun_validations
# @flag --save_temps
# @flag --nosave_temps
# @option --action_env <value>                   a 'name=value' assignment with an optional value part may be used multiple times
# @option --android_cpu <string>
# @flag --android_databinding_use_androidx
# @flag --noandroid_databinding_use_androidx
# @flag --android_databinding_use_v3_4_args
# @flag --noandroid_databinding_use_v3_4_args
# @option --android_dynamic_mode[off|default|fully]
# @option --android_manifest_merger_order[alphabetical|alphabetical_by_configuration|dependency]
# @flag --android_resource_shrinking
# @flag --noandroid_resource_shrinking
# @option --apple_bitcode <value>                'mode' or 'platform=mode', where 'mode' is none, embedded_markers or embedded, and 'platform' is ios, visionos, watchos, tvos, macos or catalyst may be used multiple times
# @option --aspects <value>                      comma-separated list of options may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @option --build_python_zip[auto|yes|no] <value>  a tri-state
# @option --nobuild_python_zip[auto|yes|no] <value>  a tri-state
# @option --catalyst_cpus <value>                comma-separated list of options may be used multiple times
# @flag --collect_code_coverage
# @flag --nocollect_code_coverage
# @option -c --compilation_mode[fastbuild|dbg|opt]
# @option --conlyopt <string>                    may be used multiple times
# @option --copt <string>                        may be used multiple times
# @option --cpu <string>
# @option --cs_fdo_absolute_path <string>
# @option --cs_fdo_instrument <string>
# @option --cs_fdo_profile[`_choice_target`] <label>
# @option --cxxopt <string>                      may be used multiple times
# @option --define <value>                       a 'name=value' assignment may be used multiple times
# @option --dynamic_mode[off|default|fully]
# @flag --enable_fdo_profile_absolute_path
# @flag --noenable_fdo_profile_absolute_path
# @option --enable_runfiles[auto|yes|no] <value>  a tri-state
# @option --noenable_runfiles[auto|yes|no] <value>  a tri-state
# @option --experimental_action_listener[`_choice_target`] may be used multiple times <label>
# @flag --experimental_android_compress_java_resources
# @flag --noexperimental_android_compress_java_resources
# @flag --experimental_android_databinding_v2
# @flag --noexperimental_android_databinding_v2
# @flag --experimental_android_resource_shrinking
# @flag --noexperimental_android_resource_shrinking
# @flag --experimental_android_rewrite_dexes_with_rex
# @flag --noexperimental_android_rewrite_dexes_with_rex
# @flag --experimental_collect_code_coverage_for_generated_files
# @flag --noexperimental_collect_code_coverage_for_generated_files
# @option --experimental_convenience_symlinks[normal|clean|ignore|log_only]
# @option --noexperimental_convenience_symlinks[normal|clean|ignore|log_only]
# @flag --experimental_convenience_symlinks_bep_event
# @flag --noexperimental_convenience_symlinks_bep_event
# @option --experimental_multi_cpu <value>       comma-separated list of options may be used multiple times
# @option --experimental_objc_fastbuild_options <value>  comma-separated list of options
# @flag --experimental_omitfp
# @flag --noexperimental_omitfp
# @flag --experimental_platform_in_output_dir
# @flag --noexperimental_platform_in_output_dir
# @flag --experimental_use_llvm_covmap
# @flag --noexperimental_use_llvm_covmap
# @option --fat_apk_cpu <value>                  comma-separated list of options
# @flag --fat_apk_hwasan
# @flag --nofat_apk_hwasan
# @option --fdo_instrument <string>
# @option --fdo_optimize <string>
# @option --fdo_prefetch_hints[`_choice_target`] <label>
# @option --fdo_profile[`_choice_target`] <label>
# @option --features <string>                    may be used multiple times
# @flag --force_pic
# @flag --noforce_pic
# @option --host_action_env <value>              a 'name=value' assignment with an optional value part may be used multiple times
# @option --host_compilation_mode[fastbuild|dbg|opt]
# @option --host_conlyopt <string>               may be used multiple times
# @option --host_copt <string>                   may be used multiple times
# @option --host_cpu <string>
# @option --host_cxxopt <string>                 may be used multiple times
# @option --host_features <string>               may be used multiple times
# @option --host_force_python[PY2|PY3]
# @option --host_linkopt <string>                may be used multiple times
# @option --host_macos_minimum_os <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --host_per_file_copt <path>            a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --host_swiftcopt <string>              may be used multiple times
# @flag --incompatible_avoid_conflict_dlls
# @flag --noincompatible_avoid_conflict_dlls
# @flag --incompatible_merge_genfiles_directory
# @flag --noincompatible_merge_genfiles_directory
# @flag --incompatible_use_host_features
# @flag --noincompatible_use_host_features
# @flag --incompatible_use_platforms_repo_for_constraints
# @flag --noincompatible_use_platforms_repo_for_constraints
# @flag --instrument_test_targets
# @flag --noinstrument_test_targets
# @option --instrumentation_filter <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ios_minimum_os <value>               a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --ios_multi_cpus <value>               comma-separated list of options may be used multiple times
# @flag --legacy_whole_archive
# @flag --nolegacy_whole_archive
# @option --linkopt <string>                     may be used multiple times
# @option --ltobackendopt <string>               may be used multiple times
# @option --ltoindexopt <string>                 may be used multiple times
# @option --macos_cpus <value>                   comma-separated list of options may be used multiple times
# @option --macos_minimum_os <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --objc_debug_with_GLIBCXX
# @flag --noobjc_debug_with_GLIBCXX
# @flag --objc_enable_binary_stripping
# @flag --noobjc_enable_binary_stripping
# @option --objccopt <string>                    may be used multiple times
# @option --per_file_copt <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --per_file_ltobackendopt <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --platform_suffix <string>
# @option --propeller_optimize[`_choice_target`] <label>
# @option --propeller_optimize_absolute_cc_profile <string>
# @option --propeller_optimize_absolute_ld_profile <string>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @option --run_under <value>                    a prefix in front of command
# @flag --share_native_deps
# @flag --noshare_native_deps
# @flag --stamp
# @flag --nostamp
# @option --strip[always|sometimes|never]
# @option --stripopt <string>                    may be used multiple times
# @option --swiftcopt <string>                   may be used multiple times
# @option --symlink_prefix <string>
# @option --tvos_cpus <value>                    comma-separated list of options may be used multiple times
# @option --tvos_minimum_os <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --visionos_cpus <value>                comma-separated list of options may be used multiple times
# @option --watchos_cpus <value>                 comma-separated list of options may be used multiple times
# @option --watchos_minimum_os <value>           a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xbinary_fdo[`_choice_target`] <label>
# @option --auto_cpu_environment_group[`_choice_target`] <label>
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @flag --check_licenses
# @flag --nocheck_licenses
# @flag --check_visibility
# @flag --nocheck_visibility
# @flag --desugar_for_android
# @flag --nodesugar_for_android
# @flag --desugar_java8_libs
# @flag --nodesugar_java8_libs
# @flag --enforce_constraints
# @flag --noenforce_constraints
# @flag --experimental_allow_android_library_deps_without_srcs
# @flag --noexperimental_allow_android_library_deps_without_srcs
# @flag --experimental_check_desugar_deps
# @flag --noexperimental_check_desugar_deps
# @flag --experimental_docker_privileged
# @flag --noexperimental_docker_privileged
# @option --experimental_import_deps_checking[off|warning|error]
# @option --experimental_repository_hash_file <string>
# @flag --experimental_sandboxfs_map_symlink_targets
# @flag --noexperimental_sandboxfs_map_symlink_targets
# @option --experimental_strict_java_deps[off|warn|error|strict|default]
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --incompatible_check_testonly_for_output_files
# @flag --noincompatible_check_testonly_for_output_files
# @flag --incompatible_disable_native_android_rules
# @flag --noincompatible_disable_native_android_rules
# @flag --incompatible_disable_native_apple_binary_rule
# @flag --noincompatible_disable_native_apple_binary_rule
# @flag --incompatible_force_strict_header_check_from_starlark
# @flag --noincompatible_force_strict_header_check_from_starlark
# @flag --incompatible_legacy_local_fallback
# @flag --noincompatible_legacy_local_fallback
# @flag --incompatible_validate_top_level_header_inclusions
# @flag --noincompatible_validate_top_level_header_inclusions
# @option --sandbox_add_mount_pair <path>        a single path or a 'source:target' pair may be used multiple times
# @option --sandbox_block_path <string>          may be used multiple times
# @flag --sandbox_default_allow_network
# @flag --nosandbox_default_allow_network
# @flag --sandbox_fake_hostname
# @flag --nosandbox_fake_hostname
# @flag --sandbox_fake_username
# @flag --nosandbox_fake_username
# @option --sandbox_writable_path <string>       may be used multiple times
# @flag --strict_filesets
# @flag --nostrict_filesets
# @option --strict_proto_deps[off|warn|error|strict|default]
# @option --strict_public_imports[off|warn|error|strict|default]
# @flag --strict_system_includes
# @flag --nostrict_system_includes
# @option --target_environment[`_choice_target`] may be used multiple times <label>
# @option --apk_signing_method[v1|v2|v1_v2|v4]
# @flag --device_debug_entitlements
# @flag --nodevice_debug_entitlements
# @option --ios_signing_cert_name <string>
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_legacy_py_provider
# @flag --noincompatible_disallow_legacy_py_provider
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @flag --allow_analysis_failures
# @flag --noallow_analysis_failures
# @option --analysis_testing_deps_limit <integer>
# @flag --break_build_on_parallel_dex2oat_failure
# @flag --nobreak_build_on_parallel_dex2oat_failure
# @flag --check_tests_up_to_date
# @flag --nocheck_tests_up_to_date
# @flag --experimental_android_use_parallel_dex2oat
# @flag --noexperimental_android_use_parallel_dex2oat
# @option --flaky_test_attempts <value>          a positive integer, the string "default", or test_regex@attempts.
# @flag --ios_memleaks
# @flag --noios_memleaks
# @option --ios_simulator_device <string>
# @option --ios_simulator_version <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --local_test_jobs[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --runs_per_test <value>                a positive integer or test_regex@runs.
# @option --test_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --test_keep_going
# @flag --notest_keep_going
# @option --test_strategy <string>
# @option --test_timeout <value>                 a single integer or comma-separated list of 4 integers
# @option --test_tmpdir <path>
# @option --tvos_simulator_device <string>
# @option --tvos_simulator_version <value>       a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_simulator_device <string>
# @option --watchos_simulator_version <value>    a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --zip_undeclared_test_outputs
# @flag --nozip_undeclared_test_outputs
# @option --aspect_deps[off|conservative|precise]
# @flag --consistent_labels
# @flag --noconsistent_labels
# @flag --deduplicate_depsets
# @flag --nodeduplicate_depsets
# @flag --graph:factored
# @flag --nograph:factored
# @option --graph:node_limit <integer>
# @flag --implicit_deps
# @flag --noimplicit_deps
# @flag --include_artifacts
# @flag --noinclude_artifacts
# @flag --include_aspects
# @flag --noinclude_aspects
# @flag --include_commandline
# @flag --noinclude_commandline
# @flag --include_file_write_contents
# @flag --noinclude_file_write_contents
# @flag --include_param_files
# @flag --noinclude_param_files
# @flag --incompatible_display_source_file_location
# @flag --noincompatible_display_source_file_location
# @flag --incompatible_package_group_includes_double_slash
# @flag --noincompatible_package_group_includes_double_slash
# @flag --infer_universe_scope
# @flag --noinfer_universe_scope
# @flag --line_terminator_null
# @flag --noline_terminator_null
# @flag --nodep_deps
# @flag --nonodep_deps
# @option --output <string>
# @flag --proto:default_values
# @flag --noproto:default_values
# @flag --proto:definition_stack
# @flag --noproto:definition_stack
# @flag --proto:flatten_selects
# @flag --noproto:flatten_selects
# @flag --proto:include_synthetic_attribute_hash
# @flag --noproto:include_synthetic_attribute_hash
# @flag --proto:instantiation_stack
# @flag --noproto:instantiation_stack
# @flag --proto:locations
# @flag --noproto:locations
# @option --proto:output_rule_attrs <value>      comma-separated list of options
# @flag --proto:rule_inputs_and_outputs
# @flag --noproto:rule_inputs_and_outputs
# @option --query_file <string>
# @flag --relative_locations
# @flag --norelative_locations
# @flag --skyframe_state
# @flag --noskyframe_state
# @flag --tool_deps
# @flag --notool_deps
# @option --universe_scope <value>               comma-separated list of options
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --collapse_duplicate_defines
# @flag --nocollapse_duplicate_defines
# @flag --experimental_filter_library_jar_with_program_jar
# @flag --noexperimental_filter_library_jar_with_program_jar
# @flag --experimental_inmemory_dotd_files
# @flag --noexperimental_inmemory_dotd_files
# @flag --experimental_inmemory_jdeps_files
# @flag --noexperimental_inmemory_jdeps_files
# @flag --experimental_objc_include_scanning
# @flag --noexperimental_objc_include_scanning
# @flag --experimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --noexperimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --experimental_retain_test_configuration_across_testonly
# @flag --noexperimental_retain_test_configuration_across_testonly
# @flag --experimental_starlark_cc_import
# @flag --noexperimental_starlark_cc_import
# @flag --experimental_unsupported_and_brittle_include_scanning
# @flag --noexperimental_unsupported_and_brittle_include_scanning
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --incremental_dexing
# @flag --noincremental_dexing
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @flag --objc_use_dotd_pruning
# @flag --noobjc_use_dotd_pruning
# @flag --process_headers_in_dependencies
# @flag --noprocess_headers_in_dependencies
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --trim_test_configuration
# @flag --notrim_test_configuration
# @flag --use_singlejar_apkbuilder
# @flag --nouse_singlejar_apkbuilder
# @flag --announce
# @flag --noannounce
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --debug_spawn_scheduler
# @flag --nodebug_spawn_scheduler
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @flag --experimental_collect_local_sandbox_action_metrics
# @flag --noexperimental_collect_local_sandbox_action_metrics
# @flag --experimental_docker_verbose
# @flag --noexperimental_docker_verbose
# @flag --experimental_materialize_param_files_directly
# @flag --noexperimental_materialize_param_files_directly
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --explain <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @flag --materialize_param_files
# @flag --nomaterialize_param_files
# @option --max_config_changes_to_show <integer>
# @option --max_test_output_bytes <integer>
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --output_filter <value>                a valid Java regular expression
# @option --profile <path>
# @option --progress_report_interval <value>     an integer in 0-3600 range
# @option --remote_print_execution_messages[failure|success|all]
# @flag --sandbox_debug
# @flag --nosandbox_debug
# @option --show_result <integer>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option -s[true|pretty_print|false]
# @option --subcommands[true|pretty_print|false]
# @option --nosubcommands[true|pretty_print|false]
# @option --test_output[summary|errors|all|streamed]
# @option --test_summary[short|terse|detailed|none|testcase]
# @option --tool_tag <string>
# @option --toolchain_resolution_debug <path>    a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @flag --verbose_explanations
# @flag --noverbose_explanations
# @flag --verbose_failures
# @flag --noverbose_failures
# @option --aspects_parameters <value>           a 'name=value' assignment may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --flag_alias <value>                   a 'name=value' flag alias may be used multiple times
# @flag --incompatible_default_to_explicit_init_py
# @flag --noincompatible_default_to_explicit_init_py
# @flag --incompatible_py2_outputs_are_suffixed
# @flag --noincompatible_py2_outputs_are_suffixed
# @flag --incompatible_py3_is_default
# @flag --noincompatible_py3_is_default
# @flag --incompatible_use_python_toolchains
# @flag --noincompatible_use_python_toolchains
# @option --python_version[PY2|PY3]
# @option --target_pattern_file <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_cache_eviction_retries <integer>
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @flag --allow_analysis_cache_discard
# @flag --noallow_analysis_cache_discard
# @option --auto_output_filter[none|all|packages|subpackages]
# @flag --build_manual_tests
# @flag --nobuild_manual_tests
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --build_tag_filters <value>            comma-separated list of options
# @flag --build_tests_only
# @flag --nobuild_tests_only
# @option -t[auto|yes|no]                        <value>  a tri-state
# @option --cache_test_results[auto|yes|no]      <value>  a tri-state
# @option --nocache_test_results[auto|yes|no]    <value>  a tri-state
# @option --color[yes|no|auto]
# @option --combined_report[none|lcov]
# @flag --compile_one_dependency
# @flag --nocompile_one_dependency
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --discard_analysis_cache
# @flag --nodiscard_analysis_cache
# @option --disk_cache <path>
# @option --embed_label <value>                  a one-line string
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @option --execution_log_binary_file <path>
# @option --execution_log_json_file <path>
# @flag --execution_log_sort
# @flag --noexecution_log_sort
# @flag --expand_test_suites
# @flag --noexpand_test_suites
# @flag --experimental_cancel_concurrent_tests
# @flag --noexperimental_cancel_concurrent_tests
# @option --experimental_execution_log_file <path>
# @flag --experimental_execution_log_spawn_metrics
# @flag --noexperimental_execution_log_spawn_metrics
# @option --experimental_extra_action_filter <path>  a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @flag --experimental_extra_action_top_level_only
# @flag --noexperimental_extra_action_top_level_only
# @flag --experimental_fetch_all_coverage_outputs
# @flag --noexperimental_fetch_all_coverage_outputs
# @flag --experimental_generate_llvm_lcov
# @flag --noexperimental_generate_llvm_lcov
# @flag --experimental_j2objc_header_map
# @flag --noexperimental_j2objc_header_map
# @flag --experimental_j2objc_shorter_header_path
# @flag --noexperimental_j2objc_shorter_header_path
# @option --experimental_java_classpath[off|javabuilder|bazel]
# @flag --experimental_limit_android_lint_to_android_constrained_java
# @flag --noexperimental_limit_android_lint_to_android_constrained_java
# @flag --experimental_prioritize_local_actions
# @flag --noexperimental_prioritize_local_actions
# @flag --experimental_run_android_lint_on_java_rules
# @flag --noexperimental_run_android_lint_on_java_rules
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_spawn_scheduler
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @flag --explicit_java_test_deps
# @flag --noexplicit_java_test_deps
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @option --host_java_launcher[`_choice_target`] <label>
# @option --host_javacopt <string>               may be used multiple times
# @option --host_jvmopt <string>                 may be used multiple times
# @flag --ignore_unsupported_sandboxing
# @flag --noignore_unsupported_sandboxing
# @flag --incompatible_check_sharding_support
# @flag --noincompatible_check_sharding_support
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_dont_use_javasourceinfoprovider
# @flag --noincompatible_dont_use_javasourceinfoprovider
# @flag --incompatible_exclusive_test_sandboxed
# @flag --noincompatible_exclusive_test_sandboxed
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @flag --incompatible_strict_action_env
# @flag --noincompatible_strict_action_env
# @option --j2objc_translation_flags <value>     comma-separated list of options may be used multiple times
# @flag --java_debug
# @flag --java_deps
# @flag --nojava_deps
# @flag --java_header_compilation
# @flag --nojava_header_compilation
# @option --java_language_version <string>
# @option --java_launcher[`_choice_target`] <label>
# @option --java_runtime_version <string>
# @option --javacopt <string>                    may be used multiple times
# @option --jvmopt <string>                      may be used multiple times
# @option --legacy_main_dex_list_generator[`_choice_target`] <label>
# @option --local_cpu_resources <value>          an integer, or "HOST_CPUS", optionally followed by [-|*]<float>.
# @option --local_extra_resources <value>        a named float, 'name=value' may be used multiple times
# @option --local_ram_resources <value>          an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --local_termination_grace_seconds <integer>
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @option --plugin[`_choice_target`] may be used multiple times <label>
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @option --proguard_top[`_choice_target`] <label>
# @option --proto_compiler[`_choice_target`] <label>
# @option --proto_toolchain_for_cc[`_choice_target`] <label>
# @option --proto_toolchain_for_j2objc[`_choice_target`] <label>
# @option --proto_toolchain_for_java[`_choice_target`] <label>
# @option --proto_toolchain_for_javalite[`_choice_target`] <label>
# @option --protocopt <string>                   may be used multiple times
# @flag --runs_per_test_detects_flakes
# @flag --noruns_per_test_detects_flakes
# @option --shell_executable <path>
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --test_arg <string>                    may be used multiple times
# @option --test_filter <string>
# @option --test_lang_filters <value>            comma-separated list of options
# @option --test_result_expiration <integer>
# @flag --test_runner_fail_fast
# @flag --notest_runner_fail_fast
# @option --test_sharding_strategy[explicit|disabled]
# @option --test_size_filters[small|medium|large|enormous]  comma-separated list of values
# @option --test_tag_filters <value>             comma-separated list of options
# @option --test_timeout_filters[short|moderate|long|eternal]  comma-separated list of values
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --tool_java_language_version <string>
# @option --tool_java_runtime_version <string>
# @option --ui_actions_shown <integer>
# @flag --use_ijars
# @flag --nouse_ijars
# @flag --watchfs
# @flag --nowatchfs
# @option --workspace_status_command <path>
# @arg targets*[`_choice_target`]
aquery() {
    :;
}
# }} bazel aquery

# {{ bazel build
# @cmd Builds the specified targets.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --check_up_to_date
# @flag --nocheck_up_to_date
# @option --dynamic_local_execution_delay <integer>
# @option --dynamic_local_strategy <value>       a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --dynamic_remote_strategy <value>      a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --experimental_docker_image <string>
# @flag --experimental_docker_use_customized_images
# @flag --noexperimental_docker_use_customized_images
# @flag --experimental_dynamic_exclude_tools
# @flag --noexperimental_dynamic_exclude_tools
# @option --experimental_dynamic_local_load_factor <double>
# @option --experimental_dynamic_slow_remote_time <value>  An immutable length of time.
# @flag --experimental_enable_docker_sandbox
# @flag --noexperimental_enable_docker_sandbox
# @flag --experimental_inprocess_symlink_creation
# @flag --noexperimental_inprocess_symlink_creation
# @option --experimental_oom_more_eagerly_threshold <integer>
# @flag --experimental_persistent_javac
# @flag --experimental_remotable_source_manifests
# @flag --noexperimental_remotable_source_manifests
# @option --experimental_sandbox_async_tree_delete_idle_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --experimental_sandboxfs_path <string>
# @flag --experimental_split_coverage_postprocessing
# @flag --noexperimental_split_coverage_postprocessing
# @flag --experimental_split_xml_generation
# @flag --noexperimental_split_xml_generation
# @flag --experimental_strict_fileset_output
# @flag --noexperimental_strict_fileset_output
# @option --experimental_total_worker_memory_limit_mb <value>  an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --experimental_use_hermetic_linux_sandbox
# @flag --noexperimental_use_hermetic_linux_sandbox
# @option --experimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --experimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --experimental_windows_sandbox_path <string>
# @flag --experimental_worker_as_resource
# @flag --noexperimental_worker_as_resource
# @flag --experimental_worker_cancellation
# @flag --noexperimental_worker_cancellation
# @flag --experimental_worker_multiplex
# @flag --noexperimental_worker_multiplex
# @flag --experimental_worker_multiplex_sandboxing
# @flag --noexperimental_worker_multiplex_sandboxing
# @flag --experimental_worker_strict_flagfiles
# @flag --noexperimental_worker_strict_flagfiles
# @option --genrule_strategy <value>             comma-separated list of options
# @option --high_priority_workers <string>       may be used multiple times
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag --incompatible_sandbox_hermetic_tmp
# @flag --noincompatible_sandbox_hermetic_tmp
# @flag --internal_spawn_scheduler
# @flag --nointernal_spawn_scheduler
# @option -j --jobs[auto|HOST_CPUS|HOST_RAM]     <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --modify_execution_info* <regex=[+-]key,regex=[+-]key,>
# @flag --persistent_android_dex_desugar
# @flag --persistent_android_resource_processor
# @flag --persistent_multiplex_android_dex_desugar
# @flag --persistent_multiplex_android_resource_processor
# @flag --persistent_multiplex_android_tools
# @flag --reuse_sandbox_directories
# @flag --noreuse_sandbox_directories
# @option --sandbox_base <string>
# @flag --sandbox_explicit_pseudoterminal
# @flag --nosandbox_explicit_pseudoterminal
# @option --sandbox_tmpfs_path <path>            an absolute path may be used multiple times
# @option --spawn_strategy <value>               comma-separated list of options
# @option --strategy <value>                     a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --strategy_regexp <value>              a '<RegexFilter>=value[,value]' assignment may be used multiple times
# @option --worker_extra_flag <value>            a 'name=value' assignment may be used multiple times
# @option --worker_max_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --worker_max_multiplex_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag --worker_quit_after_build
# @flag --noworker_quit_after_build
# @flag --worker_sandboxing
# @flag --noworker_sandboxing
# @flag --worker_verbose
# @flag --noworker_verbose
# @option --android_compiler <string>
# @option --android_crosstool_top[`_choice_target`] <label>
# @option --android_grte_top[`_choice_target`] <label>
# @option --android_manifest_merger[legacy|android|force_android]
# @option --android_platforms[`_choice_target`] <label>
# @option --android_sdk[`_choice_target`] <label>
# @option --apple_compiler <string>
# @option --apple_crosstool_top[`_choice_target`] <label>
# @option --apple_grte_top[`_choice_target`] <label>
# @option --cc_output_directory_tag <string>
# @option --compiler <string>
# @option --coverage_output_generator[`_choice_target`] <label>
# @option --coverage_report_generator[`_choice_target`] <label>
# @option --coverage_support[`_choice_target`] <label>
# @option --crosstool_top[`_choice_target`] <label>
# @option --custom_malloc[`_choice_target`] <label>
# @option --experimental_add_exec_constraints_to_targets <value>  a '<RegexFilter>=<label1>[,<label2>,...]' assignment may be used multiple times
# @flag --experimental_enable_objc_cc_deps
# @flag --noexperimental_enable_objc_cc_deps
# @flag --experimental_include_xcode_execution_requirements
# @flag --noexperimental_include_xcode_execution_requirements
# @flag --experimental_prefer_mutual_xcode
# @flag --noexperimental_prefer_mutual_xcode
# @option --extra_execution_platforms <value>    comma-separated list of options may be used multiple times
# @option --extra_toolchains <value>             comma-separated list of options may be used multiple times
# @option --grte_top[`_choice_target`] <label>
# @option --host_compiler <string>
# @option --host_crosstool_top[`_choice_target`] <label>
# @option --host_grte_top[`_choice_target`] <label>
# @option --host_platform[`_choice_target`] <label>
# @flag --incompatible_disable_expand_if_all_available_in_flag_set
# @flag --noincompatible_disable_expand_if_all_available_in_flag_set
# @flag --incompatible_disable_runtimes_filegroups
# @flag --noincompatible_disable_runtimes_filegroups
# @flag --incompatible_dont_emit_static_libgcc
# @flag --noincompatible_dont_emit_static_libgcc
# @flag --incompatible_dont_enable_host_nonhost_crosstool_features
# @flag --noincompatible_dont_enable_host_nonhost_crosstool_features
# @flag --incompatible_enable_android_toolchain_resolution
# @flag --noincompatible_enable_android_toolchain_resolution
# @flag --incompatible_enable_apple_toolchain_resolution
# @flag --noincompatible_enable_apple_toolchain_resolution
# @flag --incompatible_linkopts_in_user_link_flags
# @flag --noincompatible_linkopts_in_user_link_flags
# @flag --incompatible_make_thinlto_command_lines_standalone
# @flag --noincompatible_make_thinlto_command_lines_standalone
# @flag --incompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --noincompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --incompatible_remove_legacy_whole_archive
# @flag --noincompatible_remove_legacy_whole_archive
# @flag --incompatible_require_ctx_in_configure_features
# @flag --noincompatible_require_ctx_in_configure_features
# @flag --interface_shared_objects
# @flag --nointerface_shared_objects
# @option --ios_sdk_version <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --macos_sdk_version <value>            a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --minimum_os_version <string>
# @option --platform_mappings <path>             a relative path
# @option --platforms[`_choice_target`] <label>
# @option --python2_path <string>
# @option --python3_path <string>
# @option --python_path <string>
# @option --python_top[`_choice_target`] <label>
# @option --target_platform_fallback[`_choice_target`] <label>
# @option --tvos_sdk_version <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_sdk_version <value>          a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xcode_version <string>
# @option --xcode_version_config[`_choice_target`] <label>
# @flag --apple_enable_auto_dsym_dbg
# @flag --noapple_enable_auto_dsym_dbg
# @flag --apple_generate_dsym
# @flag --noapple_generate_dsym
# @flag --build
# @flag --nobuild
# @flag --build_runfile_links
# @flag --nobuild_runfile_links
# @flag --build_runfile_manifests
# @flag --nobuild_runfile_manifests
# @flag --build_test_dwp
# @flag --nobuild_test_dwp
# @option --cc_proto_library_header_suffixes <value>  comma-separated list of options
# @option --cc_proto_library_source_suffixes <value>  comma-separated list of options
# @flag --experimental_proto_descriptor_sets_include_source_info
# @flag --noexperimental_proto_descriptor_sets_include_source_info
# @flag --experimental_proto_extra_actions
# @flag --noexperimental_proto_extra_actions
# @flag --experimental_run_validations
# @flag --noexperimental_run_validations
# @flag --experimental_save_feature_state
# @flag --noexperimental_save_feature_state
# @flag --experimental_use_validation_aspect
# @flag --noexperimental_use_validation_aspect
# @option --fission <value>                      a set of compilation modes
# @flag --incompatible_always_include_files_in_data
# @flag --noincompatible_always_include_files_in_data
# @flag --legacy_external_runfiles
# @flag --nolegacy_external_runfiles
# @flag --objc_generate_linkmap
# @flag --noobjc_generate_linkmap
# @option --output_groups <value>                comma-separated list of options may be used multiple times
# @flag --run_validations
# @flag --norun_validations
# @flag --save_temps
# @flag --nosave_temps
# @option --action_env <value>                   a 'name=value' assignment with an optional value part may be used multiple times
# @option --android_cpu <string>
# @flag --android_databinding_use_androidx
# @flag --noandroid_databinding_use_androidx
# @flag --android_databinding_use_v3_4_args
# @flag --noandroid_databinding_use_v3_4_args
# @option --android_dynamic_mode[off|default|fully]
# @option --android_manifest_merger_order[alphabetical|alphabetical_by_configuration|dependency]
# @flag --android_resource_shrinking
# @flag --noandroid_resource_shrinking
# @option --apple_bitcode <value>                'mode' or 'platform=mode', where 'mode' is none, embedded_markers or embedded, and 'platform' is ios, visionos, watchos, tvos, macos or catalyst may be used multiple times
# @option --aspects <value>                      comma-separated list of options may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @option --build_python_zip[auto|yes|no] <value>  a tri-state
# @option --nobuild_python_zip[auto|yes|no] <value>  a tri-state
# @option --catalyst_cpus <value>                comma-separated list of options may be used multiple times
# @flag --collect_code_coverage
# @flag --nocollect_code_coverage
# @option -c --compilation_mode[fastbuild|dbg|opt]
# @option --conlyopt <string>                    may be used multiple times
# @option --copt <string>                        may be used multiple times
# @option --cpu <string>
# @option --cs_fdo_absolute_path <string>
# @option --cs_fdo_instrument <string>
# @option --cs_fdo_profile[`_choice_target`] <label>
# @option --cxxopt <string>                      may be used multiple times
# @option --define <value>                       a 'name=value' assignment may be used multiple times
# @option --dynamic_mode[off|default|fully]
# @flag --enable_fdo_profile_absolute_path
# @flag --noenable_fdo_profile_absolute_path
# @option --enable_runfiles[auto|yes|no] <value>  a tri-state
# @option --noenable_runfiles[auto|yes|no] <value>  a tri-state
# @option --experimental_action_listener[`_choice_target`] may be used multiple times <label>
# @flag --experimental_android_compress_java_resources
# @flag --noexperimental_android_compress_java_resources
# @flag --experimental_android_databinding_v2
# @flag --noexperimental_android_databinding_v2
# @flag --experimental_android_resource_shrinking
# @flag --noexperimental_android_resource_shrinking
# @flag --experimental_android_rewrite_dexes_with_rex
# @flag --noexperimental_android_rewrite_dexes_with_rex
# @flag --experimental_collect_code_coverage_for_generated_files
# @flag --noexperimental_collect_code_coverage_for_generated_files
# @option --experimental_convenience_symlinks[normal|clean|ignore|log_only]
# @option --noexperimental_convenience_symlinks[normal|clean|ignore|log_only]
# @flag --experimental_convenience_symlinks_bep_event
# @flag --noexperimental_convenience_symlinks_bep_event
# @option --experimental_multi_cpu <value>       comma-separated list of options may be used multiple times
# @option --experimental_objc_fastbuild_options <value>  comma-separated list of options
# @flag --experimental_omitfp
# @flag --noexperimental_omitfp
# @flag --experimental_platform_in_output_dir
# @flag --noexperimental_platform_in_output_dir
# @flag --experimental_use_llvm_covmap
# @flag --noexperimental_use_llvm_covmap
# @option --fat_apk_cpu <value>                  comma-separated list of options
# @flag --fat_apk_hwasan
# @flag --nofat_apk_hwasan
# @option --fdo_instrument <string>
# @option --fdo_optimize <string>
# @option --fdo_prefetch_hints[`_choice_target`] <label>
# @option --fdo_profile[`_choice_target`] <label>
# @option --features <string>                    may be used multiple times
# @flag --force_pic
# @flag --noforce_pic
# @option --host_action_env <value>              a 'name=value' assignment with an optional value part may be used multiple times
# @option --host_compilation_mode[fastbuild|dbg|opt]
# @option --host_conlyopt <string>               may be used multiple times
# @option --host_copt <string>                   may be used multiple times
# @option --host_cpu <string>
# @option --host_cxxopt <string>                 may be used multiple times
# @option --host_features <string>               may be used multiple times
# @option --host_force_python[PY2|PY3]
# @option --host_linkopt <string>                may be used multiple times
# @option --host_macos_minimum_os <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --host_per_file_copt <path>            a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --host_swiftcopt <string>              may be used multiple times
# @flag --incompatible_avoid_conflict_dlls
# @flag --noincompatible_avoid_conflict_dlls
# @flag --incompatible_merge_genfiles_directory
# @flag --noincompatible_merge_genfiles_directory
# @flag --incompatible_use_host_features
# @flag --noincompatible_use_host_features
# @flag --incompatible_use_platforms_repo_for_constraints
# @flag --noincompatible_use_platforms_repo_for_constraints
# @flag --instrument_test_targets
# @flag --noinstrument_test_targets
# @option --instrumentation_filter <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ios_minimum_os <value>               a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --ios_multi_cpus <value>               comma-separated list of options may be used multiple times
# @flag --legacy_whole_archive
# @flag --nolegacy_whole_archive
# @option --linkopt <string>                     may be used multiple times
# @option --ltobackendopt <string>               may be used multiple times
# @option --ltoindexopt <string>                 may be used multiple times
# @option --macos_cpus <value>                   comma-separated list of options may be used multiple times
# @option --macos_minimum_os <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --objc_debug_with_GLIBCXX
# @flag --noobjc_debug_with_GLIBCXX
# @flag --objc_enable_binary_stripping
# @flag --noobjc_enable_binary_stripping
# @option --objccopt <string>                    may be used multiple times
# @option --per_file_copt <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --per_file_ltobackendopt <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --platform_suffix <string>
# @option --propeller_optimize[`_choice_target`] <label>
# @option --propeller_optimize_absolute_cc_profile <string>
# @option --propeller_optimize_absolute_ld_profile <string>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @option --run_under <value>                    a prefix in front of command
# @flag --share_native_deps
# @flag --noshare_native_deps
# @flag --stamp
# @flag --nostamp
# @option --strip[always|sometimes|never]
# @option --stripopt <string>                    may be used multiple times
# @option --swiftcopt <string>                   may be used multiple times
# @option --symlink_prefix <string>
# @option --tvos_cpus <value>                    comma-separated list of options may be used multiple times
# @option --tvos_minimum_os <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --visionos_cpus <value>                comma-separated list of options may be used multiple times
# @option --watchos_cpus <value>                 comma-separated list of options may be used multiple times
# @option --watchos_minimum_os <value>           a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xbinary_fdo[`_choice_target`] <label>
# @option --auto_cpu_environment_group[`_choice_target`] <label>
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @flag --check_licenses
# @flag --nocheck_licenses
# @flag --check_visibility
# @flag --nocheck_visibility
# @flag --desugar_for_android
# @flag --nodesugar_for_android
# @flag --desugar_java8_libs
# @flag --nodesugar_java8_libs
# @flag --enforce_constraints
# @flag --noenforce_constraints
# @flag --experimental_allow_android_library_deps_without_srcs
# @flag --noexperimental_allow_android_library_deps_without_srcs
# @flag --experimental_check_desugar_deps
# @flag --noexperimental_check_desugar_deps
# @flag --experimental_docker_privileged
# @flag --noexperimental_docker_privileged
# @option --experimental_import_deps_checking[off|warning|error]
# @option --experimental_repository_hash_file <string>
# @flag --experimental_sandboxfs_map_symlink_targets
# @flag --noexperimental_sandboxfs_map_symlink_targets
# @option --experimental_strict_java_deps[off|warn|error|strict|default]
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --incompatible_check_testonly_for_output_files
# @flag --noincompatible_check_testonly_for_output_files
# @flag --incompatible_disable_native_android_rules
# @flag --noincompatible_disable_native_android_rules
# @flag --incompatible_disable_native_apple_binary_rule
# @flag --noincompatible_disable_native_apple_binary_rule
# @flag --incompatible_force_strict_header_check_from_starlark
# @flag --noincompatible_force_strict_header_check_from_starlark
# @flag --incompatible_legacy_local_fallback
# @flag --noincompatible_legacy_local_fallback
# @flag --incompatible_validate_top_level_header_inclusions
# @flag --noincompatible_validate_top_level_header_inclusions
# @option --sandbox_add_mount_pair <path>        a single path or a 'source:target' pair may be used multiple times
# @option --sandbox_block_path <string>          may be used multiple times
# @flag --sandbox_default_allow_network
# @flag --nosandbox_default_allow_network
# @flag --sandbox_fake_hostname
# @flag --nosandbox_fake_hostname
# @flag --sandbox_fake_username
# @flag --nosandbox_fake_username
# @option --sandbox_writable_path <string>       may be used multiple times
# @flag --strict_filesets
# @flag --nostrict_filesets
# @option --strict_proto_deps[off|warn|error|strict|default]
# @option --strict_public_imports[off|warn|error|strict|default]
# @flag --strict_system_includes
# @flag --nostrict_system_includes
# @option --target_environment[`_choice_target`] may be used multiple times <label>
# @option --apk_signing_method[v1|v2|v1_v2|v4]
# @flag --device_debug_entitlements
# @flag --nodevice_debug_entitlements
# @option --ios_signing_cert_name <string>
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_legacy_py_provider
# @flag --noincompatible_disallow_legacy_py_provider
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @flag --allow_analysis_failures
# @flag --noallow_analysis_failures
# @option --analysis_testing_deps_limit <integer>
# @flag --break_build_on_parallel_dex2oat_failure
# @flag --nobreak_build_on_parallel_dex2oat_failure
# @flag --check_tests_up_to_date
# @flag --nocheck_tests_up_to_date
# @flag --experimental_android_use_parallel_dex2oat
# @flag --noexperimental_android_use_parallel_dex2oat
# @option --flaky_test_attempts <value>          a positive integer, the string "default", or test_regex@attempts.
# @flag --ios_memleaks
# @flag --noios_memleaks
# @option --ios_simulator_device <string>
# @option --ios_simulator_version <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --local_test_jobs[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --runs_per_test <value>                a positive integer or test_regex@runs.
# @option --test_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --test_keep_going
# @flag --notest_keep_going
# @option --test_strategy <string>
# @option --test_timeout <value>                 a single integer or comma-separated list of 4 integers
# @option --test_tmpdir <path>
# @option --tvos_simulator_device <string>
# @option --tvos_simulator_version <value>       a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_simulator_device <string>
# @option --watchos_simulator_version <value>    a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --zip_undeclared_test_outputs
# @flag --nozip_undeclared_test_outputs
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --collapse_duplicate_defines
# @flag --nocollapse_duplicate_defines
# @flag --experimental_filter_library_jar_with_program_jar
# @flag --noexperimental_filter_library_jar_with_program_jar
# @flag --experimental_inmemory_dotd_files
# @flag --noexperimental_inmemory_dotd_files
# @flag --experimental_inmemory_jdeps_files
# @flag --noexperimental_inmemory_jdeps_files
# @flag --experimental_objc_include_scanning
# @flag --noexperimental_objc_include_scanning
# @flag --experimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --noexperimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --experimental_retain_test_configuration_across_testonly
# @flag --noexperimental_retain_test_configuration_across_testonly
# @flag --experimental_starlark_cc_import
# @flag --noexperimental_starlark_cc_import
# @flag --experimental_unsupported_and_brittle_include_scanning
# @flag --noexperimental_unsupported_and_brittle_include_scanning
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --incremental_dexing
# @flag --noincremental_dexing
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @flag --objc_use_dotd_pruning
# @flag --noobjc_use_dotd_pruning
# @flag --process_headers_in_dependencies
# @flag --noprocess_headers_in_dependencies
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --trim_test_configuration
# @flag --notrim_test_configuration
# @flag --use_singlejar_apkbuilder
# @flag --nouse_singlejar_apkbuilder
# @flag --announce
# @flag --noannounce
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --debug_spawn_scheduler
# @flag --nodebug_spawn_scheduler
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @flag --experimental_collect_local_sandbox_action_metrics
# @flag --noexperimental_collect_local_sandbox_action_metrics
# @flag --experimental_docker_verbose
# @flag --noexperimental_docker_verbose
# @flag --experimental_materialize_param_files_directly
# @flag --noexperimental_materialize_param_files_directly
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --explain <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @flag --materialize_param_files
# @flag --nomaterialize_param_files
# @option --max_config_changes_to_show <integer>
# @option --max_test_output_bytes <integer>
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --output_filter <value>                a valid Java regular expression
# @option --profile <path>
# @option --progress_report_interval <value>     an integer in 0-3600 range
# @option --remote_print_execution_messages[failure|success|all]
# @flag --sandbox_debug
# @flag --nosandbox_debug
# @option --show_result <integer>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option -s[true|pretty_print|false]
# @option --subcommands[true|pretty_print|false]
# @option --nosubcommands[true|pretty_print|false]
# @option --test_output[summary|errors|all|streamed]
# @option --test_summary[short|terse|detailed|none|testcase]
# @option --tool_tag <string>
# @option --toolchain_resolution_debug <path>    a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @flag --verbose_explanations
# @flag --noverbose_explanations
# @flag --verbose_failures
# @flag --noverbose_failures
# @option --aspects_parameters <value>           a 'name=value' assignment may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --flag_alias <value>                   a 'name=value' flag alias may be used multiple times
# @flag --incompatible_default_to_explicit_init_py
# @flag --noincompatible_default_to_explicit_init_py
# @flag --incompatible_py2_outputs_are_suffixed
# @flag --noincompatible_py2_outputs_are_suffixed
# @flag --incompatible_py3_is_default
# @flag --noincompatible_py3_is_default
# @flag --incompatible_use_python_toolchains
# @flag --noincompatible_use_python_toolchains
# @option --python_version[PY2|PY3]
# @option --target_pattern_file <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_cache_eviction_retries <integer>
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @flag --allow_analysis_cache_discard
# @flag --noallow_analysis_cache_discard
# @option --auto_output_filter[none|all|packages|subpackages]
# @flag --build_manual_tests
# @flag --nobuild_manual_tests
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --build_tag_filters <value>            comma-separated list of options
# @flag --build_tests_only
# @flag --nobuild_tests_only
# @option -t[auto|yes|no]                        <value>  a tri-state
# @option --cache_test_results[auto|yes|no]      <value>  a tri-state
# @option --nocache_test_results[auto|yes|no]    <value>  a tri-state
# @option --color[yes|no|auto]
# @option --combined_report[none|lcov]
# @flag --compile_one_dependency
# @flag --nocompile_one_dependency
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --discard_analysis_cache
# @flag --nodiscard_analysis_cache
# @option --disk_cache <path>
# @option --embed_label <value>                  a one-line string
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @option --execution_log_binary_file <path>
# @option --execution_log_json_file <path>
# @flag --execution_log_sort
# @flag --noexecution_log_sort
# @flag --expand_test_suites
# @flag --noexpand_test_suites
# @flag --experimental_cancel_concurrent_tests
# @flag --noexperimental_cancel_concurrent_tests
# @option --experimental_execution_log_file <path>
# @flag --experimental_execution_log_spawn_metrics
# @flag --noexperimental_execution_log_spawn_metrics
# @option --experimental_extra_action_filter <path>  a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @flag --experimental_extra_action_top_level_only
# @flag --noexperimental_extra_action_top_level_only
# @flag --experimental_fetch_all_coverage_outputs
# @flag --noexperimental_fetch_all_coverage_outputs
# @flag --experimental_generate_llvm_lcov
# @flag --noexperimental_generate_llvm_lcov
# @flag --experimental_j2objc_header_map
# @flag --noexperimental_j2objc_header_map
# @flag --experimental_j2objc_shorter_header_path
# @flag --noexperimental_j2objc_shorter_header_path
# @option --experimental_java_classpath[off|javabuilder|bazel]
# @flag --experimental_limit_android_lint_to_android_constrained_java
# @flag --noexperimental_limit_android_lint_to_android_constrained_java
# @flag --experimental_prioritize_local_actions
# @flag --noexperimental_prioritize_local_actions
# @flag --experimental_run_android_lint_on_java_rules
# @flag --noexperimental_run_android_lint_on_java_rules
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_spawn_scheduler
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @flag --explicit_java_test_deps
# @flag --noexplicit_java_test_deps
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @option --host_java_launcher[`_choice_target`] <label>
# @option --host_javacopt <string>               may be used multiple times
# @option --host_jvmopt <string>                 may be used multiple times
# @flag --ignore_unsupported_sandboxing
# @flag --noignore_unsupported_sandboxing
# @flag --incompatible_check_sharding_support
# @flag --noincompatible_check_sharding_support
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_dont_use_javasourceinfoprovider
# @flag --noincompatible_dont_use_javasourceinfoprovider
# @flag --incompatible_exclusive_test_sandboxed
# @flag --noincompatible_exclusive_test_sandboxed
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @flag --incompatible_strict_action_env
# @flag --noincompatible_strict_action_env
# @option --j2objc_translation_flags <value>     comma-separated list of options may be used multiple times
# @flag --java_debug
# @flag --java_deps
# @flag --nojava_deps
# @flag --java_header_compilation
# @flag --nojava_header_compilation
# @option --java_language_version <string>
# @option --java_launcher[`_choice_target`] <label>
# @option --java_runtime_version <string>
# @option --javacopt <string>                    may be used multiple times
# @option --jvmopt <string>                      may be used multiple times
# @option --legacy_main_dex_list_generator[`_choice_target`] <label>
# @option --local_cpu_resources <value>          an integer, or "HOST_CPUS", optionally followed by [-|*]<float>.
# @option --local_extra_resources <value>        a named float, 'name=value' may be used multiple times
# @option --local_ram_resources <value>          an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --local_termination_grace_seconds <integer>
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @option --plugin[`_choice_target`] may be used multiple times <label>
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @option --proguard_top[`_choice_target`] <label>
# @option --proto_compiler[`_choice_target`] <label>
# @option --proto_toolchain_for_cc[`_choice_target`] <label>
# @option --proto_toolchain_for_j2objc[`_choice_target`] <label>
# @option --proto_toolchain_for_java[`_choice_target`] <label>
# @option --proto_toolchain_for_javalite[`_choice_target`] <label>
# @option --protocopt <string>                   may be used multiple times
# @flag --runs_per_test_detects_flakes
# @flag --noruns_per_test_detects_flakes
# @option --shell_executable <path>
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --test_arg <string>                    may be used multiple times
# @option --test_filter <string>
# @option --test_lang_filters <value>            comma-separated list of options
# @option --test_result_expiration <integer>
# @flag --test_runner_fail_fast
# @flag --notest_runner_fail_fast
# @option --test_sharding_strategy[explicit|disabled]
# @option --test_size_filters[small|medium|large|enormous]  comma-separated list of values
# @option --test_tag_filters <value>             comma-separated list of options
# @option --test_timeout_filters[short|moderate|long|eternal]  comma-separated list of values
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --tool_java_language_version <string>
# @option --tool_java_runtime_version <string>
# @option --ui_actions_shown <integer>
# @flag --use_ijars
# @flag --nouse_ijars
# @flag --watchfs
# @flag --nowatchfs
# @option --workspace_status_command <path>
# @arg targets*[`_choice_target`]
build() {
    :;
}
# }} bazel build

# {{ bazel canonicalize-flags
# @cmd Canonicalizes a list of bazel options.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --check_up_to_date
# @flag --nocheck_up_to_date
# @option --dynamic_local_execution_delay <integer>
# @option --dynamic_local_strategy <value>       a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --dynamic_remote_strategy <value>      a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --experimental_docker_image <string>
# @flag --experimental_docker_use_customized_images
# @flag --noexperimental_docker_use_customized_images
# @flag --experimental_dynamic_exclude_tools
# @flag --noexperimental_dynamic_exclude_tools
# @option --experimental_dynamic_local_load_factor <double>
# @option --experimental_dynamic_slow_remote_time <value>  An immutable length of time.
# @flag --experimental_enable_docker_sandbox
# @flag --noexperimental_enable_docker_sandbox
# @flag --experimental_inprocess_symlink_creation
# @flag --noexperimental_inprocess_symlink_creation
# @option --experimental_oom_more_eagerly_threshold <integer>
# @flag --experimental_persistent_javac
# @flag --experimental_remotable_source_manifests
# @flag --noexperimental_remotable_source_manifests
# @option --experimental_sandbox_async_tree_delete_idle_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --experimental_sandboxfs_path <string>
# @flag --experimental_split_coverage_postprocessing
# @flag --noexperimental_split_coverage_postprocessing
# @flag --experimental_split_xml_generation
# @flag --noexperimental_split_xml_generation
# @flag --experimental_strict_fileset_output
# @flag --noexperimental_strict_fileset_output
# @option --experimental_total_worker_memory_limit_mb <value>  an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --experimental_use_hermetic_linux_sandbox
# @flag --noexperimental_use_hermetic_linux_sandbox
# @option --experimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --experimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --experimental_windows_sandbox_path <string>
# @flag --experimental_worker_as_resource
# @flag --noexperimental_worker_as_resource
# @flag --experimental_worker_cancellation
# @flag --noexperimental_worker_cancellation
# @flag --experimental_worker_multiplex
# @flag --noexperimental_worker_multiplex
# @flag --experimental_worker_multiplex_sandboxing
# @flag --noexperimental_worker_multiplex_sandboxing
# @flag --experimental_worker_strict_flagfiles
# @flag --noexperimental_worker_strict_flagfiles
# @option --genrule_strategy <value>             comma-separated list of options
# @option --high_priority_workers <string>       may be used multiple times
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag --incompatible_sandbox_hermetic_tmp
# @flag --noincompatible_sandbox_hermetic_tmp
# @flag --internal_spawn_scheduler
# @flag --nointernal_spawn_scheduler
# @option -j --jobs[auto|HOST_CPUS|HOST_RAM]     <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --modify_execution_info* <regex=[+-]key,regex=[+-]key,>
# @flag --persistent_android_dex_desugar
# @flag --persistent_android_resource_processor
# @flag --persistent_multiplex_android_dex_desugar
# @flag --persistent_multiplex_android_resource_processor
# @flag --persistent_multiplex_android_tools
# @flag --reuse_sandbox_directories
# @flag --noreuse_sandbox_directories
# @option --sandbox_base <string>
# @flag --sandbox_explicit_pseudoterminal
# @flag --nosandbox_explicit_pseudoterminal
# @option --sandbox_tmpfs_path <path>            an absolute path may be used multiple times
# @option --spawn_strategy <value>               comma-separated list of options
# @option --strategy <value>                     a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --strategy_regexp <value>              a '<RegexFilter>=value[,value]' assignment may be used multiple times
# @option --worker_extra_flag <value>            a 'name=value' assignment may be used multiple times
# @option --worker_max_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --worker_max_multiplex_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag --worker_quit_after_build
# @flag --noworker_quit_after_build
# @flag --worker_sandboxing
# @flag --noworker_sandboxing
# @flag --worker_verbose
# @flag --noworker_verbose
# @option --android_compiler <string>
# @option --android_crosstool_top[`_choice_target`] <label>
# @option --android_grte_top[`_choice_target`] <label>
# @option --android_manifest_merger[legacy|android|force_android]
# @option --android_platforms[`_choice_target`] <label>
# @option --android_sdk[`_choice_target`] <label>
# @option --apple_compiler <string>
# @option --apple_crosstool_top[`_choice_target`] <label>
# @option --apple_grte_top[`_choice_target`] <label>
# @option --cc_output_directory_tag <string>
# @option --compiler <string>
# @option --coverage_output_generator[`_choice_target`] <label>
# @option --coverage_report_generator[`_choice_target`] <label>
# @option --coverage_support[`_choice_target`] <label>
# @option --crosstool_top[`_choice_target`] <label>
# @option --custom_malloc[`_choice_target`] <label>
# @option --experimental_add_exec_constraints_to_targets <value>  a '<RegexFilter>=<label1>[,<label2>,...]' assignment may be used multiple times
# @flag --experimental_enable_objc_cc_deps
# @flag --noexperimental_enable_objc_cc_deps
# @flag --experimental_include_xcode_execution_requirements
# @flag --noexperimental_include_xcode_execution_requirements
# @flag --experimental_prefer_mutual_xcode
# @flag --noexperimental_prefer_mutual_xcode
# @option --extra_execution_platforms <value>    comma-separated list of options may be used multiple times
# @option --extra_toolchains <value>             comma-separated list of options may be used multiple times
# @option --grte_top[`_choice_target`] <label>
# @option --host_compiler <string>
# @option --host_crosstool_top[`_choice_target`] <label>
# @option --host_grte_top[`_choice_target`] <label>
# @option --host_platform[`_choice_target`] <label>
# @flag --incompatible_disable_expand_if_all_available_in_flag_set
# @flag --noincompatible_disable_expand_if_all_available_in_flag_set
# @flag --incompatible_disable_runtimes_filegroups
# @flag --noincompatible_disable_runtimes_filegroups
# @flag --incompatible_dont_emit_static_libgcc
# @flag --noincompatible_dont_emit_static_libgcc
# @flag --incompatible_dont_enable_host_nonhost_crosstool_features
# @flag --noincompatible_dont_enable_host_nonhost_crosstool_features
# @flag --incompatible_enable_android_toolchain_resolution
# @flag --noincompatible_enable_android_toolchain_resolution
# @flag --incompatible_enable_apple_toolchain_resolution
# @flag --noincompatible_enable_apple_toolchain_resolution
# @flag --incompatible_linkopts_in_user_link_flags
# @flag --noincompatible_linkopts_in_user_link_flags
# @flag --incompatible_make_thinlto_command_lines_standalone
# @flag --noincompatible_make_thinlto_command_lines_standalone
# @flag --incompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --noincompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --incompatible_remove_legacy_whole_archive
# @flag --noincompatible_remove_legacy_whole_archive
# @flag --incompatible_require_ctx_in_configure_features
# @flag --noincompatible_require_ctx_in_configure_features
# @flag --interface_shared_objects
# @flag --nointerface_shared_objects
# @option --ios_sdk_version <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --macos_sdk_version <value>            a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --minimum_os_version <string>
# @option --platform_mappings <path>             a relative path
# @option --platforms[`_choice_target`] <label>
# @option --python2_path <string>
# @option --python3_path <string>
# @option --python_path <string>
# @option --python_top[`_choice_target`] <label>
# @option --target_platform_fallback[`_choice_target`] <label>
# @option --tvos_sdk_version <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_sdk_version <value>          a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xcode_version <string>
# @option --xcode_version_config[`_choice_target`] <label>
# @flag --apple_enable_auto_dsym_dbg
# @flag --noapple_enable_auto_dsym_dbg
# @flag --apple_generate_dsym
# @flag --noapple_generate_dsym
# @flag --build
# @flag --nobuild
# @flag --build_runfile_links
# @flag --nobuild_runfile_links
# @flag --build_runfile_manifests
# @flag --nobuild_runfile_manifests
# @flag --build_test_dwp
# @flag --nobuild_test_dwp
# @flag --canonicalize_policy
# @flag --nocanonicalize_policy
# @option --cc_proto_library_header_suffixes <value>  comma-separated list of options
# @option --cc_proto_library_source_suffixes <value>  comma-separated list of options
# @flag --experimental_proto_descriptor_sets_include_source_info
# @flag --noexperimental_proto_descriptor_sets_include_source_info
# @flag --experimental_proto_extra_actions
# @flag --noexperimental_proto_extra_actions
# @flag --experimental_run_validations
# @flag --noexperimental_run_validations
# @flag --experimental_save_feature_state
# @flag --noexperimental_save_feature_state
# @flag --experimental_use_validation_aspect
# @flag --noexperimental_use_validation_aspect
# @option --fission <value>                      a set of compilation modes
# @flag --incompatible_always_include_files_in_data
# @flag --noincompatible_always_include_files_in_data
# @flag --legacy_external_runfiles
# @flag --nolegacy_external_runfiles
# @flag --objc_generate_linkmap
# @flag --noobjc_generate_linkmap
# @option --output_groups <value>                comma-separated list of options may be used multiple times
# @flag --run_validations
# @flag --norun_validations
# @flag --save_temps
# @flag --nosave_temps
# @flag --show_warnings
# @flag --noshow_warnings
# @option --action_env <value>                   a 'name=value' assignment with an optional value part may be used multiple times
# @option --android_cpu <string>
# @flag --android_databinding_use_androidx
# @flag --noandroid_databinding_use_androidx
# @flag --android_databinding_use_v3_4_args
# @flag --noandroid_databinding_use_v3_4_args
# @option --android_dynamic_mode[off|default|fully]
# @option --android_manifest_merger_order[alphabetical|alphabetical_by_configuration|dependency]
# @flag --android_resource_shrinking
# @flag --noandroid_resource_shrinking
# @option --apple_bitcode <value>                'mode' or 'platform=mode', where 'mode' is none, embedded_markers or embedded, and 'platform' is ios, visionos, watchos, tvos, macos or catalyst may be used multiple times
# @option --aspects <value>                      comma-separated list of options may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @option --build_python_zip[auto|yes|no] <value>  a tri-state
# @option --nobuild_python_zip[auto|yes|no] <value>  a tri-state
# @option --catalyst_cpus <value>                comma-separated list of options may be used multiple times
# @flag --collect_code_coverage
# @flag --nocollect_code_coverage
# @option -c --compilation_mode[fastbuild|dbg|opt]
# @option --conlyopt <string>                    may be used multiple times
# @option --copt <string>                        may be used multiple times
# @option --cpu <string>
# @option --cs_fdo_absolute_path <string>
# @option --cs_fdo_instrument <string>
# @option --cs_fdo_profile[`_choice_target`] <label>
# @option --cxxopt <string>                      may be used multiple times
# @option --define <value>                       a 'name=value' assignment may be used multiple times
# @option --dynamic_mode[off|default|fully]
# @flag --enable_fdo_profile_absolute_path
# @flag --noenable_fdo_profile_absolute_path
# @option --enable_runfiles[auto|yes|no] <value>  a tri-state
# @option --noenable_runfiles[auto|yes|no] <value>  a tri-state
# @option --experimental_action_listener[`_choice_target`] may be used multiple times <label>
# @flag --experimental_android_compress_java_resources
# @flag --noexperimental_android_compress_java_resources
# @flag --experimental_android_databinding_v2
# @flag --noexperimental_android_databinding_v2
# @flag --experimental_android_resource_shrinking
# @flag --noexperimental_android_resource_shrinking
# @flag --experimental_android_rewrite_dexes_with_rex
# @flag --noexperimental_android_rewrite_dexes_with_rex
# @flag --experimental_collect_code_coverage_for_generated_files
# @flag --noexperimental_collect_code_coverage_for_generated_files
# @option --experimental_convenience_symlinks[normal|clean|ignore|log_only]
# @option --noexperimental_convenience_symlinks[normal|clean|ignore|log_only]
# @flag --experimental_convenience_symlinks_bep_event
# @flag --noexperimental_convenience_symlinks_bep_event
# @option --experimental_multi_cpu <value>       comma-separated list of options may be used multiple times
# @option --experimental_objc_fastbuild_options <value>  comma-separated list of options
# @flag --experimental_omitfp
# @flag --noexperimental_omitfp
# @flag --experimental_platform_in_output_dir
# @flag --noexperimental_platform_in_output_dir
# @flag --experimental_use_llvm_covmap
# @flag --noexperimental_use_llvm_covmap
# @option --fat_apk_cpu <value>                  comma-separated list of options
# @flag --fat_apk_hwasan
# @flag --nofat_apk_hwasan
# @option --fdo_instrument <string>
# @option --fdo_optimize <string>
# @option --fdo_prefetch_hints[`_choice_target`] <label>
# @option --fdo_profile[`_choice_target`] <label>
# @option --features <string>                    may be used multiple times
# @flag --force_pic
# @flag --noforce_pic
# @option --host_action_env <value>              a 'name=value' assignment with an optional value part may be used multiple times
# @option --host_compilation_mode[fastbuild|dbg|opt]
# @option --host_conlyopt <string>               may be used multiple times
# @option --host_copt <string>                   may be used multiple times
# @option --host_cpu <string>
# @option --host_cxxopt <string>                 may be used multiple times
# @option --host_features <string>               may be used multiple times
# @option --host_force_python[PY2|PY3]
# @option --host_linkopt <string>                may be used multiple times
# @option --host_macos_minimum_os <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --host_per_file_copt <path>            a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --host_swiftcopt <string>              may be used multiple times
# @flag --incompatible_avoid_conflict_dlls
# @flag --noincompatible_avoid_conflict_dlls
# @flag --incompatible_merge_genfiles_directory
# @flag --noincompatible_merge_genfiles_directory
# @flag --incompatible_use_host_features
# @flag --noincompatible_use_host_features
# @flag --incompatible_use_platforms_repo_for_constraints
# @flag --noincompatible_use_platforms_repo_for_constraints
# @flag --instrument_test_targets
# @flag --noinstrument_test_targets
# @option --instrumentation_filter <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ios_minimum_os <value>               a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --ios_multi_cpus <value>               comma-separated list of options may be used multiple times
# @flag --legacy_whole_archive
# @flag --nolegacy_whole_archive
# @option --linkopt <string>                     may be used multiple times
# @option --ltobackendopt <string>               may be used multiple times
# @option --ltoindexopt <string>                 may be used multiple times
# @option --macos_cpus <value>                   comma-separated list of options may be used multiple times
# @option --macos_minimum_os <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --objc_debug_with_GLIBCXX
# @flag --noobjc_debug_with_GLIBCXX
# @flag --objc_enable_binary_stripping
# @flag --noobjc_enable_binary_stripping
# @option --objccopt <string>                    may be used multiple times
# @option --per_file_copt <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --per_file_ltobackendopt <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --platform_suffix <string>
# @option --propeller_optimize[`_choice_target`] <label>
# @option --propeller_optimize_absolute_cc_profile <string>
# @option --propeller_optimize_absolute_ld_profile <string>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @option --run_under <value>                    a prefix in front of command
# @flag --share_native_deps
# @flag --noshare_native_deps
# @flag --stamp
# @flag --nostamp
# @option --strip[always|sometimes|never]
# @option --stripopt <string>                    may be used multiple times
# @option --swiftcopt <string>                   may be used multiple times
# @option --symlink_prefix <string>
# @option --tvos_cpus <value>                    comma-separated list of options may be used multiple times
# @option --tvos_minimum_os <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --visionos_cpus <value>                comma-separated list of options may be used multiple times
# @option --watchos_cpus <value>                 comma-separated list of options may be used multiple times
# @option --watchos_minimum_os <value>           a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xbinary_fdo[`_choice_target`] <label>
# @option --auto_cpu_environment_group[`_choice_target`] <label>
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @flag --check_licenses
# @flag --nocheck_licenses
# @flag --check_visibility
# @flag --nocheck_visibility
# @flag --desugar_for_android
# @flag --nodesugar_for_android
# @flag --desugar_java8_libs
# @flag --nodesugar_java8_libs
# @flag --enforce_constraints
# @flag --noenforce_constraints
# @flag --experimental_allow_android_library_deps_without_srcs
# @flag --noexperimental_allow_android_library_deps_without_srcs
# @flag --experimental_check_desugar_deps
# @flag --noexperimental_check_desugar_deps
# @flag --experimental_docker_privileged
# @flag --noexperimental_docker_privileged
# @option --experimental_import_deps_checking[off|warning|error]
# @option --experimental_repository_hash_file <string>
# @flag --experimental_sandboxfs_map_symlink_targets
# @flag --noexperimental_sandboxfs_map_symlink_targets
# @option --experimental_strict_java_deps[off|warn|error|strict|default]
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --incompatible_check_testonly_for_output_files
# @flag --noincompatible_check_testonly_for_output_files
# @flag --incompatible_disable_native_android_rules
# @flag --noincompatible_disable_native_android_rules
# @flag --incompatible_disable_native_apple_binary_rule
# @flag --noincompatible_disable_native_apple_binary_rule
# @flag --incompatible_force_strict_header_check_from_starlark
# @flag --noincompatible_force_strict_header_check_from_starlark
# @flag --incompatible_legacy_local_fallback
# @flag --noincompatible_legacy_local_fallback
# @flag --incompatible_validate_top_level_header_inclusions
# @flag --noincompatible_validate_top_level_header_inclusions
# @option --sandbox_add_mount_pair <path>        a single path or a 'source:target' pair may be used multiple times
# @option --sandbox_block_path <string>          may be used multiple times
# @flag --sandbox_default_allow_network
# @flag --nosandbox_default_allow_network
# @flag --sandbox_fake_hostname
# @flag --nosandbox_fake_hostname
# @flag --sandbox_fake_username
# @flag --nosandbox_fake_username
# @option --sandbox_writable_path <string>       may be used multiple times
# @flag --strict_filesets
# @flag --nostrict_filesets
# @option --strict_proto_deps[off|warn|error|strict|default]
# @option --strict_public_imports[off|warn|error|strict|default]
# @flag --strict_system_includes
# @flag --nostrict_system_includes
# @option --target_environment[`_choice_target`] may be used multiple times <label>
# @option --apk_signing_method[v1|v2|v1_v2|v4]
# @flag --device_debug_entitlements
# @flag --nodevice_debug_entitlements
# @option --ios_signing_cert_name <string>
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_legacy_py_provider
# @flag --noincompatible_disallow_legacy_py_provider
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @flag --allow_analysis_failures
# @flag --noallow_analysis_failures
# @option --analysis_testing_deps_limit <integer>
# @flag --break_build_on_parallel_dex2oat_failure
# @flag --nobreak_build_on_parallel_dex2oat_failure
# @flag --check_tests_up_to_date
# @flag --nocheck_tests_up_to_date
# @flag --experimental_android_use_parallel_dex2oat
# @flag --noexperimental_android_use_parallel_dex2oat
# @option --flaky_test_attempts <value>          a positive integer, the string "default", or test_regex@attempts.
# @flag --ios_memleaks
# @flag --noios_memleaks
# @option --ios_simulator_device <string>
# @option --ios_simulator_version <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --local_test_jobs[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --runs_per_test <value>                a positive integer or test_regex@runs.
# @option --test_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --test_keep_going
# @flag --notest_keep_going
# @option --test_strategy <string>
# @option --test_timeout <value>                 a single integer or comma-separated list of 4 integers
# @option --test_tmpdir <path>
# @option --tvos_simulator_device <string>
# @option --tvos_simulator_version <value>       a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_simulator_device <string>
# @option --watchos_simulator_version <value>    a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --zip_undeclared_test_outputs
# @flag --nozip_undeclared_test_outputs
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --collapse_duplicate_defines
# @flag --nocollapse_duplicate_defines
# @flag --experimental_filter_library_jar_with_program_jar
# @flag --noexperimental_filter_library_jar_with_program_jar
# @flag --experimental_inmemory_dotd_files
# @flag --noexperimental_inmemory_dotd_files
# @flag --experimental_inmemory_jdeps_files
# @flag --noexperimental_inmemory_jdeps_files
# @flag --experimental_objc_include_scanning
# @flag --noexperimental_objc_include_scanning
# @flag --experimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --noexperimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --experimental_retain_test_configuration_across_testonly
# @flag --noexperimental_retain_test_configuration_across_testonly
# @flag --experimental_starlark_cc_import
# @flag --noexperimental_starlark_cc_import
# @flag --experimental_unsupported_and_brittle_include_scanning
# @flag --noexperimental_unsupported_and_brittle_include_scanning
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --incremental_dexing
# @flag --noincremental_dexing
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @flag --objc_use_dotd_pruning
# @flag --noobjc_use_dotd_pruning
# @flag --process_headers_in_dependencies
# @flag --noprocess_headers_in_dependencies
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --trim_test_configuration
# @flag --notrim_test_configuration
# @flag --use_singlejar_apkbuilder
# @flag --nouse_singlejar_apkbuilder
# @flag --announce
# @flag --noannounce
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --debug_spawn_scheduler
# @flag --nodebug_spawn_scheduler
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @flag --experimental_collect_local_sandbox_action_metrics
# @flag --noexperimental_collect_local_sandbox_action_metrics
# @flag --experimental_docker_verbose
# @flag --noexperimental_docker_verbose
# @flag --experimental_materialize_param_files_directly
# @flag --noexperimental_materialize_param_files_directly
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --explain <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @flag --materialize_param_files
# @flag --nomaterialize_param_files
# @option --max_config_changes_to_show <integer>
# @option --max_test_output_bytes <integer>
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --output_filter <value>                a valid Java regular expression
# @option --profile <path>
# @option --progress_report_interval <value>     an integer in 0-3600 range
# @option --remote_print_execution_messages[failure|success|all]
# @flag --sandbox_debug
# @flag --nosandbox_debug
# @option --show_result <integer>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option -s[true|pretty_print|false]
# @option --subcommands[true|pretty_print|false]
# @option --nosubcommands[true|pretty_print|false]
# @option --test_output[summary|errors|all|streamed]
# @option --test_summary[short|terse|detailed|none|testcase]
# @option --tool_tag <string>
# @option --toolchain_resolution_debug <path>    a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @flag --verbose_explanations
# @flag --noverbose_explanations
# @flag --verbose_failures
# @flag --noverbose_failures
# @option --aspects_parameters <value>           a 'name=value' assignment may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --flag_alias <value>                   a 'name=value' flag alias may be used multiple times
# @option --for_command <string>
# @flag --incompatible_default_to_explicit_init_py
# @flag --noincompatible_default_to_explicit_init_py
# @flag --incompatible_py2_outputs_are_suffixed
# @flag --noincompatible_py2_outputs_are_suffixed
# @flag --incompatible_py3_is_default
# @flag --noincompatible_py3_is_default
# @flag --incompatible_use_python_toolchains
# @flag --noincompatible_use_python_toolchains
# @option --invocation_policy <string>
# @option --python_version[PY2|PY3]
# @option --target_pattern_file <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_cache_eviction_retries <integer>
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @flag --allow_analysis_cache_discard
# @flag --noallow_analysis_cache_discard
# @option --auto_output_filter[none|all|packages|subpackages]
# @flag --build_manual_tests
# @flag --nobuild_manual_tests
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --build_tag_filters <value>            comma-separated list of options
# @flag --build_tests_only
# @flag --nobuild_tests_only
# @option -t[auto|yes|no]                        <value>  a tri-state
# @option --cache_test_results[auto|yes|no]      <value>  a tri-state
# @option --nocache_test_results[auto|yes|no]    <value>  a tri-state
# @option --color[yes|no|auto]
# @option --combined_report[none|lcov]
# @flag --compile_one_dependency
# @flag --nocompile_one_dependency
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --discard_analysis_cache
# @flag --nodiscard_analysis_cache
# @option --disk_cache <path>
# @option --embed_label <value>                  a one-line string
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @option --execution_log_binary_file <path>
# @option --execution_log_json_file <path>
# @flag --execution_log_sort
# @flag --noexecution_log_sort
# @flag --expand_test_suites
# @flag --noexpand_test_suites
# @flag --experimental_cancel_concurrent_tests
# @flag --noexperimental_cancel_concurrent_tests
# @option --experimental_execution_log_file <path>
# @flag --experimental_execution_log_spawn_metrics
# @flag --noexperimental_execution_log_spawn_metrics
# @option --experimental_extra_action_filter <path>  a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @flag --experimental_extra_action_top_level_only
# @flag --noexperimental_extra_action_top_level_only
# @flag --experimental_fetch_all_coverage_outputs
# @flag --noexperimental_fetch_all_coverage_outputs
# @flag --experimental_generate_llvm_lcov
# @flag --noexperimental_generate_llvm_lcov
# @flag --experimental_j2objc_header_map
# @flag --noexperimental_j2objc_header_map
# @flag --experimental_j2objc_shorter_header_path
# @flag --noexperimental_j2objc_shorter_header_path
# @option --experimental_java_classpath[off|javabuilder|bazel]
# @flag --experimental_limit_android_lint_to_android_constrained_java
# @flag --noexperimental_limit_android_lint_to_android_constrained_java
# @flag --experimental_prioritize_local_actions
# @flag --noexperimental_prioritize_local_actions
# @flag --experimental_run_android_lint_on_java_rules
# @flag --noexperimental_run_android_lint_on_java_rules
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_spawn_scheduler
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @flag --explicit_java_test_deps
# @flag --noexplicit_java_test_deps
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @option --host_java_launcher[`_choice_target`] <label>
# @option --host_javacopt <string>               may be used multiple times
# @option --host_jvmopt <string>                 may be used multiple times
# @flag --ignore_unsupported_sandboxing
# @flag --noignore_unsupported_sandboxing
# @flag --incompatible_check_sharding_support
# @flag --noincompatible_check_sharding_support
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_dont_use_javasourceinfoprovider
# @flag --noincompatible_dont_use_javasourceinfoprovider
# @flag --incompatible_exclusive_test_sandboxed
# @flag --noincompatible_exclusive_test_sandboxed
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @flag --incompatible_strict_action_env
# @flag --noincompatible_strict_action_env
# @option --j2objc_translation_flags <value>     comma-separated list of options may be used multiple times
# @flag --java_debug
# @flag --java_deps
# @flag --nojava_deps
# @flag --java_header_compilation
# @flag --nojava_header_compilation
# @option --java_language_version <string>
# @option --java_launcher[`_choice_target`] <label>
# @option --java_runtime_version <string>
# @option --javacopt <string>                    may be used multiple times
# @option --jvmopt <string>                      may be used multiple times
# @option --legacy_main_dex_list_generator[`_choice_target`] <label>
# @option --local_cpu_resources <value>          an integer, or "HOST_CPUS", optionally followed by [-|*]<float>.
# @option --local_extra_resources <value>        a named float, 'name=value' may be used multiple times
# @option --local_ram_resources <value>          an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --local_termination_grace_seconds <integer>
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @option --plugin[`_choice_target`] may be used multiple times <label>
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @option --proguard_top[`_choice_target`] <label>
# @option --proto_compiler[`_choice_target`] <label>
# @option --proto_toolchain_for_cc[`_choice_target`] <label>
# @option --proto_toolchain_for_j2objc[`_choice_target`] <label>
# @option --proto_toolchain_for_java[`_choice_target`] <label>
# @option --proto_toolchain_for_javalite[`_choice_target`] <label>
# @option --protocopt <string>                   may be used multiple times
# @flag --runs_per_test_detects_flakes
# @flag --noruns_per_test_detects_flakes
# @option --shell_executable <path>
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --test_arg <string>                    may be used multiple times
# @option --test_filter <string>
# @option --test_lang_filters <value>            comma-separated list of options
# @option --test_result_expiration <integer>
# @flag --test_runner_fail_fast
# @flag --notest_runner_fail_fast
# @option --test_sharding_strategy[explicit|disabled]
# @option --test_size_filters[small|medium|large|enormous]  comma-separated list of values
# @option --test_tag_filters <value>             comma-separated list of options
# @option --test_timeout_filters[short|moderate|long|eternal]  comma-separated list of values
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --tool_java_language_version <string>
# @option --tool_java_runtime_version <string>
# @option --ui_actions_shown <integer>
# @flag --use_ijars
# @flag --nouse_ijars
# @flag --watchfs
# @flag --nowatchfs
# @option --workspace_status_command <path>
canonicalize-flags() {
    :;
}
# }} bazel canonicalize-flags

# {{ bazel clean
# @cmd Removes output files and optionally stops the server.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --check_up_to_date
# @flag --nocheck_up_to_date
# @option --dynamic_local_execution_delay <integer>
# @option --dynamic_local_strategy <value>       a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --dynamic_remote_strategy <value>      a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --experimental_docker_image <string>
# @flag --experimental_docker_use_customized_images
# @flag --noexperimental_docker_use_customized_images
# @flag --experimental_dynamic_exclude_tools
# @flag --noexperimental_dynamic_exclude_tools
# @option --experimental_dynamic_local_load_factor <double>
# @option --experimental_dynamic_slow_remote_time <value>  An immutable length of time.
# @flag --experimental_enable_docker_sandbox
# @flag --noexperimental_enable_docker_sandbox
# @flag --experimental_inprocess_symlink_creation
# @flag --noexperimental_inprocess_symlink_creation
# @option --experimental_oom_more_eagerly_threshold <integer>
# @flag --experimental_persistent_javac
# @flag --experimental_remotable_source_manifests
# @flag --noexperimental_remotable_source_manifests
# @option --experimental_sandbox_async_tree_delete_idle_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --experimental_sandboxfs_path <string>
# @flag --experimental_split_coverage_postprocessing
# @flag --noexperimental_split_coverage_postprocessing
# @flag --experimental_split_xml_generation
# @flag --noexperimental_split_xml_generation
# @flag --experimental_strict_fileset_output
# @flag --noexperimental_strict_fileset_output
# @option --experimental_total_worker_memory_limit_mb <value>  an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --experimental_use_hermetic_linux_sandbox
# @flag --noexperimental_use_hermetic_linux_sandbox
# @option --experimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --experimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --experimental_windows_sandbox_path <string>
# @flag --experimental_worker_as_resource
# @flag --noexperimental_worker_as_resource
# @flag --experimental_worker_cancellation
# @flag --noexperimental_worker_cancellation
# @flag --experimental_worker_multiplex
# @flag --noexperimental_worker_multiplex
# @flag --experimental_worker_multiplex_sandboxing
# @flag --noexperimental_worker_multiplex_sandboxing
# @flag --experimental_worker_strict_flagfiles
# @flag --noexperimental_worker_strict_flagfiles
# @option --genrule_strategy <value>             comma-separated list of options
# @option --high_priority_workers <string>       may be used multiple times
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag --incompatible_sandbox_hermetic_tmp
# @flag --noincompatible_sandbox_hermetic_tmp
# @flag --internal_spawn_scheduler
# @flag --nointernal_spawn_scheduler
# @option -j --jobs[auto|HOST_CPUS|HOST_RAM]     <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --modify_execution_info* <regex=[+-]key,regex=[+-]key,>
# @flag --persistent_android_dex_desugar
# @flag --persistent_android_resource_processor
# @flag --persistent_multiplex_android_dex_desugar
# @flag --persistent_multiplex_android_resource_processor
# @flag --persistent_multiplex_android_tools
# @flag --reuse_sandbox_directories
# @flag --noreuse_sandbox_directories
# @option --sandbox_base <string>
# @flag --sandbox_explicit_pseudoterminal
# @flag --nosandbox_explicit_pseudoterminal
# @option --sandbox_tmpfs_path <path>            an absolute path may be used multiple times
# @option --spawn_strategy <value>               comma-separated list of options
# @option --strategy <value>                     a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --strategy_regexp <value>              a '<RegexFilter>=value[,value]' assignment may be used multiple times
# @option --worker_extra_flag <value>            a 'name=value' assignment may be used multiple times
# @option --worker_max_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --worker_max_multiplex_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag --worker_quit_after_build
# @flag --noworker_quit_after_build
# @flag --worker_sandboxing
# @flag --noworker_sandboxing
# @flag --worker_verbose
# @flag --noworker_verbose
# @option --android_compiler <string>
# @option --android_crosstool_top[`_choice_target`] <label>
# @option --android_grte_top[`_choice_target`] <label>
# @option --android_manifest_merger[legacy|android|force_android]
# @option --android_platforms[`_choice_target`] <label>
# @option --android_sdk[`_choice_target`] <label>
# @option --apple_compiler <string>
# @option --apple_crosstool_top[`_choice_target`] <label>
# @option --apple_grte_top[`_choice_target`] <label>
# @option --cc_output_directory_tag <string>
# @option --compiler <string>
# @option --coverage_output_generator[`_choice_target`] <label>
# @option --coverage_report_generator[`_choice_target`] <label>
# @option --coverage_support[`_choice_target`] <label>
# @option --crosstool_top[`_choice_target`] <label>
# @option --custom_malloc[`_choice_target`] <label>
# @option --experimental_add_exec_constraints_to_targets <value>  a '<RegexFilter>=<label1>[,<label2>,...]' assignment may be used multiple times
# @flag --experimental_enable_objc_cc_deps
# @flag --noexperimental_enable_objc_cc_deps
# @flag --experimental_include_xcode_execution_requirements
# @flag --noexperimental_include_xcode_execution_requirements
# @flag --experimental_prefer_mutual_xcode
# @flag --noexperimental_prefer_mutual_xcode
# @option --extra_execution_platforms <value>    comma-separated list of options may be used multiple times
# @option --extra_toolchains <value>             comma-separated list of options may be used multiple times
# @option --grte_top[`_choice_target`] <label>
# @option --host_compiler <string>
# @option --host_crosstool_top[`_choice_target`] <label>
# @option --host_grte_top[`_choice_target`] <label>
# @option --host_platform[`_choice_target`] <label>
# @flag --incompatible_disable_expand_if_all_available_in_flag_set
# @flag --noincompatible_disable_expand_if_all_available_in_flag_set
# @flag --incompatible_disable_runtimes_filegroups
# @flag --noincompatible_disable_runtimes_filegroups
# @flag --incompatible_dont_emit_static_libgcc
# @flag --noincompatible_dont_emit_static_libgcc
# @flag --incompatible_dont_enable_host_nonhost_crosstool_features
# @flag --noincompatible_dont_enable_host_nonhost_crosstool_features
# @flag --incompatible_enable_android_toolchain_resolution
# @flag --noincompatible_enable_android_toolchain_resolution
# @flag --incompatible_enable_apple_toolchain_resolution
# @flag --noincompatible_enable_apple_toolchain_resolution
# @flag --incompatible_linkopts_in_user_link_flags
# @flag --noincompatible_linkopts_in_user_link_flags
# @flag --incompatible_make_thinlto_command_lines_standalone
# @flag --noincompatible_make_thinlto_command_lines_standalone
# @flag --incompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --noincompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --incompatible_remove_legacy_whole_archive
# @flag --noincompatible_remove_legacy_whole_archive
# @flag --incompatible_require_ctx_in_configure_features
# @flag --noincompatible_require_ctx_in_configure_features
# @flag --interface_shared_objects
# @flag --nointerface_shared_objects
# @option --ios_sdk_version <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --macos_sdk_version <value>            a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --minimum_os_version <string>
# @option --platform_mappings <path>             a relative path
# @option --platforms[`_choice_target`] <label>
# @option --python2_path <string>
# @option --python3_path <string>
# @option --python_path <string>
# @option --python_top[`_choice_target`] <label>
# @option --target_platform_fallback[`_choice_target`] <label>
# @option --tvos_sdk_version <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_sdk_version <value>          a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xcode_version <string>
# @option --xcode_version_config[`_choice_target`] <label>
# @flag --apple_enable_auto_dsym_dbg
# @flag --noapple_enable_auto_dsym_dbg
# @flag --apple_generate_dsym
# @flag --noapple_generate_dsym
# @flag --async
# @flag --noasync
# @flag --build
# @flag --nobuild
# @flag --build_runfile_links
# @flag --nobuild_runfile_links
# @flag --build_runfile_manifests
# @flag --nobuild_runfile_manifests
# @flag --build_test_dwp
# @flag --nobuild_test_dwp
# @option --cc_proto_library_header_suffixes <value>  comma-separated list of options
# @option --cc_proto_library_source_suffixes <value>  comma-separated list of options
# @flag --experimental_proto_descriptor_sets_include_source_info
# @flag --noexperimental_proto_descriptor_sets_include_source_info
# @flag --experimental_proto_extra_actions
# @flag --noexperimental_proto_extra_actions
# @flag --experimental_run_validations
# @flag --noexperimental_run_validations
# @flag --experimental_save_feature_state
# @flag --noexperimental_save_feature_state
# @flag --experimental_use_validation_aspect
# @flag --noexperimental_use_validation_aspect
# @flag --expunge
# @flag --noexpunge
# @flag --expunge_async
# @option --fission <value>                      a set of compilation modes
# @flag --incompatible_always_include_files_in_data
# @flag --noincompatible_always_include_files_in_data
# @flag --legacy_external_runfiles
# @flag --nolegacy_external_runfiles
# @flag --objc_generate_linkmap
# @flag --noobjc_generate_linkmap
# @option --output_groups <value>                comma-separated list of options may be used multiple times
# @flag --remove_all_convenience_symlinks
# @flag --noremove_all_convenience_symlinks
# @flag --run_validations
# @flag --norun_validations
# @flag --save_temps
# @flag --nosave_temps
# @option --action_env <value>                   a 'name=value' assignment with an optional value part may be used multiple times
# @option --android_cpu <string>
# @flag --android_databinding_use_androidx
# @flag --noandroid_databinding_use_androidx
# @flag --android_databinding_use_v3_4_args
# @flag --noandroid_databinding_use_v3_4_args
# @option --android_dynamic_mode[off|default|fully]
# @option --android_manifest_merger_order[alphabetical|alphabetical_by_configuration|dependency]
# @flag --android_resource_shrinking
# @flag --noandroid_resource_shrinking
# @option --apple_bitcode <value>                'mode' or 'platform=mode', where 'mode' is none, embedded_markers or embedded, and 'platform' is ios, visionos, watchos, tvos, macos or catalyst may be used multiple times
# @option --aspects <value>                      comma-separated list of options may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @option --build_python_zip[auto|yes|no] <value>  a tri-state
# @option --nobuild_python_zip[auto|yes|no] <value>  a tri-state
# @option --catalyst_cpus <value>                comma-separated list of options may be used multiple times
# @flag --collect_code_coverage
# @flag --nocollect_code_coverage
# @option -c --compilation_mode[fastbuild|dbg|opt]
# @option --conlyopt <string>                    may be used multiple times
# @option --copt <string>                        may be used multiple times
# @option --cpu <string>
# @option --cs_fdo_absolute_path <string>
# @option --cs_fdo_instrument <string>
# @option --cs_fdo_profile[`_choice_target`] <label>
# @option --cxxopt <string>                      may be used multiple times
# @option --define <value>                       a 'name=value' assignment may be used multiple times
# @option --dynamic_mode[off|default|fully]
# @flag --enable_fdo_profile_absolute_path
# @flag --noenable_fdo_profile_absolute_path
# @option --enable_runfiles[auto|yes|no] <value>  a tri-state
# @option --noenable_runfiles[auto|yes|no] <value>  a tri-state
# @option --experimental_action_listener[`_choice_target`] may be used multiple times <label>
# @flag --experimental_android_compress_java_resources
# @flag --noexperimental_android_compress_java_resources
# @flag --experimental_android_databinding_v2
# @flag --noexperimental_android_databinding_v2
# @flag --experimental_android_resource_shrinking
# @flag --noexperimental_android_resource_shrinking
# @flag --experimental_android_rewrite_dexes_with_rex
# @flag --noexperimental_android_rewrite_dexes_with_rex
# @flag --experimental_collect_code_coverage_for_generated_files
# @flag --noexperimental_collect_code_coverage_for_generated_files
# @option --experimental_convenience_symlinks[normal|clean|ignore|log_only]
# @option --noexperimental_convenience_symlinks[normal|clean|ignore|log_only]
# @flag --experimental_convenience_symlinks_bep_event
# @flag --noexperimental_convenience_symlinks_bep_event
# @option --experimental_multi_cpu <value>       comma-separated list of options may be used multiple times
# @option --experimental_objc_fastbuild_options <value>  comma-separated list of options
# @flag --experimental_omitfp
# @flag --noexperimental_omitfp
# @flag --experimental_platform_in_output_dir
# @flag --noexperimental_platform_in_output_dir
# @flag --experimental_use_llvm_covmap
# @flag --noexperimental_use_llvm_covmap
# @option --fat_apk_cpu <value>                  comma-separated list of options
# @flag --fat_apk_hwasan
# @flag --nofat_apk_hwasan
# @option --fdo_instrument <string>
# @option --fdo_optimize <string>
# @option --fdo_prefetch_hints[`_choice_target`] <label>
# @option --fdo_profile[`_choice_target`] <label>
# @option --features <string>                    may be used multiple times
# @flag --force_pic
# @flag --noforce_pic
# @option --host_action_env <value>              a 'name=value' assignment with an optional value part may be used multiple times
# @option --host_compilation_mode[fastbuild|dbg|opt]
# @option --host_conlyopt <string>               may be used multiple times
# @option --host_copt <string>                   may be used multiple times
# @option --host_cpu <string>
# @option --host_cxxopt <string>                 may be used multiple times
# @option --host_features <string>               may be used multiple times
# @option --host_force_python[PY2|PY3]
# @option --host_linkopt <string>                may be used multiple times
# @option --host_macos_minimum_os <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --host_per_file_copt <path>            a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --host_swiftcopt <string>              may be used multiple times
# @flag --incompatible_avoid_conflict_dlls
# @flag --noincompatible_avoid_conflict_dlls
# @flag --incompatible_merge_genfiles_directory
# @flag --noincompatible_merge_genfiles_directory
# @flag --incompatible_use_host_features
# @flag --noincompatible_use_host_features
# @flag --incompatible_use_platforms_repo_for_constraints
# @flag --noincompatible_use_platforms_repo_for_constraints
# @flag --instrument_test_targets
# @flag --noinstrument_test_targets
# @option --instrumentation_filter <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ios_minimum_os <value>               a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --ios_multi_cpus <value>               comma-separated list of options may be used multiple times
# @flag --legacy_whole_archive
# @flag --nolegacy_whole_archive
# @option --linkopt <string>                     may be used multiple times
# @option --ltobackendopt <string>               may be used multiple times
# @option --ltoindexopt <string>                 may be used multiple times
# @option --macos_cpus <value>                   comma-separated list of options may be used multiple times
# @option --macos_minimum_os <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --objc_debug_with_GLIBCXX
# @flag --noobjc_debug_with_GLIBCXX
# @flag --objc_enable_binary_stripping
# @flag --noobjc_enable_binary_stripping
# @option --objccopt <string>                    may be used multiple times
# @option --per_file_copt <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --per_file_ltobackendopt <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --platform_suffix <string>
# @option --propeller_optimize[`_choice_target`] <label>
# @option --propeller_optimize_absolute_cc_profile <string>
# @option --propeller_optimize_absolute_ld_profile <string>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @option --run_under <value>                    a prefix in front of command
# @flag --share_native_deps
# @flag --noshare_native_deps
# @flag --stamp
# @flag --nostamp
# @option --strip[always|sometimes|never]
# @option --stripopt <string>                    may be used multiple times
# @option --swiftcopt <string>                   may be used multiple times
# @option --symlink_prefix <string>
# @option --tvos_cpus <value>                    comma-separated list of options may be used multiple times
# @option --tvos_minimum_os <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --visionos_cpus <value>                comma-separated list of options may be used multiple times
# @option --watchos_cpus <value>                 comma-separated list of options may be used multiple times
# @option --watchos_minimum_os <value>           a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xbinary_fdo[`_choice_target`] <label>
# @option --auto_cpu_environment_group[`_choice_target`] <label>
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @flag --check_licenses
# @flag --nocheck_licenses
# @flag --check_visibility
# @flag --nocheck_visibility
# @flag --desugar_for_android
# @flag --nodesugar_for_android
# @flag --desugar_java8_libs
# @flag --nodesugar_java8_libs
# @flag --enforce_constraints
# @flag --noenforce_constraints
# @flag --experimental_allow_android_library_deps_without_srcs
# @flag --noexperimental_allow_android_library_deps_without_srcs
# @flag --experimental_check_desugar_deps
# @flag --noexperimental_check_desugar_deps
# @flag --experimental_docker_privileged
# @flag --noexperimental_docker_privileged
# @option --experimental_import_deps_checking[off|warning|error]
# @option --experimental_repository_hash_file <string>
# @flag --experimental_sandboxfs_map_symlink_targets
# @flag --noexperimental_sandboxfs_map_symlink_targets
# @option --experimental_strict_java_deps[off|warn|error|strict|default]
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --incompatible_check_testonly_for_output_files
# @flag --noincompatible_check_testonly_for_output_files
# @flag --incompatible_disable_native_android_rules
# @flag --noincompatible_disable_native_android_rules
# @flag --incompatible_disable_native_apple_binary_rule
# @flag --noincompatible_disable_native_apple_binary_rule
# @flag --incompatible_force_strict_header_check_from_starlark
# @flag --noincompatible_force_strict_header_check_from_starlark
# @flag --incompatible_legacy_local_fallback
# @flag --noincompatible_legacy_local_fallback
# @flag --incompatible_validate_top_level_header_inclusions
# @flag --noincompatible_validate_top_level_header_inclusions
# @option --sandbox_add_mount_pair <path>        a single path or a 'source:target' pair may be used multiple times
# @option --sandbox_block_path <string>          may be used multiple times
# @flag --sandbox_default_allow_network
# @flag --nosandbox_default_allow_network
# @flag --sandbox_fake_hostname
# @flag --nosandbox_fake_hostname
# @flag --sandbox_fake_username
# @flag --nosandbox_fake_username
# @option --sandbox_writable_path <string>       may be used multiple times
# @flag --strict_filesets
# @flag --nostrict_filesets
# @option --strict_proto_deps[off|warn|error|strict|default]
# @option --strict_public_imports[off|warn|error|strict|default]
# @flag --strict_system_includes
# @flag --nostrict_system_includes
# @option --target_environment[`_choice_target`] may be used multiple times <label>
# @option --apk_signing_method[v1|v2|v1_v2|v4]
# @flag --device_debug_entitlements
# @flag --nodevice_debug_entitlements
# @option --ios_signing_cert_name <string>
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_legacy_py_provider
# @flag --noincompatible_disallow_legacy_py_provider
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @flag --allow_analysis_failures
# @flag --noallow_analysis_failures
# @option --analysis_testing_deps_limit <integer>
# @flag --break_build_on_parallel_dex2oat_failure
# @flag --nobreak_build_on_parallel_dex2oat_failure
# @flag --check_tests_up_to_date
# @flag --nocheck_tests_up_to_date
# @flag --experimental_android_use_parallel_dex2oat
# @flag --noexperimental_android_use_parallel_dex2oat
# @option --flaky_test_attempts <value>          a positive integer, the string "default", or test_regex@attempts.
# @flag --ios_memleaks
# @flag --noios_memleaks
# @option --ios_simulator_device <string>
# @option --ios_simulator_version <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --local_test_jobs[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --runs_per_test <value>                a positive integer or test_regex@runs.
# @option --test_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --test_keep_going
# @flag --notest_keep_going
# @option --test_strategy <string>
# @option --test_timeout <value>                 a single integer or comma-separated list of 4 integers
# @option --test_tmpdir <path>
# @option --tvos_simulator_device <string>
# @option --tvos_simulator_version <value>       a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_simulator_device <string>
# @option --watchos_simulator_version <value>    a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --zip_undeclared_test_outputs
# @flag --nozip_undeclared_test_outputs
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --collapse_duplicate_defines
# @flag --nocollapse_duplicate_defines
# @flag --experimental_filter_library_jar_with_program_jar
# @flag --noexperimental_filter_library_jar_with_program_jar
# @flag --experimental_inmemory_dotd_files
# @flag --noexperimental_inmemory_dotd_files
# @flag --experimental_inmemory_jdeps_files
# @flag --noexperimental_inmemory_jdeps_files
# @flag --experimental_objc_include_scanning
# @flag --noexperimental_objc_include_scanning
# @flag --experimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --noexperimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --experimental_retain_test_configuration_across_testonly
# @flag --noexperimental_retain_test_configuration_across_testonly
# @flag --experimental_starlark_cc_import
# @flag --noexperimental_starlark_cc_import
# @flag --experimental_unsupported_and_brittle_include_scanning
# @flag --noexperimental_unsupported_and_brittle_include_scanning
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --incremental_dexing
# @flag --noincremental_dexing
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @flag --objc_use_dotd_pruning
# @flag --noobjc_use_dotd_pruning
# @flag --process_headers_in_dependencies
# @flag --noprocess_headers_in_dependencies
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --trim_test_configuration
# @flag --notrim_test_configuration
# @flag --use_singlejar_apkbuilder
# @flag --nouse_singlejar_apkbuilder
# @flag --announce
# @flag --noannounce
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --debug_spawn_scheduler
# @flag --nodebug_spawn_scheduler
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @flag --experimental_collect_local_sandbox_action_metrics
# @flag --noexperimental_collect_local_sandbox_action_metrics
# @flag --experimental_docker_verbose
# @flag --noexperimental_docker_verbose
# @flag --experimental_materialize_param_files_directly
# @flag --noexperimental_materialize_param_files_directly
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --explain <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @flag --materialize_param_files
# @flag --nomaterialize_param_files
# @option --max_config_changes_to_show <integer>
# @option --max_test_output_bytes <integer>
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --output_filter <value>                a valid Java regular expression
# @option --profile <path>
# @option --progress_report_interval <value>     an integer in 0-3600 range
# @option --remote_print_execution_messages[failure|success|all]
# @flag --sandbox_debug
# @flag --nosandbox_debug
# @option --show_result <integer>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option -s[true|pretty_print|false]
# @option --subcommands[true|pretty_print|false]
# @option --nosubcommands[true|pretty_print|false]
# @option --test_output[summary|errors|all|streamed]
# @option --test_summary[short|terse|detailed|none|testcase]
# @option --tool_tag <string>
# @option --toolchain_resolution_debug <path>    a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @flag --verbose_explanations
# @flag --noverbose_explanations
# @flag --verbose_failures
# @flag --noverbose_failures
# @option --aspects_parameters <value>           a 'name=value' assignment may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --flag_alias <value>                   a 'name=value' flag alias may be used multiple times
# @flag --incompatible_default_to_explicit_init_py
# @flag --noincompatible_default_to_explicit_init_py
# @flag --incompatible_py2_outputs_are_suffixed
# @flag --noincompatible_py2_outputs_are_suffixed
# @flag --incompatible_py3_is_default
# @flag --noincompatible_py3_is_default
# @flag --incompatible_use_python_toolchains
# @flag --noincompatible_use_python_toolchains
# @option --python_version[PY2|PY3]
# @option --target_pattern_file <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_cache_eviction_retries <integer>
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @flag --allow_analysis_cache_discard
# @flag --noallow_analysis_cache_discard
# @option --auto_output_filter[none|all|packages|subpackages]
# @flag --build_manual_tests
# @flag --nobuild_manual_tests
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --build_tag_filters <value>            comma-separated list of options
# @flag --build_tests_only
# @flag --nobuild_tests_only
# @option -t[auto|yes|no]                        <value>  a tri-state
# @option --cache_test_results[auto|yes|no]      <value>  a tri-state
# @option --nocache_test_results[auto|yes|no]    <value>  a tri-state
# @option --color[yes|no|auto]
# @option --combined_report[none|lcov]
# @flag --compile_one_dependency
# @flag --nocompile_one_dependency
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --discard_analysis_cache
# @flag --nodiscard_analysis_cache
# @option --disk_cache <path>
# @option --embed_label <value>                  a one-line string
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @option --execution_log_binary_file <path>
# @option --execution_log_json_file <path>
# @flag --execution_log_sort
# @flag --noexecution_log_sort
# @flag --expand_test_suites
# @flag --noexpand_test_suites
# @flag --experimental_cancel_concurrent_tests
# @flag --noexperimental_cancel_concurrent_tests
# @option --experimental_execution_log_file <path>
# @flag --experimental_execution_log_spawn_metrics
# @flag --noexperimental_execution_log_spawn_metrics
# @option --experimental_extra_action_filter <path>  a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @flag --experimental_extra_action_top_level_only
# @flag --noexperimental_extra_action_top_level_only
# @flag --experimental_fetch_all_coverage_outputs
# @flag --noexperimental_fetch_all_coverage_outputs
# @flag --experimental_generate_llvm_lcov
# @flag --noexperimental_generate_llvm_lcov
# @flag --experimental_j2objc_header_map
# @flag --noexperimental_j2objc_header_map
# @flag --experimental_j2objc_shorter_header_path
# @flag --noexperimental_j2objc_shorter_header_path
# @option --experimental_java_classpath[off|javabuilder|bazel]
# @flag --experimental_limit_android_lint_to_android_constrained_java
# @flag --noexperimental_limit_android_lint_to_android_constrained_java
# @flag --experimental_prioritize_local_actions
# @flag --noexperimental_prioritize_local_actions
# @flag --experimental_run_android_lint_on_java_rules
# @flag --noexperimental_run_android_lint_on_java_rules
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_spawn_scheduler
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @flag --explicit_java_test_deps
# @flag --noexplicit_java_test_deps
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @option --host_java_launcher[`_choice_target`] <label>
# @option --host_javacopt <string>               may be used multiple times
# @option --host_jvmopt <string>                 may be used multiple times
# @flag --ignore_unsupported_sandboxing
# @flag --noignore_unsupported_sandboxing
# @flag --incompatible_check_sharding_support
# @flag --noincompatible_check_sharding_support
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_dont_use_javasourceinfoprovider
# @flag --noincompatible_dont_use_javasourceinfoprovider
# @flag --incompatible_exclusive_test_sandboxed
# @flag --noincompatible_exclusive_test_sandboxed
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @flag --incompatible_strict_action_env
# @flag --noincompatible_strict_action_env
# @option --j2objc_translation_flags <value>     comma-separated list of options may be used multiple times
# @flag --java_debug
# @flag --java_deps
# @flag --nojava_deps
# @flag --java_header_compilation
# @flag --nojava_header_compilation
# @option --java_language_version <string>
# @option --java_launcher[`_choice_target`] <label>
# @option --java_runtime_version <string>
# @option --javacopt <string>                    may be used multiple times
# @option --jvmopt <string>                      may be used multiple times
# @option --legacy_main_dex_list_generator[`_choice_target`] <label>
# @option --local_cpu_resources <value>          an integer, or "HOST_CPUS", optionally followed by [-|*]<float>.
# @option --local_extra_resources <value>        a named float, 'name=value' may be used multiple times
# @option --local_ram_resources <value>          an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --local_termination_grace_seconds <integer>
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @option --plugin[`_choice_target`] may be used multiple times <label>
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @option --proguard_top[`_choice_target`] <label>
# @option --proto_compiler[`_choice_target`] <label>
# @option --proto_toolchain_for_cc[`_choice_target`] <label>
# @option --proto_toolchain_for_j2objc[`_choice_target`] <label>
# @option --proto_toolchain_for_java[`_choice_target`] <label>
# @option --proto_toolchain_for_javalite[`_choice_target`] <label>
# @option --protocopt <string>                   may be used multiple times
# @flag --runs_per_test_detects_flakes
# @flag --noruns_per_test_detects_flakes
# @option --shell_executable <path>
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --test_arg <string>                    may be used multiple times
# @option --test_filter <string>
# @option --test_lang_filters <value>            comma-separated list of options
# @option --test_result_expiration <integer>
# @flag --test_runner_fail_fast
# @flag --notest_runner_fail_fast
# @option --test_sharding_strategy[explicit|disabled]
# @option --test_size_filters[small|medium|large|enormous]  comma-separated list of values
# @option --test_tag_filters <value>             comma-separated list of options
# @option --test_timeout_filters[short|moderate|long|eternal]  comma-separated list of values
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --tool_java_language_version <string>
# @option --tool_java_runtime_version <string>
# @option --ui_actions_shown <integer>
# @flag --use_ijars
# @flag --nouse_ijars
# @flag --watchfs
# @flag --nowatchfs
# @option --workspace_status_command <path>
clean() {
    :;
}
# }} bazel clean

# {{ bazel coverage
# @cmd Generates code coverage report for specified test targets.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --check_up_to_date
# @flag --nocheck_up_to_date
# @option --dynamic_local_execution_delay <integer>
# @option --dynamic_local_strategy <value>       a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --dynamic_remote_strategy <value>      a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --experimental_docker_image <string>
# @flag --experimental_docker_use_customized_images
# @flag --noexperimental_docker_use_customized_images
# @flag --experimental_dynamic_exclude_tools
# @flag --noexperimental_dynamic_exclude_tools
# @option --experimental_dynamic_local_load_factor <double>
# @option --experimental_dynamic_slow_remote_time <value>  An immutable length of time.
# @flag --experimental_enable_docker_sandbox
# @flag --noexperimental_enable_docker_sandbox
# @flag --experimental_inprocess_symlink_creation
# @flag --noexperimental_inprocess_symlink_creation
# @option --experimental_oom_more_eagerly_threshold <integer>
# @flag --experimental_persistent_javac
# @flag --experimental_remotable_source_manifests
# @flag --noexperimental_remotable_source_manifests
# @option --experimental_sandbox_async_tree_delete_idle_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --experimental_sandboxfs_path <string>
# @flag --experimental_split_coverage_postprocessing
# @flag --noexperimental_split_coverage_postprocessing
# @flag --experimental_split_xml_generation
# @flag --noexperimental_split_xml_generation
# @flag --experimental_strict_fileset_output
# @flag --noexperimental_strict_fileset_output
# @option --experimental_total_worker_memory_limit_mb <value>  an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --experimental_use_hermetic_linux_sandbox
# @flag --noexperimental_use_hermetic_linux_sandbox
# @option --experimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --experimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --experimental_windows_sandbox_path <string>
# @flag --experimental_worker_as_resource
# @flag --noexperimental_worker_as_resource
# @flag --experimental_worker_cancellation
# @flag --noexperimental_worker_cancellation
# @flag --experimental_worker_multiplex
# @flag --noexperimental_worker_multiplex
# @flag --experimental_worker_multiplex_sandboxing
# @flag --noexperimental_worker_multiplex_sandboxing
# @flag --experimental_worker_strict_flagfiles
# @flag --noexperimental_worker_strict_flagfiles
# @option --genrule_strategy <value>             comma-separated list of options
# @option --high_priority_workers <string>       may be used multiple times
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag --incompatible_sandbox_hermetic_tmp
# @flag --noincompatible_sandbox_hermetic_tmp
# @flag --internal_spawn_scheduler
# @flag --nointernal_spawn_scheduler
# @option -j --jobs[auto|HOST_CPUS|HOST_RAM]     <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --modify_execution_info* <regex=[+-]key,regex=[+-]key,>
# @flag --persistent_android_dex_desugar
# @flag --persistent_android_resource_processor
# @flag --persistent_multiplex_android_dex_desugar
# @flag --persistent_multiplex_android_resource_processor
# @flag --persistent_multiplex_android_tools
# @flag --reuse_sandbox_directories
# @flag --noreuse_sandbox_directories
# @option --sandbox_base <string>
# @flag --sandbox_explicit_pseudoterminal
# @flag --nosandbox_explicit_pseudoterminal
# @option --sandbox_tmpfs_path <path>            an absolute path may be used multiple times
# @option --spawn_strategy <value>               comma-separated list of options
# @option --strategy <value>                     a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --strategy_regexp <value>              a '<RegexFilter>=value[,value]' assignment may be used multiple times
# @option --worker_extra_flag <value>            a 'name=value' assignment may be used multiple times
# @option --worker_max_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --worker_max_multiplex_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag --worker_quit_after_build
# @flag --noworker_quit_after_build
# @flag --worker_sandboxing
# @flag --noworker_sandboxing
# @flag --worker_verbose
# @flag --noworker_verbose
# @option --android_compiler <string>
# @option --android_crosstool_top[`_choice_target`] <label>
# @option --android_grte_top[`_choice_target`] <label>
# @option --android_manifest_merger[legacy|android|force_android]
# @option --android_platforms[`_choice_target`] <label>
# @option --android_sdk[`_choice_target`] <label>
# @option --apple_compiler <string>
# @option --apple_crosstool_top[`_choice_target`] <label>
# @option --apple_grte_top[`_choice_target`] <label>
# @option --cc_output_directory_tag <string>
# @option --compiler <string>
# @option --coverage_output_generator[`_choice_target`] <label>
# @option --coverage_report_generator[`_choice_target`] <label>
# @option --coverage_support[`_choice_target`] <label>
# @option --crosstool_top[`_choice_target`] <label>
# @option --custom_malloc[`_choice_target`] <label>
# @option --experimental_add_exec_constraints_to_targets <value>  a '<RegexFilter>=<label1>[,<label2>,...]' assignment may be used multiple times
# @flag --experimental_enable_objc_cc_deps
# @flag --noexperimental_enable_objc_cc_deps
# @flag --experimental_include_xcode_execution_requirements
# @flag --noexperimental_include_xcode_execution_requirements
# @flag --experimental_prefer_mutual_xcode
# @flag --noexperimental_prefer_mutual_xcode
# @option --extra_execution_platforms <value>    comma-separated list of options may be used multiple times
# @option --extra_toolchains <value>             comma-separated list of options may be used multiple times
# @option --grte_top[`_choice_target`] <label>
# @option --host_compiler <string>
# @option --host_crosstool_top[`_choice_target`] <label>
# @option --host_grte_top[`_choice_target`] <label>
# @option --host_platform[`_choice_target`] <label>
# @flag --incompatible_disable_expand_if_all_available_in_flag_set
# @flag --noincompatible_disable_expand_if_all_available_in_flag_set
# @flag --incompatible_disable_runtimes_filegroups
# @flag --noincompatible_disable_runtimes_filegroups
# @flag --incompatible_dont_emit_static_libgcc
# @flag --noincompatible_dont_emit_static_libgcc
# @flag --incompatible_dont_enable_host_nonhost_crosstool_features
# @flag --noincompatible_dont_enable_host_nonhost_crosstool_features
# @flag --incompatible_enable_android_toolchain_resolution
# @flag --noincompatible_enable_android_toolchain_resolution
# @flag --incompatible_enable_apple_toolchain_resolution
# @flag --noincompatible_enable_apple_toolchain_resolution
# @flag --incompatible_linkopts_in_user_link_flags
# @flag --noincompatible_linkopts_in_user_link_flags
# @flag --incompatible_make_thinlto_command_lines_standalone
# @flag --noincompatible_make_thinlto_command_lines_standalone
# @flag --incompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --noincompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --incompatible_remove_legacy_whole_archive
# @flag --noincompatible_remove_legacy_whole_archive
# @flag --incompatible_require_ctx_in_configure_features
# @flag --noincompatible_require_ctx_in_configure_features
# @flag --interface_shared_objects
# @flag --nointerface_shared_objects
# @option --ios_sdk_version <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --macos_sdk_version <value>            a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --minimum_os_version <string>
# @option --platform_mappings <path>             a relative path
# @option --platforms[`_choice_target`] <label>
# @option --python2_path <string>
# @option --python3_path <string>
# @option --python_path <string>
# @option --python_top[`_choice_target`] <label>
# @option --target_platform_fallback[`_choice_target`] <label>
# @option --tvos_sdk_version <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_sdk_version <value>          a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xcode_version <string>
# @option --xcode_version_config[`_choice_target`] <label>
# @flag --apple_enable_auto_dsym_dbg
# @flag --noapple_enable_auto_dsym_dbg
# @flag --apple_generate_dsym
# @flag --noapple_generate_dsym
# @flag --build
# @flag --nobuild
# @flag --build_runfile_links
# @flag --nobuild_runfile_links
# @flag --build_runfile_manifests
# @flag --nobuild_runfile_manifests
# @flag --build_test_dwp
# @flag --nobuild_test_dwp
# @option --cc_proto_library_header_suffixes <value>  comma-separated list of options
# @option --cc_proto_library_source_suffixes <value>  comma-separated list of options
# @flag --experimental_proto_descriptor_sets_include_source_info
# @flag --noexperimental_proto_descriptor_sets_include_source_info
# @flag --experimental_proto_extra_actions
# @flag --noexperimental_proto_extra_actions
# @flag --experimental_run_validations
# @flag --noexperimental_run_validations
# @flag --experimental_save_feature_state
# @flag --noexperimental_save_feature_state
# @flag --experimental_use_validation_aspect
# @flag --noexperimental_use_validation_aspect
# @option --fission <value>                      a set of compilation modes
# @flag --incompatible_always_include_files_in_data
# @flag --noincompatible_always_include_files_in_data
# @flag --legacy_external_runfiles
# @flag --nolegacy_external_runfiles
# @flag --objc_generate_linkmap
# @flag --noobjc_generate_linkmap
# @option --output_groups <value>                comma-separated list of options may be used multiple times
# @flag --run_validations
# @flag --norun_validations
# @flag --save_temps
# @flag --nosave_temps
# @option --action_env <value>                   a 'name=value' assignment with an optional value part may be used multiple times
# @option --android_cpu <string>
# @flag --android_databinding_use_androidx
# @flag --noandroid_databinding_use_androidx
# @flag --android_databinding_use_v3_4_args
# @flag --noandroid_databinding_use_v3_4_args
# @option --android_dynamic_mode[off|default|fully]
# @option --android_manifest_merger_order[alphabetical|alphabetical_by_configuration|dependency]
# @flag --android_resource_shrinking
# @flag --noandroid_resource_shrinking
# @option --apple_bitcode <value>                'mode' or 'platform=mode', where 'mode' is none, embedded_markers or embedded, and 'platform' is ios, visionos, watchos, tvos, macos or catalyst may be used multiple times
# @option --aspects <value>                      comma-separated list of options may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @option --build_python_zip[auto|yes|no] <value>  a tri-state
# @option --nobuild_python_zip[auto|yes|no] <value>  a tri-state
# @option --catalyst_cpus <value>                comma-separated list of options may be used multiple times
# @flag --collect_code_coverage
# @flag --nocollect_code_coverage
# @option -c --compilation_mode[fastbuild|dbg|opt]
# @option --conlyopt <string>                    may be used multiple times
# @option --copt <string>                        may be used multiple times
# @option --cpu <string>
# @option --cs_fdo_absolute_path <string>
# @option --cs_fdo_instrument <string>
# @option --cs_fdo_profile[`_choice_target`] <label>
# @option --cxxopt <string>                      may be used multiple times
# @option --define <value>                       a 'name=value' assignment may be used multiple times
# @option --dynamic_mode[off|default|fully]
# @flag --enable_fdo_profile_absolute_path
# @flag --noenable_fdo_profile_absolute_path
# @option --enable_runfiles[auto|yes|no] <value>  a tri-state
# @option --noenable_runfiles[auto|yes|no] <value>  a tri-state
# @option --experimental_action_listener[`_choice_target`] may be used multiple times <label>
# @flag --experimental_android_compress_java_resources
# @flag --noexperimental_android_compress_java_resources
# @flag --experimental_android_databinding_v2
# @flag --noexperimental_android_databinding_v2
# @flag --experimental_android_resource_shrinking
# @flag --noexperimental_android_resource_shrinking
# @flag --experimental_android_rewrite_dexes_with_rex
# @flag --noexperimental_android_rewrite_dexes_with_rex
# @flag --experimental_collect_code_coverage_for_generated_files
# @flag --noexperimental_collect_code_coverage_for_generated_files
# @option --experimental_convenience_symlinks[normal|clean|ignore|log_only]
# @option --noexperimental_convenience_symlinks[normal|clean|ignore|log_only]
# @flag --experimental_convenience_symlinks_bep_event
# @flag --noexperimental_convenience_symlinks_bep_event
# @option --experimental_multi_cpu <value>       comma-separated list of options may be used multiple times
# @option --experimental_objc_fastbuild_options <value>  comma-separated list of options
# @flag --experimental_omitfp
# @flag --noexperimental_omitfp
# @flag --experimental_platform_in_output_dir
# @flag --noexperimental_platform_in_output_dir
# @flag --experimental_use_llvm_covmap
# @flag --noexperimental_use_llvm_covmap
# @option --fat_apk_cpu <value>                  comma-separated list of options
# @flag --fat_apk_hwasan
# @flag --nofat_apk_hwasan
# @option --fdo_instrument <string>
# @option --fdo_optimize <string>
# @option --fdo_prefetch_hints[`_choice_target`] <label>
# @option --fdo_profile[`_choice_target`] <label>
# @option --features <string>                    may be used multiple times
# @flag --force_pic
# @flag --noforce_pic
# @option --host_action_env <value>              a 'name=value' assignment with an optional value part may be used multiple times
# @option --host_compilation_mode[fastbuild|dbg|opt]
# @option --host_conlyopt <string>               may be used multiple times
# @option --host_copt <string>                   may be used multiple times
# @option --host_cpu <string>
# @option --host_cxxopt <string>                 may be used multiple times
# @option --host_features <string>               may be used multiple times
# @option --host_force_python[PY2|PY3]
# @option --host_linkopt <string>                may be used multiple times
# @option --host_macos_minimum_os <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --host_per_file_copt <path>            a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --host_swiftcopt <string>              may be used multiple times
# @flag --incompatible_avoid_conflict_dlls
# @flag --noincompatible_avoid_conflict_dlls
# @flag --incompatible_merge_genfiles_directory
# @flag --noincompatible_merge_genfiles_directory
# @flag --incompatible_use_host_features
# @flag --noincompatible_use_host_features
# @flag --incompatible_use_platforms_repo_for_constraints
# @flag --noincompatible_use_platforms_repo_for_constraints
# @flag --instrument_test_targets
# @flag --noinstrument_test_targets
# @option --instrumentation_filter <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ios_minimum_os <value>               a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --ios_multi_cpus <value>               comma-separated list of options may be used multiple times
# @flag --legacy_whole_archive
# @flag --nolegacy_whole_archive
# @option --linkopt <string>                     may be used multiple times
# @option --ltobackendopt <string>               may be used multiple times
# @option --ltoindexopt <string>                 may be used multiple times
# @option --macos_cpus <value>                   comma-separated list of options may be used multiple times
# @option --macos_minimum_os <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --objc_debug_with_GLIBCXX
# @flag --noobjc_debug_with_GLIBCXX
# @flag --objc_enable_binary_stripping
# @flag --noobjc_enable_binary_stripping
# @option --objccopt <string>                    may be used multiple times
# @option --per_file_copt <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --per_file_ltobackendopt <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --platform_suffix <string>
# @option --propeller_optimize[`_choice_target`] <label>
# @option --propeller_optimize_absolute_cc_profile <string>
# @option --propeller_optimize_absolute_ld_profile <string>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @option --run_under <value>                    a prefix in front of command
# @flag --share_native_deps
# @flag --noshare_native_deps
# @flag --stamp
# @flag --nostamp
# @option --strip[always|sometimes|never]
# @option --stripopt <string>                    may be used multiple times
# @option --swiftcopt <string>                   may be used multiple times
# @option --symlink_prefix <string>
# @option --tvos_cpus <value>                    comma-separated list of options may be used multiple times
# @option --tvos_minimum_os <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --visionos_cpus <value>                comma-separated list of options may be used multiple times
# @option --watchos_cpus <value>                 comma-separated list of options may be used multiple times
# @option --watchos_minimum_os <value>           a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xbinary_fdo[`_choice_target`] <label>
# @option --auto_cpu_environment_group[`_choice_target`] <label>
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @flag --check_licenses
# @flag --nocheck_licenses
# @flag --check_visibility
# @flag --nocheck_visibility
# @flag --desugar_for_android
# @flag --nodesugar_for_android
# @flag --desugar_java8_libs
# @flag --nodesugar_java8_libs
# @flag --enforce_constraints
# @flag --noenforce_constraints
# @flag --experimental_allow_android_library_deps_without_srcs
# @flag --noexperimental_allow_android_library_deps_without_srcs
# @flag --experimental_check_desugar_deps
# @flag --noexperimental_check_desugar_deps
# @flag --experimental_docker_privileged
# @flag --noexperimental_docker_privileged
# @option --experimental_import_deps_checking[off|warning|error]
# @option --experimental_repository_hash_file <string>
# @flag --experimental_sandboxfs_map_symlink_targets
# @flag --noexperimental_sandboxfs_map_symlink_targets
# @option --experimental_strict_java_deps[off|warn|error|strict|default]
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --incompatible_check_testonly_for_output_files
# @flag --noincompatible_check_testonly_for_output_files
# @flag --incompatible_disable_native_android_rules
# @flag --noincompatible_disable_native_android_rules
# @flag --incompatible_disable_native_apple_binary_rule
# @flag --noincompatible_disable_native_apple_binary_rule
# @flag --incompatible_force_strict_header_check_from_starlark
# @flag --noincompatible_force_strict_header_check_from_starlark
# @flag --incompatible_legacy_local_fallback
# @flag --noincompatible_legacy_local_fallback
# @flag --incompatible_validate_top_level_header_inclusions
# @flag --noincompatible_validate_top_level_header_inclusions
# @option --sandbox_add_mount_pair <path>        a single path or a 'source:target' pair may be used multiple times
# @option --sandbox_block_path <string>          may be used multiple times
# @flag --sandbox_default_allow_network
# @flag --nosandbox_default_allow_network
# @flag --sandbox_fake_hostname
# @flag --nosandbox_fake_hostname
# @flag --sandbox_fake_username
# @flag --nosandbox_fake_username
# @option --sandbox_writable_path <string>       may be used multiple times
# @flag --strict_filesets
# @flag --nostrict_filesets
# @option --strict_proto_deps[off|warn|error|strict|default]
# @option --strict_public_imports[off|warn|error|strict|default]
# @flag --strict_system_includes
# @flag --nostrict_system_includes
# @option --target_environment[`_choice_target`] may be used multiple times <label>
# @option --apk_signing_method[v1|v2|v1_v2|v4]
# @flag --device_debug_entitlements
# @flag --nodevice_debug_entitlements
# @option --ios_signing_cert_name <string>
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_legacy_py_provider
# @flag --noincompatible_disallow_legacy_py_provider
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @flag --allow_analysis_failures
# @flag --noallow_analysis_failures
# @option --analysis_testing_deps_limit <integer>
# @flag --break_build_on_parallel_dex2oat_failure
# @flag --nobreak_build_on_parallel_dex2oat_failure
# @flag --check_tests_up_to_date
# @flag --nocheck_tests_up_to_date
# @flag --experimental_android_use_parallel_dex2oat
# @flag --noexperimental_android_use_parallel_dex2oat
# @option --flaky_test_attempts <value>          a positive integer, the string "default", or test_regex@attempts.
# @flag --ios_memleaks
# @flag --noios_memleaks
# @option --ios_simulator_device <string>
# @option --ios_simulator_version <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --local_test_jobs[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --runs_per_test <value>                a positive integer or test_regex@runs.
# @option --test_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --test_keep_going
# @flag --notest_keep_going
# @option --test_strategy <string>
# @option --test_timeout <value>                 a single integer or comma-separated list of 4 integers
# @option --test_tmpdir <path>
# @option --tvos_simulator_device <string>
# @option --tvos_simulator_version <value>       a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_simulator_device <string>
# @option --watchos_simulator_version <value>    a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --zip_undeclared_test_outputs
# @flag --nozip_undeclared_test_outputs
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --collapse_duplicate_defines
# @flag --nocollapse_duplicate_defines
# @flag --experimental_filter_library_jar_with_program_jar
# @flag --noexperimental_filter_library_jar_with_program_jar
# @flag --experimental_inmemory_dotd_files
# @flag --noexperimental_inmemory_dotd_files
# @flag --experimental_inmemory_jdeps_files
# @flag --noexperimental_inmemory_jdeps_files
# @flag --experimental_objc_include_scanning
# @flag --noexperimental_objc_include_scanning
# @flag --experimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --noexperimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --experimental_retain_test_configuration_across_testonly
# @flag --noexperimental_retain_test_configuration_across_testonly
# @flag --experimental_starlark_cc_import
# @flag --noexperimental_starlark_cc_import
# @flag --experimental_unsupported_and_brittle_include_scanning
# @flag --noexperimental_unsupported_and_brittle_include_scanning
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --incremental_dexing
# @flag --noincremental_dexing
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @flag --objc_use_dotd_pruning
# @flag --noobjc_use_dotd_pruning
# @flag --process_headers_in_dependencies
# @flag --noprocess_headers_in_dependencies
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --trim_test_configuration
# @flag --notrim_test_configuration
# @flag --use_singlejar_apkbuilder
# @flag --nouse_singlejar_apkbuilder
# @flag --announce
# @flag --noannounce
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --debug_spawn_scheduler
# @flag --nodebug_spawn_scheduler
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @flag --experimental_collect_local_sandbox_action_metrics
# @flag --noexperimental_collect_local_sandbox_action_metrics
# @flag --experimental_docker_verbose
# @flag --noexperimental_docker_verbose
# @flag --experimental_materialize_param_files_directly
# @flag --noexperimental_materialize_param_files_directly
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --explain <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @flag --materialize_param_files
# @flag --nomaterialize_param_files
# @option --max_config_changes_to_show <integer>
# @option --max_test_output_bytes <integer>
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --output_filter <value>                a valid Java regular expression
# @flag --print_relative_test_log_paths
# @flag --noprint_relative_test_log_paths
# @option --profile <path>
# @option --progress_report_interval <value>     an integer in 0-3600 range
# @option --remote_print_execution_messages[failure|success|all]
# @flag --sandbox_debug
# @flag --nosandbox_debug
# @option --show_result <integer>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option -s[true|pretty_print|false]
# @option --subcommands[true|pretty_print|false]
# @option --nosubcommands[true|pretty_print|false]
# @option --test_output[summary|errors|all|streamed]
# @option --test_summary[short|terse|detailed|none|testcase]
# @flag --test_verbose_timeout_warnings
# @flag --notest_verbose_timeout_warnings
# @option --tool_tag <string>
# @option --toolchain_resolution_debug <path>    a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @flag --verbose_explanations
# @flag --noverbose_explanations
# @flag --verbose_failures
# @flag --noverbose_failures
# @flag --verbose_test_summary
# @flag --noverbose_test_summary
# @option --aspects_parameters <value>           a 'name=value' assignment may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --flag_alias <value>                   a 'name=value' flag alias may be used multiple times
# @flag --incompatible_default_to_explicit_init_py
# @flag --noincompatible_default_to_explicit_init_py
# @flag --incompatible_py2_outputs_are_suffixed
# @flag --noincompatible_py2_outputs_are_suffixed
# @flag --incompatible_py3_is_default
# @flag --noincompatible_py3_is_default
# @flag --incompatible_use_python_toolchains
# @flag --noincompatible_use_python_toolchains
# @option --python_version[PY2|PY3]
# @option --target_pattern_file <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_cache_eviction_retries <integer>
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @flag --allow_analysis_cache_discard
# @flag --noallow_analysis_cache_discard
# @option --auto_output_filter[none|all|packages|subpackages]
# @flag --build_manual_tests
# @flag --nobuild_manual_tests
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --build_tag_filters <value>            comma-separated list of options
# @flag --build_tests_only
# @flag --nobuild_tests_only
# @option -t[auto|yes|no]                        <value>  a tri-state
# @option --cache_test_results[auto|yes|no]      <value>  a tri-state
# @option --nocache_test_results[auto|yes|no]    <value>  a tri-state
# @option --color[yes|no|auto]
# @option --combined_report[none|lcov]
# @flag --compile_one_dependency
# @flag --nocompile_one_dependency
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --discard_analysis_cache
# @flag --nodiscard_analysis_cache
# @option --disk_cache <path>
# @option --embed_label <value>                  a one-line string
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @option --execution_log_binary_file <path>
# @option --execution_log_json_file <path>
# @flag --execution_log_sort
# @flag --noexecution_log_sort
# @flag --expand_test_suites
# @flag --noexpand_test_suites
# @flag --experimental_cancel_concurrent_tests
# @flag --noexperimental_cancel_concurrent_tests
# @option --experimental_execution_log_file <path>
# @flag --experimental_execution_log_spawn_metrics
# @flag --noexperimental_execution_log_spawn_metrics
# @option --experimental_extra_action_filter <path>  a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @flag --experimental_extra_action_top_level_only
# @flag --noexperimental_extra_action_top_level_only
# @flag --experimental_fetch_all_coverage_outputs
# @flag --noexperimental_fetch_all_coverage_outputs
# @flag --experimental_generate_llvm_lcov
# @flag --noexperimental_generate_llvm_lcov
# @flag --experimental_j2objc_header_map
# @flag --noexperimental_j2objc_header_map
# @flag --experimental_j2objc_shorter_header_path
# @flag --noexperimental_j2objc_shorter_header_path
# @option --experimental_java_classpath[off|javabuilder|bazel]
# @flag --experimental_limit_android_lint_to_android_constrained_java
# @flag --noexperimental_limit_android_lint_to_android_constrained_java
# @flag --experimental_prioritize_local_actions
# @flag --noexperimental_prioritize_local_actions
# @flag --experimental_run_android_lint_on_java_rules
# @flag --noexperimental_run_android_lint_on_java_rules
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_spawn_scheduler
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @flag --explicit_java_test_deps
# @flag --noexplicit_java_test_deps
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @option --host_java_launcher[`_choice_target`] <label>
# @option --host_javacopt <string>               may be used multiple times
# @option --host_jvmopt <string>                 may be used multiple times
# @flag --ignore_unsupported_sandboxing
# @flag --noignore_unsupported_sandboxing
# @flag --incompatible_check_sharding_support
# @flag --noincompatible_check_sharding_support
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_dont_use_javasourceinfoprovider
# @flag --noincompatible_dont_use_javasourceinfoprovider
# @flag --incompatible_exclusive_test_sandboxed
# @flag --noincompatible_exclusive_test_sandboxed
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @flag --incompatible_strict_action_env
# @flag --noincompatible_strict_action_env
# @option --j2objc_translation_flags <value>     comma-separated list of options may be used multiple times
# @flag --java_debug
# @flag --java_deps
# @flag --nojava_deps
# @flag --java_header_compilation
# @flag --nojava_header_compilation
# @option --java_language_version <string>
# @option --java_launcher[`_choice_target`] <label>
# @option --java_runtime_version <string>
# @option --javacopt <string>                    may be used multiple times
# @option --jvmopt <string>                      may be used multiple times
# @option --legacy_main_dex_list_generator[`_choice_target`] <label>
# @option --local_cpu_resources <value>          an integer, or "HOST_CPUS", optionally followed by [-|*]<float>.
# @option --local_extra_resources <value>        a named float, 'name=value' may be used multiple times
# @option --local_ram_resources <value>          an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --local_termination_grace_seconds <integer>
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @option --plugin[`_choice_target`] may be used multiple times <label>
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @option --proguard_top[`_choice_target`] <label>
# @option --proto_compiler[`_choice_target`] <label>
# @option --proto_toolchain_for_cc[`_choice_target`] <label>
# @option --proto_toolchain_for_j2objc[`_choice_target`] <label>
# @option --proto_toolchain_for_java[`_choice_target`] <label>
# @option --proto_toolchain_for_javalite[`_choice_target`] <label>
# @option --protocopt <string>                   may be used multiple times
# @flag --runs_per_test_detects_flakes
# @flag --noruns_per_test_detects_flakes
# @option --shell_executable <path>
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --test_arg <string>                    may be used multiple times
# @option --test_filter <string>
# @option --test_lang_filters <value>            comma-separated list of options
# @option --test_result_expiration <integer>
# @flag --test_runner_fail_fast
# @flag --notest_runner_fail_fast
# @option --test_sharding_strategy[explicit|disabled]
# @option --test_size_filters[small|medium|large|enormous]  comma-separated list of values
# @option --test_tag_filters <value>             comma-separated list of options
# @option --test_timeout_filters[short|moderate|long|eternal]  comma-separated list of values
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --tool_java_language_version <string>
# @option --tool_java_runtime_version <string>
# @option --ui_actions_shown <integer>
# @flag --use_ijars
# @flag --nouse_ijars
# @flag --watchfs
# @flag --nowatchfs
# @option --workspace_status_command <path>
# @arg test-targets*[`_choice_test_target`]
coverage() {
    :;
}
# }} bazel coverage

# {{ bazel cquery
# @cmd Loads, analyzes, and queries the specified targets w/ configurations.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --check_up_to_date
# @flag --nocheck_up_to_date
# @option --dynamic_local_execution_delay <integer>
# @option --dynamic_local_strategy <value>       a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --dynamic_remote_strategy <value>      a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --experimental_docker_image <string>
# @flag --experimental_docker_use_customized_images
# @flag --noexperimental_docker_use_customized_images
# @flag --experimental_dynamic_exclude_tools
# @flag --noexperimental_dynamic_exclude_tools
# @option --experimental_dynamic_local_load_factor <double>
# @option --experimental_dynamic_slow_remote_time <value>  An immutable length of time.
# @flag --experimental_enable_docker_sandbox
# @flag --noexperimental_enable_docker_sandbox
# @flag --experimental_inprocess_symlink_creation
# @flag --noexperimental_inprocess_symlink_creation
# @option --experimental_oom_more_eagerly_threshold <integer>
# @flag --experimental_persistent_javac
# @flag --experimental_remotable_source_manifests
# @flag --noexperimental_remotable_source_manifests
# @option --experimental_sandbox_async_tree_delete_idle_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --experimental_sandboxfs_path <string>
# @flag --experimental_split_coverage_postprocessing
# @flag --noexperimental_split_coverage_postprocessing
# @flag --experimental_split_xml_generation
# @flag --noexperimental_split_xml_generation
# @flag --experimental_strict_fileset_output
# @flag --noexperimental_strict_fileset_output
# @option --experimental_total_worker_memory_limit_mb <value>  an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --experimental_use_hermetic_linux_sandbox
# @flag --noexperimental_use_hermetic_linux_sandbox
# @option --experimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --experimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --experimental_windows_sandbox_path <string>
# @flag --experimental_worker_as_resource
# @flag --noexperimental_worker_as_resource
# @flag --experimental_worker_cancellation
# @flag --noexperimental_worker_cancellation
# @flag --experimental_worker_multiplex
# @flag --noexperimental_worker_multiplex
# @flag --experimental_worker_multiplex_sandboxing
# @flag --noexperimental_worker_multiplex_sandboxing
# @flag --experimental_worker_strict_flagfiles
# @flag --noexperimental_worker_strict_flagfiles
# @option --genrule_strategy <value>             comma-separated list of options
# @option --high_priority_workers <string>       may be used multiple times
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag --incompatible_sandbox_hermetic_tmp
# @flag --noincompatible_sandbox_hermetic_tmp
# @flag --internal_spawn_scheduler
# @flag --nointernal_spawn_scheduler
# @option -j --jobs[auto|HOST_CPUS|HOST_RAM]     <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --modify_execution_info* <regex=[+-]key,regex=[+-]key,>
# @flag --persistent_android_dex_desugar
# @flag --persistent_android_resource_processor
# @flag --persistent_multiplex_android_dex_desugar
# @flag --persistent_multiplex_android_resource_processor
# @flag --persistent_multiplex_android_tools
# @flag --reuse_sandbox_directories
# @flag --noreuse_sandbox_directories
# @option --sandbox_base <string>
# @flag --sandbox_explicit_pseudoterminal
# @flag --nosandbox_explicit_pseudoterminal
# @option --sandbox_tmpfs_path <path>            an absolute path may be used multiple times
# @option --spawn_strategy <value>               comma-separated list of options
# @option --strategy <value>                     a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --strategy_regexp <value>              a '<RegexFilter>=value[,value]' assignment may be used multiple times
# @option --worker_extra_flag <value>            a 'name=value' assignment may be used multiple times
# @option --worker_max_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --worker_max_multiplex_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag --worker_quit_after_build
# @flag --noworker_quit_after_build
# @flag --worker_sandboxing
# @flag --noworker_sandboxing
# @flag --worker_verbose
# @flag --noworker_verbose
# @option --android_compiler <string>
# @option --android_crosstool_top[`_choice_target`] <label>
# @option --android_grte_top[`_choice_target`] <label>
# @option --android_manifest_merger[legacy|android|force_android]
# @option --android_platforms[`_choice_target`] <label>
# @option --android_sdk[`_choice_target`] <label>
# @option --apple_compiler <string>
# @option --apple_crosstool_top[`_choice_target`] <label>
# @option --apple_grte_top[`_choice_target`] <label>
# @option --cc_output_directory_tag <string>
# @option --compiler <string>
# @option --coverage_output_generator[`_choice_target`] <label>
# @option --coverage_report_generator[`_choice_target`] <label>
# @option --coverage_support[`_choice_target`] <label>
# @option --crosstool_top[`_choice_target`] <label>
# @option --custom_malloc[`_choice_target`] <label>
# @option --experimental_add_exec_constraints_to_targets <value>  a '<RegexFilter>=<label1>[,<label2>,...]' assignment may be used multiple times
# @flag --experimental_enable_objc_cc_deps
# @flag --noexperimental_enable_objc_cc_deps
# @flag --experimental_include_xcode_execution_requirements
# @flag --noexperimental_include_xcode_execution_requirements
# @flag --experimental_prefer_mutual_xcode
# @flag --noexperimental_prefer_mutual_xcode
# @option --extra_execution_platforms <value>    comma-separated list of options may be used multiple times
# @option --extra_toolchains <value>             comma-separated list of options may be used multiple times
# @option --grte_top[`_choice_target`] <label>
# @option --host_compiler <string>
# @option --host_crosstool_top[`_choice_target`] <label>
# @option --host_grte_top[`_choice_target`] <label>
# @option --host_platform[`_choice_target`] <label>
# @flag --incompatible_disable_expand_if_all_available_in_flag_set
# @flag --noincompatible_disable_expand_if_all_available_in_flag_set
# @flag --incompatible_disable_runtimes_filegroups
# @flag --noincompatible_disable_runtimes_filegroups
# @flag --incompatible_dont_emit_static_libgcc
# @flag --noincompatible_dont_emit_static_libgcc
# @flag --incompatible_dont_enable_host_nonhost_crosstool_features
# @flag --noincompatible_dont_enable_host_nonhost_crosstool_features
# @flag --incompatible_enable_android_toolchain_resolution
# @flag --noincompatible_enable_android_toolchain_resolution
# @flag --incompatible_enable_apple_toolchain_resolution
# @flag --noincompatible_enable_apple_toolchain_resolution
# @flag --incompatible_linkopts_in_user_link_flags
# @flag --noincompatible_linkopts_in_user_link_flags
# @flag --incompatible_make_thinlto_command_lines_standalone
# @flag --noincompatible_make_thinlto_command_lines_standalone
# @flag --incompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --noincompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --incompatible_remove_legacy_whole_archive
# @flag --noincompatible_remove_legacy_whole_archive
# @flag --incompatible_require_ctx_in_configure_features
# @flag --noincompatible_require_ctx_in_configure_features
# @flag --interface_shared_objects
# @flag --nointerface_shared_objects
# @option --ios_sdk_version <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --macos_sdk_version <value>            a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --minimum_os_version <string>
# @option --platform_mappings <path>             a relative path
# @option --platforms[`_choice_target`] <label>
# @option --python2_path <string>
# @option --python3_path <string>
# @option --python_path <string>
# @option --python_top[`_choice_target`] <label>
# @option --target_platform_fallback[`_choice_target`] <label>
# @option --tvos_sdk_version <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_sdk_version <value>          a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xcode_version <string>
# @option --xcode_version_config[`_choice_target`] <label>
# @flag --apple_enable_auto_dsym_dbg
# @flag --noapple_enable_auto_dsym_dbg
# @flag --apple_generate_dsym
# @flag --noapple_generate_dsym
# @flag --build
# @flag --nobuild
# @flag --build_runfile_links
# @flag --nobuild_runfile_links
# @flag --build_runfile_manifests
# @flag --nobuild_runfile_manifests
# @flag --build_test_dwp
# @flag --nobuild_test_dwp
# @option --cc_proto_library_header_suffixes <value>  comma-separated list of options
# @option --cc_proto_library_source_suffixes <value>  comma-separated list of options
# @flag --experimental_proto_descriptor_sets_include_source_info
# @flag --noexperimental_proto_descriptor_sets_include_source_info
# @flag --experimental_proto_extra_actions
# @flag --noexperimental_proto_extra_actions
# @flag --experimental_run_validations
# @flag --noexperimental_run_validations
# @flag --experimental_save_feature_state
# @flag --noexperimental_save_feature_state
# @flag --experimental_use_validation_aspect
# @flag --noexperimental_use_validation_aspect
# @option --fission <value>                      a set of compilation modes
# @flag --incompatible_always_include_files_in_data
# @flag --noincompatible_always_include_files_in_data
# @flag --legacy_external_runfiles
# @flag --nolegacy_external_runfiles
# @flag --objc_generate_linkmap
# @flag --noobjc_generate_linkmap
# @option --output_groups <value>                comma-separated list of options may be used multiple times
# @flag --run_validations
# @flag --norun_validations
# @flag --save_temps
# @flag --nosave_temps
# @option --action_env <value>                   a 'name=value' assignment with an optional value part may be used multiple times
# @option --android_cpu <string>
# @flag --android_databinding_use_androidx
# @flag --noandroid_databinding_use_androidx
# @flag --android_databinding_use_v3_4_args
# @flag --noandroid_databinding_use_v3_4_args
# @option --android_dynamic_mode[off|default|fully]
# @option --android_manifest_merger_order[alphabetical|alphabetical_by_configuration|dependency]
# @flag --android_resource_shrinking
# @flag --noandroid_resource_shrinking
# @option --apple_bitcode <value>                'mode' or 'platform=mode', where 'mode' is none, embedded_markers or embedded, and 'platform' is ios, visionos, watchos, tvos, macos or catalyst may be used multiple times
# @option --aspects <value>                      comma-separated list of options may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @option --build_python_zip[auto|yes|no] <value>  a tri-state
# @option --nobuild_python_zip[auto|yes|no] <value>  a tri-state
# @option --catalyst_cpus <value>                comma-separated list of options may be used multiple times
# @flag --collect_code_coverage
# @flag --nocollect_code_coverage
# @option -c --compilation_mode[fastbuild|dbg|opt]
# @option --conlyopt <string>                    may be used multiple times
# @option --copt <string>                        may be used multiple times
# @option --cpu <string>
# @option --cs_fdo_absolute_path <string>
# @option --cs_fdo_instrument <string>
# @option --cs_fdo_profile[`_choice_target`] <label>
# @option --cxxopt <string>                      may be used multiple times
# @option --define <value>                       a 'name=value' assignment may be used multiple times
# @option --dynamic_mode[off|default|fully]
# @flag --enable_fdo_profile_absolute_path
# @flag --noenable_fdo_profile_absolute_path
# @option --enable_runfiles[auto|yes|no] <value>  a tri-state
# @option --noenable_runfiles[auto|yes|no] <value>  a tri-state
# @option --experimental_action_listener[`_choice_target`] may be used multiple times <label>
# @flag --experimental_android_compress_java_resources
# @flag --noexperimental_android_compress_java_resources
# @flag --experimental_android_databinding_v2
# @flag --noexperimental_android_databinding_v2
# @flag --experimental_android_resource_shrinking
# @flag --noexperimental_android_resource_shrinking
# @flag --experimental_android_rewrite_dexes_with_rex
# @flag --noexperimental_android_rewrite_dexes_with_rex
# @flag --experimental_collect_code_coverage_for_generated_files
# @flag --noexperimental_collect_code_coverage_for_generated_files
# @option --experimental_convenience_symlinks[normal|clean|ignore|log_only]
# @option --noexperimental_convenience_symlinks[normal|clean|ignore|log_only]
# @flag --experimental_convenience_symlinks_bep_event
# @flag --noexperimental_convenience_symlinks_bep_event
# @option --experimental_multi_cpu <value>       comma-separated list of options may be used multiple times
# @option --experimental_objc_fastbuild_options <value>  comma-separated list of options
# @flag --experimental_omitfp
# @flag --noexperimental_omitfp
# @flag --experimental_platform_in_output_dir
# @flag --noexperimental_platform_in_output_dir
# @flag --experimental_use_llvm_covmap
# @flag --noexperimental_use_llvm_covmap
# @option --fat_apk_cpu <value>                  comma-separated list of options
# @flag --fat_apk_hwasan
# @flag --nofat_apk_hwasan
# @option --fdo_instrument <string>
# @option --fdo_optimize <string>
# @option --fdo_prefetch_hints[`_choice_target`] <label>
# @option --fdo_profile[`_choice_target`] <label>
# @option --features <string>                    may be used multiple times
# @flag --force_pic
# @flag --noforce_pic
# @option --host_action_env <value>              a 'name=value' assignment with an optional value part may be used multiple times
# @option --host_compilation_mode[fastbuild|dbg|opt]
# @option --host_conlyopt <string>               may be used multiple times
# @option --host_copt <string>                   may be used multiple times
# @option --host_cpu <string>
# @option --host_cxxopt <string>                 may be used multiple times
# @option --host_features <string>               may be used multiple times
# @option --host_force_python[PY2|PY3]
# @option --host_linkopt <string>                may be used multiple times
# @option --host_macos_minimum_os <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --host_per_file_copt <path>            a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --host_swiftcopt <string>              may be used multiple times
# @flag --incompatible_avoid_conflict_dlls
# @flag --noincompatible_avoid_conflict_dlls
# @flag --incompatible_merge_genfiles_directory
# @flag --noincompatible_merge_genfiles_directory
# @flag --incompatible_use_host_features
# @flag --noincompatible_use_host_features
# @flag --incompatible_use_platforms_repo_for_constraints
# @flag --noincompatible_use_platforms_repo_for_constraints
# @flag --instrument_test_targets
# @flag --noinstrument_test_targets
# @option --instrumentation_filter <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ios_minimum_os <value>               a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --ios_multi_cpus <value>               comma-separated list of options may be used multiple times
# @flag --legacy_whole_archive
# @flag --nolegacy_whole_archive
# @option --linkopt <string>                     may be used multiple times
# @option --ltobackendopt <string>               may be used multiple times
# @option --ltoindexopt <string>                 may be used multiple times
# @option --macos_cpus <value>                   comma-separated list of options may be used multiple times
# @option --macos_minimum_os <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --objc_debug_with_GLIBCXX
# @flag --noobjc_debug_with_GLIBCXX
# @flag --objc_enable_binary_stripping
# @flag --noobjc_enable_binary_stripping
# @option --objccopt <string>                    may be used multiple times
# @option --per_file_copt <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --per_file_ltobackendopt <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --platform_suffix <string>
# @option --propeller_optimize[`_choice_target`] <label>
# @option --propeller_optimize_absolute_cc_profile <string>
# @option --propeller_optimize_absolute_ld_profile <string>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @option --run_under <value>                    a prefix in front of command
# @flag --share_native_deps
# @flag --noshare_native_deps
# @flag --stamp
# @flag --nostamp
# @option --strip[always|sometimes|never]
# @option --stripopt <string>                    may be used multiple times
# @option --swiftcopt <string>                   may be used multiple times
# @option --symlink_prefix <string>
# @option --tvos_cpus <value>                    comma-separated list of options may be used multiple times
# @option --tvos_minimum_os <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --visionos_cpus <value>                comma-separated list of options may be used multiple times
# @option --watchos_cpus <value>                 comma-separated list of options may be used multiple times
# @option --watchos_minimum_os <value>           a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xbinary_fdo[`_choice_target`] <label>
# @option --auto_cpu_environment_group[`_choice_target`] <label>
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @flag --check_licenses
# @flag --nocheck_licenses
# @flag --check_visibility
# @flag --nocheck_visibility
# @flag --desugar_for_android
# @flag --nodesugar_for_android
# @flag --desugar_java8_libs
# @flag --nodesugar_java8_libs
# @flag --enforce_constraints
# @flag --noenforce_constraints
# @flag --experimental_allow_android_library_deps_without_srcs
# @flag --noexperimental_allow_android_library_deps_without_srcs
# @flag --experimental_check_desugar_deps
# @flag --noexperimental_check_desugar_deps
# @flag --experimental_docker_privileged
# @flag --noexperimental_docker_privileged
# @option --experimental_import_deps_checking[off|warning|error]
# @option --experimental_repository_hash_file <string>
# @flag --experimental_sandboxfs_map_symlink_targets
# @flag --noexperimental_sandboxfs_map_symlink_targets
# @option --experimental_strict_java_deps[off|warn|error|strict|default]
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --incompatible_check_testonly_for_output_files
# @flag --noincompatible_check_testonly_for_output_files
# @flag --incompatible_disable_native_android_rules
# @flag --noincompatible_disable_native_android_rules
# @flag --incompatible_disable_native_apple_binary_rule
# @flag --noincompatible_disable_native_apple_binary_rule
# @flag --incompatible_force_strict_header_check_from_starlark
# @flag --noincompatible_force_strict_header_check_from_starlark
# @flag --incompatible_legacy_local_fallback
# @flag --noincompatible_legacy_local_fallback
# @flag --incompatible_validate_top_level_header_inclusions
# @flag --noincompatible_validate_top_level_header_inclusions
# @option --sandbox_add_mount_pair <path>        a single path or a 'source:target' pair may be used multiple times
# @option --sandbox_block_path <string>          may be used multiple times
# @flag --sandbox_default_allow_network
# @flag --nosandbox_default_allow_network
# @flag --sandbox_fake_hostname
# @flag --nosandbox_fake_hostname
# @flag --sandbox_fake_username
# @flag --nosandbox_fake_username
# @option --sandbox_writable_path <string>       may be used multiple times
# @flag --strict_filesets
# @flag --nostrict_filesets
# @option --strict_proto_deps[off|warn|error|strict|default]
# @option --strict_public_imports[off|warn|error|strict|default]
# @flag --strict_system_includes
# @flag --nostrict_system_includes
# @option --target_environment[`_choice_target`] may be used multiple times <label>
# @option --apk_signing_method[v1|v2|v1_v2|v4]
# @flag --device_debug_entitlements
# @flag --nodevice_debug_entitlements
# @option --ios_signing_cert_name <string>
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_legacy_py_provider
# @flag --noincompatible_disallow_legacy_py_provider
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @flag --allow_analysis_failures
# @flag --noallow_analysis_failures
# @option --analysis_testing_deps_limit <integer>
# @flag --break_build_on_parallel_dex2oat_failure
# @flag --nobreak_build_on_parallel_dex2oat_failure
# @flag --check_tests_up_to_date
# @flag --nocheck_tests_up_to_date
# @flag --experimental_android_use_parallel_dex2oat
# @flag --noexperimental_android_use_parallel_dex2oat
# @option --flaky_test_attempts <value>          a positive integer, the string "default", or test_regex@attempts.
# @flag --ios_memleaks
# @flag --noios_memleaks
# @option --ios_simulator_device <string>
# @option --ios_simulator_version <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --local_test_jobs[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --runs_per_test <value>                a positive integer or test_regex@runs.
# @option --test_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --test_keep_going
# @flag --notest_keep_going
# @option --test_strategy <string>
# @option --test_timeout <value>                 a single integer or comma-separated list of 4 integers
# @option --test_tmpdir <path>
# @option --tvos_simulator_device <string>
# @option --tvos_simulator_version <value>       a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_simulator_device <string>
# @option --watchos_simulator_version <value>    a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --zip_undeclared_test_outputs
# @flag --nozip_undeclared_test_outputs
# @option --aspect_deps[off|conservative|precise]
# @flag --consistent_labels
# @flag --noconsistent_labels
# @flag --graph:factored
# @flag --nograph:factored
# @option --graph:node_limit <integer>
# @flag --implicit_deps
# @flag --noimplicit_deps
# @flag --include_aspects
# @flag --noinclude_aspects
# @flag --incompatible_display_source_file_location
# @flag --noincompatible_display_source_file_location
# @flag --incompatible_package_group_includes_double_slash
# @flag --noincompatible_package_group_includes_double_slash
# @flag --infer_universe_scope
# @flag --noinfer_universe_scope
# @flag --line_terminator_null
# @flag --noline_terminator_null
# @flag --nodep_deps
# @flag --nonodep_deps
# @option --output <string>
# @flag --proto:default_values
# @flag --noproto:default_values
# @flag --proto:definition_stack
# @flag --noproto:definition_stack
# @flag --proto:flatten_selects
# @flag --noproto:flatten_selects
# @flag --proto:include_configurations
# @flag --noproto:include_configurations
# @flag --proto:include_synthetic_attribute_hash
# @flag --noproto:include_synthetic_attribute_hash
# @flag --proto:instantiation_stack
# @flag --noproto:instantiation_stack
# @flag --proto:locations
# @flag --noproto:locations
# @option --proto:output_rule_attrs <value>      comma-separated list of options
# @flag --proto:rule_inputs_and_outputs
# @flag --noproto:rule_inputs_and_outputs
# @option --query_file <string>
# @flag --relative_locations
# @flag --norelative_locations
# @option --show_config_fragments[off|direct|transitive]
# @option --starlark:expr <string>
# @option --starlark:file <string>
# @flag --tool_deps
# @flag --notool_deps
# @option --transitions[full|lite|none]
# @option --universe_scope <value>               comma-separated list of options
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --collapse_duplicate_defines
# @flag --nocollapse_duplicate_defines
# @flag --experimental_filter_library_jar_with_program_jar
# @flag --noexperimental_filter_library_jar_with_program_jar
# @flag --experimental_inmemory_dotd_files
# @flag --noexperimental_inmemory_dotd_files
# @flag --experimental_inmemory_jdeps_files
# @flag --noexperimental_inmemory_jdeps_files
# @flag --experimental_objc_include_scanning
# @flag --noexperimental_objc_include_scanning
# @flag --experimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --noexperimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --experimental_retain_test_configuration_across_testonly
# @flag --noexperimental_retain_test_configuration_across_testonly
# @flag --experimental_starlark_cc_import
# @flag --noexperimental_starlark_cc_import
# @flag --experimental_unsupported_and_brittle_include_scanning
# @flag --noexperimental_unsupported_and_brittle_include_scanning
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --incremental_dexing
# @flag --noincremental_dexing
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @flag --objc_use_dotd_pruning
# @flag --noobjc_use_dotd_pruning
# @flag --process_headers_in_dependencies
# @flag --noprocess_headers_in_dependencies
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --trim_test_configuration
# @flag --notrim_test_configuration
# @flag --use_singlejar_apkbuilder
# @flag --nouse_singlejar_apkbuilder
# @flag --announce
# @flag --noannounce
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --debug_spawn_scheduler
# @flag --nodebug_spawn_scheduler
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @flag --experimental_collect_local_sandbox_action_metrics
# @flag --noexperimental_collect_local_sandbox_action_metrics
# @flag --experimental_docker_verbose
# @flag --noexperimental_docker_verbose
# @flag --experimental_materialize_param_files_directly
# @flag --noexperimental_materialize_param_files_directly
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --explain <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @flag --materialize_param_files
# @flag --nomaterialize_param_files
# @option --max_config_changes_to_show <integer>
# @option --max_test_output_bytes <integer>
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --output_filter <value>                a valid Java regular expression
# @flag --print_relative_test_log_paths
# @flag --noprint_relative_test_log_paths
# @option --profile <path>
# @option --progress_report_interval <value>     an integer in 0-3600 range
# @option --remote_print_execution_messages[failure|success|all]
# @flag --sandbox_debug
# @flag --nosandbox_debug
# @option --show_result <integer>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option -s[true|pretty_print|false]
# @option --subcommands[true|pretty_print|false]
# @option --nosubcommands[true|pretty_print|false]
# @option --test_output[summary|errors|all|streamed]
# @option --test_summary[short|terse|detailed|none|testcase]
# @flag --test_verbose_timeout_warnings
# @flag --notest_verbose_timeout_warnings
# @option --tool_tag <string>
# @option --toolchain_resolution_debug <path>    a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @flag --verbose_explanations
# @flag --noverbose_explanations
# @flag --verbose_failures
# @flag --noverbose_failures
# @flag --verbose_test_summary
# @flag --noverbose_test_summary
# @option --aspects_parameters <value>           a 'name=value' assignment may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --flag_alias <value>                   a 'name=value' flag alias may be used multiple times
# @flag --incompatible_default_to_explicit_init_py
# @flag --noincompatible_default_to_explicit_init_py
# @flag --incompatible_py2_outputs_are_suffixed
# @flag --noincompatible_py2_outputs_are_suffixed
# @flag --incompatible_py3_is_default
# @flag --noincompatible_py3_is_default
# @flag --incompatible_use_python_toolchains
# @flag --noincompatible_use_python_toolchains
# @option --python_version[PY2|PY3]
# @option --target_pattern_file <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_cache_eviction_retries <integer>
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @flag --allow_analysis_cache_discard
# @flag --noallow_analysis_cache_discard
# @option --auto_output_filter[none|all|packages|subpackages]
# @flag --build_manual_tests
# @flag --nobuild_manual_tests
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --build_tag_filters <value>            comma-separated list of options
# @flag --build_tests_only
# @flag --nobuild_tests_only
# @option -t[auto|yes|no]                        <value>  a tri-state
# @option --cache_test_results[auto|yes|no]      <value>  a tri-state
# @option --nocache_test_results[auto|yes|no]    <value>  a tri-state
# @option --color[yes|no|auto]
# @option --combined_report[none|lcov]
# @flag --compile_one_dependency
# @flag --nocompile_one_dependency
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --discard_analysis_cache
# @flag --nodiscard_analysis_cache
# @option --disk_cache <path>
# @option --embed_label <value>                  a one-line string
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @option --execution_log_binary_file <path>
# @option --execution_log_json_file <path>
# @flag --execution_log_sort
# @flag --noexecution_log_sort
# @flag --expand_test_suites
# @flag --noexpand_test_suites
# @flag --experimental_cancel_concurrent_tests
# @flag --noexperimental_cancel_concurrent_tests
# @option --experimental_execution_log_file <path>
# @flag --experimental_execution_log_spawn_metrics
# @flag --noexperimental_execution_log_spawn_metrics
# @option --experimental_extra_action_filter <path>  a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @flag --experimental_extra_action_top_level_only
# @flag --noexperimental_extra_action_top_level_only
# @flag --experimental_fetch_all_coverage_outputs
# @flag --noexperimental_fetch_all_coverage_outputs
# @flag --experimental_generate_llvm_lcov
# @flag --noexperimental_generate_llvm_lcov
# @flag --experimental_j2objc_header_map
# @flag --noexperimental_j2objc_header_map
# @flag --experimental_j2objc_shorter_header_path
# @flag --noexperimental_j2objc_shorter_header_path
# @option --experimental_java_classpath[off|javabuilder|bazel]
# @flag --experimental_limit_android_lint_to_android_constrained_java
# @flag --noexperimental_limit_android_lint_to_android_constrained_java
# @flag --experimental_prioritize_local_actions
# @flag --noexperimental_prioritize_local_actions
# @flag --experimental_run_android_lint_on_java_rules
# @flag --noexperimental_run_android_lint_on_java_rules
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_spawn_scheduler
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @flag --explicit_java_test_deps
# @flag --noexplicit_java_test_deps
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @option --host_java_launcher[`_choice_target`] <label>
# @option --host_javacopt <string>               may be used multiple times
# @option --host_jvmopt <string>                 may be used multiple times
# @flag --ignore_unsupported_sandboxing
# @flag --noignore_unsupported_sandboxing
# @flag --incompatible_check_sharding_support
# @flag --noincompatible_check_sharding_support
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_dont_use_javasourceinfoprovider
# @flag --noincompatible_dont_use_javasourceinfoprovider
# @flag --incompatible_exclusive_test_sandboxed
# @flag --noincompatible_exclusive_test_sandboxed
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @flag --incompatible_strict_action_env
# @flag --noincompatible_strict_action_env
# @option --j2objc_translation_flags <value>     comma-separated list of options may be used multiple times
# @flag --java_debug
# @flag --java_deps
# @flag --nojava_deps
# @flag --java_header_compilation
# @flag --nojava_header_compilation
# @option --java_language_version <string>
# @option --java_launcher[`_choice_target`] <label>
# @option --java_runtime_version <string>
# @option --javacopt <string>                    may be used multiple times
# @option --jvmopt <string>                      may be used multiple times
# @option --legacy_main_dex_list_generator[`_choice_target`] <label>
# @option --local_cpu_resources <value>          an integer, or "HOST_CPUS", optionally followed by [-|*]<float>.
# @option --local_extra_resources <value>        a named float, 'name=value' may be used multiple times
# @option --local_ram_resources <value>          an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --local_termination_grace_seconds <integer>
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @option --plugin[`_choice_target`] may be used multiple times <label>
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @option --proguard_top[`_choice_target`] <label>
# @option --proto_compiler[`_choice_target`] <label>
# @option --proto_toolchain_for_cc[`_choice_target`] <label>
# @option --proto_toolchain_for_j2objc[`_choice_target`] <label>
# @option --proto_toolchain_for_java[`_choice_target`] <label>
# @option --proto_toolchain_for_javalite[`_choice_target`] <label>
# @option --protocopt <string>                   may be used multiple times
# @flag --runs_per_test_detects_flakes
# @flag --noruns_per_test_detects_flakes
# @option --shell_executable <path>
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --test_arg <string>                    may be used multiple times
# @option --test_filter <string>
# @option --test_lang_filters <value>            comma-separated list of options
# @option --test_result_expiration <integer>
# @flag --test_runner_fail_fast
# @flag --notest_runner_fail_fast
# @option --test_sharding_strategy[explicit|disabled]
# @option --test_size_filters[small|medium|large|enormous]  comma-separated list of values
# @option --test_tag_filters <value>             comma-separated list of options
# @option --test_timeout_filters[short|moderate|long|eternal]  comma-separated list of values
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --tool_java_language_version <string>
# @option --tool_java_runtime_version <string>
# @option --ui_actions_shown <integer>
# @flag --use_ijars
# @flag --nouse_ijars
# @flag --watchfs
# @flag --nowatchfs
# @option --workspace_status_command <path>
# @arg targets*[`_choice_target`]
cquery() {
    :;
}
# }} bazel cquery

# {{ bazel dump
# @cmd Dumps the internal state of the bazel server process.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @option --experimental_oom_more_eagerly_threshold <integer>
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --action_cache
# @flag --noaction_cache
# @flag --packages
# @flag --nopackages
# @flag --rule_classes
# @flag --norule_classes
# @flag --rules
# @flag --norules
# @option --skyframe[off|summary|count|deps|rdeps]
# @option --skykey_filter <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --skylark_memory <string>
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @option --experimental_repository_hash_file <string>
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --profile <path>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option --tool_tag <string>
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --experimental_downloader_config <string>
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --color[yes|no|auto]
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --ui_actions_shown <integer>
# @flag --watchfs
# @flag --nowatchfs
dump() {
    :;
}
# }} bazel dump

# {{ bazel fetch
# @cmd Fetches external repositories that are prerequisites to the targets.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @option --experimental_oom_more_eagerly_threshold <integer>
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --bep_maximum_open_remote_upload_files <integer>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @option --experimental_repository_hash_file <string>
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --profile <path>
# @option --remote_print_execution_messages[failure|success|all]
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option --tool_tag <string>
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --color[yes|no|auto]
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @option --disk_cache <path>
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --ui_actions_shown <integer>
# @flag --watchfs
# @flag --nowatchfs
# @arg targets*[`_choice_target`]
fetch() {
    :;
}
# }} bazel fetch

# {{ bazel info
# @cmd Displays runtime info about the bazel server.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --check_up_to_date
# @flag --nocheck_up_to_date
# @option --dynamic_local_execution_delay <integer>
# @option --dynamic_local_strategy <value>       a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --dynamic_remote_strategy <value>      a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --experimental_docker_image <string>
# @flag --experimental_docker_use_customized_images
# @flag --noexperimental_docker_use_customized_images
# @flag --experimental_dynamic_exclude_tools
# @flag --noexperimental_dynamic_exclude_tools
# @option --experimental_dynamic_local_load_factor <double>
# @option --experimental_dynamic_slow_remote_time <value>  An immutable length of time.
# @flag --experimental_enable_docker_sandbox
# @flag --noexperimental_enable_docker_sandbox
# @flag --experimental_inprocess_symlink_creation
# @flag --noexperimental_inprocess_symlink_creation
# @option --experimental_oom_more_eagerly_threshold <integer>
# @flag --experimental_persistent_javac
# @flag --experimental_remotable_source_manifests
# @flag --noexperimental_remotable_source_manifests
# @option --experimental_sandbox_async_tree_delete_idle_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --experimental_sandboxfs_path <string>
# @flag --experimental_split_coverage_postprocessing
# @flag --noexperimental_split_coverage_postprocessing
# @flag --experimental_split_xml_generation
# @flag --noexperimental_split_xml_generation
# @flag --experimental_strict_fileset_output
# @flag --noexperimental_strict_fileset_output
# @option --experimental_total_worker_memory_limit_mb <value>  an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --experimental_use_hermetic_linux_sandbox
# @flag --noexperimental_use_hermetic_linux_sandbox
# @option --experimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --experimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --experimental_windows_sandbox_path <string>
# @flag --experimental_worker_as_resource
# @flag --noexperimental_worker_as_resource
# @flag --experimental_worker_cancellation
# @flag --noexperimental_worker_cancellation
# @flag --experimental_worker_multiplex
# @flag --noexperimental_worker_multiplex
# @flag --experimental_worker_multiplex_sandboxing
# @flag --noexperimental_worker_multiplex_sandboxing
# @flag --experimental_worker_strict_flagfiles
# @flag --noexperimental_worker_strict_flagfiles
# @option --genrule_strategy <value>             comma-separated list of options
# @option --high_priority_workers <string>       may be used multiple times
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag --incompatible_sandbox_hermetic_tmp
# @flag --noincompatible_sandbox_hermetic_tmp
# @flag --internal_spawn_scheduler
# @flag --nointernal_spawn_scheduler
# @option -j --jobs[auto|HOST_CPUS|HOST_RAM]     <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --modify_execution_info* <regex=[+-]key,regex=[+-]key,>
# @flag --persistent_android_dex_desugar
# @flag --persistent_android_resource_processor
# @flag --persistent_multiplex_android_dex_desugar
# @flag --persistent_multiplex_android_resource_processor
# @flag --persistent_multiplex_android_tools
# @flag --reuse_sandbox_directories
# @flag --noreuse_sandbox_directories
# @option --sandbox_base <string>
# @flag --sandbox_explicit_pseudoterminal
# @flag --nosandbox_explicit_pseudoterminal
# @option --sandbox_tmpfs_path <path>            an absolute path may be used multiple times
# @option --spawn_strategy <value>               comma-separated list of options
# @option --strategy <value>                     a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --strategy_regexp <value>              a '<RegexFilter>=value[,value]' assignment may be used multiple times
# @option --worker_extra_flag <value>            a 'name=value' assignment may be used multiple times
# @option --worker_max_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --worker_max_multiplex_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag --worker_quit_after_build
# @flag --noworker_quit_after_build
# @flag --worker_sandboxing
# @flag --noworker_sandboxing
# @flag --worker_verbose
# @flag --noworker_verbose
# @option --android_compiler <string>
# @option --android_crosstool_top[`_choice_target`] <label>
# @option --android_grte_top[`_choice_target`] <label>
# @option --android_manifest_merger[legacy|android|force_android]
# @option --android_platforms[`_choice_target`] <label>
# @option --android_sdk[`_choice_target`] <label>
# @option --apple_compiler <string>
# @option --apple_crosstool_top[`_choice_target`] <label>
# @option --apple_grte_top[`_choice_target`] <label>
# @option --cc_output_directory_tag <string>
# @option --compiler <string>
# @option --coverage_output_generator[`_choice_target`] <label>
# @option --coverage_report_generator[`_choice_target`] <label>
# @option --coverage_support[`_choice_target`] <label>
# @option --crosstool_top[`_choice_target`] <label>
# @option --custom_malloc[`_choice_target`] <label>
# @option --experimental_add_exec_constraints_to_targets <value>  a '<RegexFilter>=<label1>[,<label2>,...]' assignment may be used multiple times
# @flag --experimental_enable_objc_cc_deps
# @flag --noexperimental_enable_objc_cc_deps
# @flag --experimental_include_xcode_execution_requirements
# @flag --noexperimental_include_xcode_execution_requirements
# @flag --experimental_prefer_mutual_xcode
# @flag --noexperimental_prefer_mutual_xcode
# @option --extra_execution_platforms <value>    comma-separated list of options may be used multiple times
# @option --extra_toolchains <value>             comma-separated list of options may be used multiple times
# @option --grte_top[`_choice_target`] <label>
# @option --host_compiler <string>
# @option --host_crosstool_top[`_choice_target`] <label>
# @option --host_grte_top[`_choice_target`] <label>
# @option --host_platform[`_choice_target`] <label>
# @flag --incompatible_disable_expand_if_all_available_in_flag_set
# @flag --noincompatible_disable_expand_if_all_available_in_flag_set
# @flag --incompatible_disable_runtimes_filegroups
# @flag --noincompatible_disable_runtimes_filegroups
# @flag --incompatible_dont_emit_static_libgcc
# @flag --noincompatible_dont_emit_static_libgcc
# @flag --incompatible_dont_enable_host_nonhost_crosstool_features
# @flag --noincompatible_dont_enable_host_nonhost_crosstool_features
# @flag --incompatible_enable_android_toolchain_resolution
# @flag --noincompatible_enable_android_toolchain_resolution
# @flag --incompatible_enable_apple_toolchain_resolution
# @flag --noincompatible_enable_apple_toolchain_resolution
# @flag --incompatible_linkopts_in_user_link_flags
# @flag --noincompatible_linkopts_in_user_link_flags
# @flag --incompatible_make_thinlto_command_lines_standalone
# @flag --noincompatible_make_thinlto_command_lines_standalone
# @flag --incompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --noincompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --incompatible_remove_legacy_whole_archive
# @flag --noincompatible_remove_legacy_whole_archive
# @flag --incompatible_require_ctx_in_configure_features
# @flag --noincompatible_require_ctx_in_configure_features
# @flag --interface_shared_objects
# @flag --nointerface_shared_objects
# @option --ios_sdk_version <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --macos_sdk_version <value>            a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --minimum_os_version <string>
# @option --platform_mappings <path>             a relative path
# @option --platforms[`_choice_target`] <label>
# @option --python2_path <string>
# @option --python3_path <string>
# @option --python_path <string>
# @option --python_top[`_choice_target`] <label>
# @option --target_platform_fallback[`_choice_target`] <label>
# @option --tvos_sdk_version <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_sdk_version <value>          a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xcode_version <string>
# @option --xcode_version_config[`_choice_target`] <label>
# @flag --apple_enable_auto_dsym_dbg
# @flag --noapple_enable_auto_dsym_dbg
# @flag --apple_generate_dsym
# @flag --noapple_generate_dsym
# @flag --build
# @flag --nobuild
# @flag --build_runfile_links
# @flag --nobuild_runfile_links
# @flag --build_runfile_manifests
# @flag --nobuild_runfile_manifests
# @flag --build_test_dwp
# @flag --nobuild_test_dwp
# @option --cc_proto_library_header_suffixes <value>  comma-separated list of options
# @option --cc_proto_library_source_suffixes <value>  comma-separated list of options
# @flag --experimental_proto_descriptor_sets_include_source_info
# @flag --noexperimental_proto_descriptor_sets_include_source_info
# @flag --experimental_proto_extra_actions
# @flag --noexperimental_proto_extra_actions
# @flag --experimental_run_validations
# @flag --noexperimental_run_validations
# @flag --experimental_save_feature_state
# @flag --noexperimental_save_feature_state
# @flag --experimental_use_validation_aspect
# @flag --noexperimental_use_validation_aspect
# @option --fission <value>                      a set of compilation modes
# @flag --incompatible_always_include_files_in_data
# @flag --noincompatible_always_include_files_in_data
# @flag --legacy_external_runfiles
# @flag --nolegacy_external_runfiles
# @flag --objc_generate_linkmap
# @flag --noobjc_generate_linkmap
# @option --output_groups <value>                comma-separated list of options may be used multiple times
# @flag --run_validations
# @flag --norun_validations
# @flag --save_temps
# @flag --nosave_temps
# @option --action_env <value>                   a 'name=value' assignment with an optional value part may be used multiple times
# @option --android_cpu <string>
# @flag --android_databinding_use_androidx
# @flag --noandroid_databinding_use_androidx
# @flag --android_databinding_use_v3_4_args
# @flag --noandroid_databinding_use_v3_4_args
# @option --android_dynamic_mode[off|default|fully]
# @option --android_manifest_merger_order[alphabetical|alphabetical_by_configuration|dependency]
# @flag --android_resource_shrinking
# @flag --noandroid_resource_shrinking
# @option --apple_bitcode <value>                'mode' or 'platform=mode', where 'mode' is none, embedded_markers or embedded, and 'platform' is ios, visionos, watchos, tvos, macos or catalyst may be used multiple times
# @option --aspects <value>                      comma-separated list of options may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @option --build_python_zip[auto|yes|no] <value>  a tri-state
# @option --nobuild_python_zip[auto|yes|no] <value>  a tri-state
# @option --catalyst_cpus <value>                comma-separated list of options may be used multiple times
# @flag --collect_code_coverage
# @flag --nocollect_code_coverage
# @option -c --compilation_mode[fastbuild|dbg|opt]
# @option --conlyopt <string>                    may be used multiple times
# @option --copt <string>                        may be used multiple times
# @option --cpu <string>
# @option --cs_fdo_absolute_path <string>
# @option --cs_fdo_instrument <string>
# @option --cs_fdo_profile[`_choice_target`] <label>
# @option --cxxopt <string>                      may be used multiple times
# @option --define <value>                       a 'name=value' assignment may be used multiple times
# @option --dynamic_mode[off|default|fully]
# @flag --enable_fdo_profile_absolute_path
# @flag --noenable_fdo_profile_absolute_path
# @option --enable_runfiles[auto|yes|no] <value>  a tri-state
# @option --noenable_runfiles[auto|yes|no] <value>  a tri-state
# @option --experimental_action_listener[`_choice_target`] may be used multiple times <label>
# @flag --experimental_android_compress_java_resources
# @flag --noexperimental_android_compress_java_resources
# @flag --experimental_android_databinding_v2
# @flag --noexperimental_android_databinding_v2
# @flag --experimental_android_resource_shrinking
# @flag --noexperimental_android_resource_shrinking
# @flag --experimental_android_rewrite_dexes_with_rex
# @flag --noexperimental_android_rewrite_dexes_with_rex
# @flag --experimental_collect_code_coverage_for_generated_files
# @flag --noexperimental_collect_code_coverage_for_generated_files
# @option --experimental_convenience_symlinks[normal|clean|ignore|log_only]
# @option --noexperimental_convenience_symlinks[normal|clean|ignore|log_only]
# @flag --experimental_convenience_symlinks_bep_event
# @flag --noexperimental_convenience_symlinks_bep_event
# @option --experimental_multi_cpu <value>       comma-separated list of options may be used multiple times
# @option --experimental_objc_fastbuild_options <value>  comma-separated list of options
# @flag --experimental_omitfp
# @flag --noexperimental_omitfp
# @flag --experimental_platform_in_output_dir
# @flag --noexperimental_platform_in_output_dir
# @flag --experimental_use_llvm_covmap
# @flag --noexperimental_use_llvm_covmap
# @option --fat_apk_cpu <value>                  comma-separated list of options
# @flag --fat_apk_hwasan
# @flag --nofat_apk_hwasan
# @option --fdo_instrument <string>
# @option --fdo_optimize <string>
# @option --fdo_prefetch_hints[`_choice_target`] <label>
# @option --fdo_profile[`_choice_target`] <label>
# @option --features <string>                    may be used multiple times
# @flag --force_pic
# @flag --noforce_pic
# @option --host_action_env <value>              a 'name=value' assignment with an optional value part may be used multiple times
# @option --host_compilation_mode[fastbuild|dbg|opt]
# @option --host_conlyopt <string>               may be used multiple times
# @option --host_copt <string>                   may be used multiple times
# @option --host_cpu <string>
# @option --host_cxxopt <string>                 may be used multiple times
# @option --host_features <string>               may be used multiple times
# @option --host_force_python[PY2|PY3]
# @option --host_linkopt <string>                may be used multiple times
# @option --host_macos_minimum_os <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --host_per_file_copt <path>            a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --host_swiftcopt <string>              may be used multiple times
# @flag --incompatible_avoid_conflict_dlls
# @flag --noincompatible_avoid_conflict_dlls
# @flag --incompatible_merge_genfiles_directory
# @flag --noincompatible_merge_genfiles_directory
# @flag --incompatible_use_host_features
# @flag --noincompatible_use_host_features
# @flag --incompatible_use_platforms_repo_for_constraints
# @flag --noincompatible_use_platforms_repo_for_constraints
# @flag --instrument_test_targets
# @flag --noinstrument_test_targets
# @option --instrumentation_filter <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ios_minimum_os <value>               a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --ios_multi_cpus <value>               comma-separated list of options may be used multiple times
# @flag --legacy_whole_archive
# @flag --nolegacy_whole_archive
# @option --linkopt <string>                     may be used multiple times
# @option --ltobackendopt <string>               may be used multiple times
# @option --ltoindexopt <string>                 may be used multiple times
# @option --macos_cpus <value>                   comma-separated list of options may be used multiple times
# @option --macos_minimum_os <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --objc_debug_with_GLIBCXX
# @flag --noobjc_debug_with_GLIBCXX
# @flag --objc_enable_binary_stripping
# @flag --noobjc_enable_binary_stripping
# @option --objccopt <string>                    may be used multiple times
# @option --per_file_copt <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --per_file_ltobackendopt <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --platform_suffix <string>
# @option --propeller_optimize[`_choice_target`] <label>
# @option --propeller_optimize_absolute_cc_profile <string>
# @option --propeller_optimize_absolute_ld_profile <string>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @option --run_under <value>                    a prefix in front of command
# @flag --share_native_deps
# @flag --noshare_native_deps
# @flag --stamp
# @flag --nostamp
# @option --strip[always|sometimes|never]
# @option --stripopt <string>                    may be used multiple times
# @option --swiftcopt <string>                   may be used multiple times
# @option --symlink_prefix <string>
# @option --tvos_cpus <value>                    comma-separated list of options may be used multiple times
# @option --tvos_minimum_os <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --visionos_cpus <value>                comma-separated list of options may be used multiple times
# @option --watchos_cpus <value>                 comma-separated list of options may be used multiple times
# @option --watchos_minimum_os <value>           a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xbinary_fdo[`_choice_target`] <label>
# @option --auto_cpu_environment_group[`_choice_target`] <label>
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @flag --check_licenses
# @flag --nocheck_licenses
# @flag --check_visibility
# @flag --nocheck_visibility
# @flag --desugar_for_android
# @flag --nodesugar_for_android
# @flag --desugar_java8_libs
# @flag --nodesugar_java8_libs
# @flag --enforce_constraints
# @flag --noenforce_constraints
# @flag --experimental_allow_android_library_deps_without_srcs
# @flag --noexperimental_allow_android_library_deps_without_srcs
# @flag --experimental_check_desugar_deps
# @flag --noexperimental_check_desugar_deps
# @flag --experimental_docker_privileged
# @flag --noexperimental_docker_privileged
# @option --experimental_import_deps_checking[off|warning|error]
# @option --experimental_repository_hash_file <string>
# @flag --experimental_sandboxfs_map_symlink_targets
# @flag --noexperimental_sandboxfs_map_symlink_targets
# @option --experimental_strict_java_deps[off|warn|error|strict|default]
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --incompatible_check_testonly_for_output_files
# @flag --noincompatible_check_testonly_for_output_files
# @flag --incompatible_disable_native_android_rules
# @flag --noincompatible_disable_native_android_rules
# @flag --incompatible_disable_native_apple_binary_rule
# @flag --noincompatible_disable_native_apple_binary_rule
# @flag --incompatible_force_strict_header_check_from_starlark
# @flag --noincompatible_force_strict_header_check_from_starlark
# @flag --incompatible_legacy_local_fallback
# @flag --noincompatible_legacy_local_fallback
# @flag --incompatible_validate_top_level_header_inclusions
# @flag --noincompatible_validate_top_level_header_inclusions
# @option --sandbox_add_mount_pair <path>        a single path or a 'source:target' pair may be used multiple times
# @option --sandbox_block_path <string>          may be used multiple times
# @flag --sandbox_default_allow_network
# @flag --nosandbox_default_allow_network
# @flag --sandbox_fake_hostname
# @flag --nosandbox_fake_hostname
# @flag --sandbox_fake_username
# @flag --nosandbox_fake_username
# @option --sandbox_writable_path <string>       may be used multiple times
# @flag --strict_filesets
# @flag --nostrict_filesets
# @option --strict_proto_deps[off|warn|error|strict|default]
# @option --strict_public_imports[off|warn|error|strict|default]
# @flag --strict_system_includes
# @flag --nostrict_system_includes
# @option --target_environment[`_choice_target`] may be used multiple times <label>
# @option --apk_signing_method[v1|v2|v1_v2|v4]
# @flag --device_debug_entitlements
# @flag --nodevice_debug_entitlements
# @option --ios_signing_cert_name <string>
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_legacy_py_provider
# @flag --noincompatible_disallow_legacy_py_provider
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @flag --allow_analysis_failures
# @flag --noallow_analysis_failures
# @option --analysis_testing_deps_limit <integer>
# @flag --break_build_on_parallel_dex2oat_failure
# @flag --nobreak_build_on_parallel_dex2oat_failure
# @flag --check_tests_up_to_date
# @flag --nocheck_tests_up_to_date
# @flag --experimental_android_use_parallel_dex2oat
# @flag --noexperimental_android_use_parallel_dex2oat
# @option --flaky_test_attempts <value>          a positive integer, the string "default", or test_regex@attempts.
# @flag --ios_memleaks
# @flag --noios_memleaks
# @option --ios_simulator_device <string>
# @option --ios_simulator_version <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --local_test_jobs[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --runs_per_test <value>                a positive integer or test_regex@runs.
# @option --test_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --test_keep_going
# @flag --notest_keep_going
# @option --test_strategy <string>
# @option --test_timeout <value>                 a single integer or comma-separated list of 4 integers
# @option --test_tmpdir <path>
# @option --tvos_simulator_device <string>
# @option --tvos_simulator_version <value>       a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_simulator_device <string>
# @option --watchos_simulator_version <value>    a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --zip_undeclared_test_outputs
# @flag --nozip_undeclared_test_outputs
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --collapse_duplicate_defines
# @flag --nocollapse_duplicate_defines
# @flag --experimental_filter_library_jar_with_program_jar
# @flag --noexperimental_filter_library_jar_with_program_jar
# @flag --experimental_inmemory_dotd_files
# @flag --noexperimental_inmemory_dotd_files
# @flag --experimental_inmemory_jdeps_files
# @flag --noexperimental_inmemory_jdeps_files
# @flag --experimental_objc_include_scanning
# @flag --noexperimental_objc_include_scanning
# @flag --experimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --noexperimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --experimental_retain_test_configuration_across_testonly
# @flag --noexperimental_retain_test_configuration_across_testonly
# @flag --experimental_starlark_cc_import
# @flag --noexperimental_starlark_cc_import
# @flag --experimental_unsupported_and_brittle_include_scanning
# @flag --noexperimental_unsupported_and_brittle_include_scanning
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --incremental_dexing
# @flag --noincremental_dexing
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @flag --objc_use_dotd_pruning
# @flag --noobjc_use_dotd_pruning
# @flag --process_headers_in_dependencies
# @flag --noprocess_headers_in_dependencies
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --trim_test_configuration
# @flag --notrim_test_configuration
# @flag --use_singlejar_apkbuilder
# @flag --nouse_singlejar_apkbuilder
# @flag --announce
# @flag --noannounce
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --debug_spawn_scheduler
# @flag --nodebug_spawn_scheduler
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @flag --experimental_collect_local_sandbox_action_metrics
# @flag --noexperimental_collect_local_sandbox_action_metrics
# @flag --experimental_docker_verbose
# @flag --noexperimental_docker_verbose
# @flag --experimental_materialize_param_files_directly
# @flag --noexperimental_materialize_param_files_directly
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --explain <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @flag --materialize_param_files
# @flag --nomaterialize_param_files
# @option --max_config_changes_to_show <integer>
# @option --max_test_output_bytes <integer>
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --output_filter <value>                a valid Java regular expression
# @option --profile <path>
# @option --progress_report_interval <value>     an integer in 0-3600 range
# @option --remote_print_execution_messages[failure|success|all]
# @flag --sandbox_debug
# @flag --nosandbox_debug
# @flag --show_make_env
# @flag --noshow_make_env
# @option --show_result <integer>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option -s[true|pretty_print|false]
# @option --subcommands[true|pretty_print|false]
# @option --nosubcommands[true|pretty_print|false]
# @option --test_output[summary|errors|all|streamed]
# @option --test_summary[short|terse|detailed|none|testcase]
# @option --tool_tag <string>
# @option --toolchain_resolution_debug <path>    a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @flag --verbose_explanations
# @flag --noverbose_explanations
# @flag --verbose_failures
# @flag --noverbose_failures
# @option --aspects_parameters <value>           a 'name=value' assignment may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --flag_alias <value>                   a 'name=value' flag alias may be used multiple times
# @flag --incompatible_default_to_explicit_init_py
# @flag --noincompatible_default_to_explicit_init_py
# @flag --incompatible_py2_outputs_are_suffixed
# @flag --noincompatible_py2_outputs_are_suffixed
# @flag --incompatible_py3_is_default
# @flag --noincompatible_py3_is_default
# @flag --incompatible_use_python_toolchains
# @flag --noincompatible_use_python_toolchains
# @option --python_version[PY2|PY3]
# @option --target_pattern_file <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_cache_eviction_retries <integer>
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @flag --allow_analysis_cache_discard
# @flag --noallow_analysis_cache_discard
# @option --auto_output_filter[none|all|packages|subpackages]
# @flag --build_manual_tests
# @flag --nobuild_manual_tests
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --build_tag_filters <value>            comma-separated list of options
# @flag --build_tests_only
# @flag --nobuild_tests_only
# @option -t[auto|yes|no]                        <value>  a tri-state
# @option --cache_test_results[auto|yes|no]      <value>  a tri-state
# @option --nocache_test_results[auto|yes|no]    <value>  a tri-state
# @option --color[yes|no|auto]
# @option --combined_report[none|lcov]
# @flag --compile_one_dependency
# @flag --nocompile_one_dependency
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --discard_analysis_cache
# @flag --nodiscard_analysis_cache
# @option --disk_cache <path>
# @option --embed_label <value>                  a one-line string
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @option --execution_log_binary_file <path>
# @option --execution_log_json_file <path>
# @flag --execution_log_sort
# @flag --noexecution_log_sort
# @flag --expand_test_suites
# @flag --noexpand_test_suites
# @flag --experimental_cancel_concurrent_tests
# @flag --noexperimental_cancel_concurrent_tests
# @option --experimental_execution_log_file <path>
# @flag --experimental_execution_log_spawn_metrics
# @flag --noexperimental_execution_log_spawn_metrics
# @option --experimental_extra_action_filter <path>  a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @flag --experimental_extra_action_top_level_only
# @flag --noexperimental_extra_action_top_level_only
# @flag --experimental_fetch_all_coverage_outputs
# @flag --noexperimental_fetch_all_coverage_outputs
# @flag --experimental_generate_llvm_lcov
# @flag --noexperimental_generate_llvm_lcov
# @flag --experimental_j2objc_header_map
# @flag --noexperimental_j2objc_header_map
# @flag --experimental_j2objc_shorter_header_path
# @flag --noexperimental_j2objc_shorter_header_path
# @option --experimental_java_classpath[off|javabuilder|bazel]
# @flag --experimental_limit_android_lint_to_android_constrained_java
# @flag --noexperimental_limit_android_lint_to_android_constrained_java
# @flag --experimental_prioritize_local_actions
# @flag --noexperimental_prioritize_local_actions
# @flag --experimental_run_android_lint_on_java_rules
# @flag --noexperimental_run_android_lint_on_java_rules
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_spawn_scheduler
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @flag --explicit_java_test_deps
# @flag --noexplicit_java_test_deps
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @option --host_java_launcher[`_choice_target`] <label>
# @option --host_javacopt <string>               may be used multiple times
# @option --host_jvmopt <string>                 may be used multiple times
# @flag --ignore_unsupported_sandboxing
# @flag --noignore_unsupported_sandboxing
# @flag --incompatible_check_sharding_support
# @flag --noincompatible_check_sharding_support
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_dont_use_javasourceinfoprovider
# @flag --noincompatible_dont_use_javasourceinfoprovider
# @flag --incompatible_exclusive_test_sandboxed
# @flag --noincompatible_exclusive_test_sandboxed
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @flag --incompatible_strict_action_env
# @flag --noincompatible_strict_action_env
# @option --j2objc_translation_flags <value>     comma-separated list of options may be used multiple times
# @flag --java_debug
# @flag --java_deps
# @flag --nojava_deps
# @flag --java_header_compilation
# @flag --nojava_header_compilation
# @option --java_language_version <string>
# @option --java_launcher[`_choice_target`] <label>
# @option --java_runtime_version <string>
# @option --javacopt <string>                    may be used multiple times
# @option --jvmopt <string>                      may be used multiple times
# @option --legacy_main_dex_list_generator[`_choice_target`] <label>
# @option --local_cpu_resources <value>          an integer, or "HOST_CPUS", optionally followed by [-|*]<float>.
# @option --local_extra_resources <value>        a named float, 'name=value' may be used multiple times
# @option --local_ram_resources <value>          an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --local_termination_grace_seconds <integer>
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @option --plugin[`_choice_target`] may be used multiple times <label>
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @option --proguard_top[`_choice_target`] <label>
# @option --proto_compiler[`_choice_target`] <label>
# @option --proto_toolchain_for_cc[`_choice_target`] <label>
# @option --proto_toolchain_for_j2objc[`_choice_target`] <label>
# @option --proto_toolchain_for_java[`_choice_target`] <label>
# @option --proto_toolchain_for_javalite[`_choice_target`] <label>
# @option --protocopt <string>                   may be used multiple times
# @flag --runs_per_test_detects_flakes
# @flag --noruns_per_test_detects_flakes
# @option --shell_executable <path>
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --test_arg <string>                    may be used multiple times
# @option --test_filter <string>
# @option --test_lang_filters <value>            comma-separated list of options
# @option --test_result_expiration <integer>
# @flag --test_runner_fail_fast
# @flag --notest_runner_fail_fast
# @option --test_sharding_strategy[explicit|disabled]
# @option --test_size_filters[small|medium|large|enormous]  comma-separated list of values
# @option --test_tag_filters <value>             comma-separated list of options
# @option --test_timeout_filters[short|moderate|long|eternal]  comma-separated list of values
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --tool_java_language_version <string>
# @option --tool_java_runtime_version <string>
# @option --ui_actions_shown <integer>
# @flag --use_ijars
# @flag --nouse_ijars
# @flag --watchfs
# @flag --nowatchfs
# @option --workspace_status_command <path>
# @arg keys*[`_choice_info_key`]
info() {
    :;
}
# }} bazel info

# {{ bazel license
# @cmd Prints the license of this software.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @option --experimental_oom_more_eagerly_threshold <integer>
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @option --experimental_repository_hash_file <string>
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --profile <path>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option --tool_tag <string>
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --experimental_downloader_config <string>
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --color[yes|no|auto]
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --ui_actions_shown <integer>
# @flag --watchfs
# @flag --nowatchfs
license() {
    :;
}
# }} bazel license

# {{ bazel mobile-install
# @cmd Installs targets to mobile devices.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --check_up_to_date
# @flag --nocheck_up_to_date
# @option --dynamic_local_execution_delay <integer>
# @option --dynamic_local_strategy <value>       a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --dynamic_remote_strategy <value>      a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --experimental_docker_image <string>
# @flag --experimental_docker_use_customized_images
# @flag --noexperimental_docker_use_customized_images
# @flag --experimental_dynamic_exclude_tools
# @flag --noexperimental_dynamic_exclude_tools
# @option --experimental_dynamic_local_load_factor <double>
# @option --experimental_dynamic_slow_remote_time <value>  An immutable length of time.
# @flag --experimental_enable_docker_sandbox
# @flag --noexperimental_enable_docker_sandbox
# @flag --experimental_inprocess_symlink_creation
# @flag --noexperimental_inprocess_symlink_creation
# @option --experimental_oom_more_eagerly_threshold <integer>
# @flag --experimental_persistent_javac
# @flag --experimental_remotable_source_manifests
# @flag --noexperimental_remotable_source_manifests
# @option --experimental_sandbox_async_tree_delete_idle_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --experimental_sandboxfs_path <string>
# @flag --experimental_split_coverage_postprocessing
# @flag --noexperimental_split_coverage_postprocessing
# @flag --experimental_split_xml_generation
# @flag --noexperimental_split_xml_generation
# @flag --experimental_strict_fileset_output
# @flag --noexperimental_strict_fileset_output
# @option --experimental_total_worker_memory_limit_mb <value>  an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --experimental_use_hermetic_linux_sandbox
# @flag --noexperimental_use_hermetic_linux_sandbox
# @option --experimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --experimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --experimental_windows_sandbox_path <string>
# @flag --experimental_worker_as_resource
# @flag --noexperimental_worker_as_resource
# @flag --experimental_worker_cancellation
# @flag --noexperimental_worker_cancellation
# @flag --experimental_worker_multiplex
# @flag --noexperimental_worker_multiplex
# @flag --experimental_worker_multiplex_sandboxing
# @flag --noexperimental_worker_multiplex_sandboxing
# @flag --experimental_worker_strict_flagfiles
# @flag --noexperimental_worker_strict_flagfiles
# @option --genrule_strategy <value>             comma-separated list of options
# @option --high_priority_workers <string>       may be used multiple times
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag --incompatible_sandbox_hermetic_tmp
# @flag --noincompatible_sandbox_hermetic_tmp
# @flag --internal_spawn_scheduler
# @flag --nointernal_spawn_scheduler
# @option -j --jobs[auto|HOST_CPUS|HOST_RAM]     <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --mode[classic|classic_internal_test_do_not_use|skylark]
# @option --modify_execution_info* <regex=[+-]key,regex=[+-]key,>
# @flag --persistent_android_dex_desugar
# @flag --persistent_android_resource_processor
# @flag --persistent_multiplex_android_dex_desugar
# @flag --persistent_multiplex_android_resource_processor
# @flag --persistent_multiplex_android_tools
# @flag --reuse_sandbox_directories
# @flag --noreuse_sandbox_directories
# @option --sandbox_base <string>
# @flag --sandbox_explicit_pseudoterminal
# @flag --nosandbox_explicit_pseudoterminal
# @option --sandbox_tmpfs_path <path>            an absolute path may be used multiple times
# @option --spawn_strategy <value>               comma-separated list of options
# @option --strategy <value>                     a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --strategy_regexp <value>              a '<RegexFilter>=value[,value]' assignment may be used multiple times
# @option --worker_extra_flag <value>            a 'name=value' assignment may be used multiple times
# @option --worker_max_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --worker_max_multiplex_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag --worker_quit_after_build
# @flag --noworker_quit_after_build
# @flag --worker_sandboxing
# @flag --noworker_sandboxing
# @flag --worker_verbose
# @flag --noworker_verbose
# @option --adb <string>
# @option --android_compiler <string>
# @option --android_crosstool_top[`_choice_target`] <label>
# @option --android_grte_top[`_choice_target`] <label>
# @option --android_manifest_merger[legacy|android|force_android]
# @option --android_platforms[`_choice_target`] <label>
# @option --android_sdk[`_choice_target`] <label>
# @option --apple_compiler <string>
# @option --apple_crosstool_top[`_choice_target`] <label>
# @option --apple_grte_top[`_choice_target`] <label>
# @option --cc_output_directory_tag <string>
# @option --compiler <string>
# @option --coverage_output_generator[`_choice_target`] <label>
# @option --coverage_report_generator[`_choice_target`] <label>
# @option --coverage_support[`_choice_target`] <label>
# @option --crosstool_top[`_choice_target`] <label>
# @option --custom_malloc[`_choice_target`] <label>
# @option --experimental_add_exec_constraints_to_targets <value>  a '<RegexFilter>=<label1>[,<label2>,...]' assignment may be used multiple times
# @flag --experimental_enable_objc_cc_deps
# @flag --noexperimental_enable_objc_cc_deps
# @flag --experimental_include_xcode_execution_requirements
# @flag --noexperimental_include_xcode_execution_requirements
# @flag --experimental_prefer_mutual_xcode
# @flag --noexperimental_prefer_mutual_xcode
# @option --extra_execution_platforms <value>    comma-separated list of options may be used multiple times
# @option --extra_toolchains <value>             comma-separated list of options may be used multiple times
# @option --grte_top[`_choice_target`] <label>
# @option --host_compiler <string>
# @option --host_crosstool_top[`_choice_target`] <label>
# @option --host_grte_top[`_choice_target`] <label>
# @option --host_platform[`_choice_target`] <label>
# @flag --incompatible_disable_expand_if_all_available_in_flag_set
# @flag --noincompatible_disable_expand_if_all_available_in_flag_set
# @flag --incompatible_disable_runtimes_filegroups
# @flag --noincompatible_disable_runtimes_filegroups
# @flag --incompatible_dont_emit_static_libgcc
# @flag --noincompatible_dont_emit_static_libgcc
# @flag --incompatible_dont_enable_host_nonhost_crosstool_features
# @flag --noincompatible_dont_enable_host_nonhost_crosstool_features
# @flag --incompatible_enable_android_toolchain_resolution
# @flag --noincompatible_enable_android_toolchain_resolution
# @flag --incompatible_enable_apple_toolchain_resolution
# @flag --noincompatible_enable_apple_toolchain_resolution
# @flag --incompatible_linkopts_in_user_link_flags
# @flag --noincompatible_linkopts_in_user_link_flags
# @flag --incompatible_make_thinlto_command_lines_standalone
# @flag --noincompatible_make_thinlto_command_lines_standalone
# @flag --incompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --noincompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --incompatible_remove_legacy_whole_archive
# @flag --noincompatible_remove_legacy_whole_archive
# @flag --incompatible_require_ctx_in_configure_features
# @flag --noincompatible_require_ctx_in_configure_features
# @flag --interface_shared_objects
# @flag --nointerface_shared_objects
# @option --ios_sdk_version <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --macos_sdk_version <value>            a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --minimum_os_version <string>
# @option --platform_mappings <path>             a relative path
# @option --platforms[`_choice_target`] <label>
# @option --python2_path <string>
# @option --python3_path <string>
# @option --python_path <string>
# @option --python_top[`_choice_target`] <label>
# @option --target_platform_fallback[`_choice_target`] <label>
# @option --tvos_sdk_version <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_sdk_version <value>          a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xcode_version <string>
# @option --xcode_version_config[`_choice_target`] <label>
# @flag --apple_enable_auto_dsym_dbg
# @flag --noapple_enable_auto_dsym_dbg
# @flag --apple_generate_dsym
# @flag --noapple_generate_dsym
# @flag --build
# @flag --nobuild
# @flag --build_runfile_links
# @flag --nobuild_runfile_links
# @flag --build_runfile_manifests
# @flag --nobuild_runfile_manifests
# @flag --build_test_dwp
# @flag --nobuild_test_dwp
# @option --cc_proto_library_header_suffixes <value>  comma-separated list of options
# @option --cc_proto_library_source_suffixes <value>  comma-separated list of options
# @flag --experimental_proto_descriptor_sets_include_source_info
# @flag --noexperimental_proto_descriptor_sets_include_source_info
# @flag --experimental_proto_extra_actions
# @flag --noexperimental_proto_extra_actions
# @flag --experimental_run_validations
# @flag --noexperimental_run_validations
# @flag --experimental_save_feature_state
# @flag --noexperimental_save_feature_state
# @flag --experimental_use_validation_aspect
# @flag --noexperimental_use_validation_aspect
# @option --fission <value>                      a set of compilation modes
# @flag --incompatible_always_include_files_in_data
# @flag --noincompatible_always_include_files_in_data
# @flag --incremental
# @flag --noincremental
# @flag --legacy_external_runfiles
# @flag --nolegacy_external_runfiles
# @flag --objc_generate_linkmap
# @flag --noobjc_generate_linkmap
# @option --output_groups <value>                comma-separated list of options may be used multiple times
# @flag --run_validations
# @flag --norun_validations
# @flag --save_temps
# @flag --nosave_temps
# @flag --split_apks
# @flag --nosplit_apks
# @option --action_env <value>                   a 'name=value' assignment with an optional value part may be used multiple times
# @option --adb_arg <string>                     may be used multiple times
# @option --android_cpu <string>
# @flag --android_databinding_use_androidx
# @flag --noandroid_databinding_use_androidx
# @flag --android_databinding_use_v3_4_args
# @flag --noandroid_databinding_use_v3_4_args
# @option --android_dynamic_mode[off|default|fully]
# @option --android_manifest_merger_order[alphabetical|alphabetical_by_configuration|dependency]
# @flag --android_resource_shrinking
# @flag --noandroid_resource_shrinking
# @option --apple_bitcode <value>                'mode' or 'platform=mode', where 'mode' is none, embedded_markers or embedded, and 'platform' is ios, visionos, watchos, tvos, macos or catalyst may be used multiple times
# @option --aspects <value>                      comma-separated list of options may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @option --build_python_zip[auto|yes|no] <value>  a tri-state
# @option --nobuild_python_zip[auto|yes|no] <value>  a tri-state
# @option --catalyst_cpus <value>                comma-separated list of options may be used multiple times
# @flag --collect_code_coverage
# @flag --nocollect_code_coverage
# @option -c --compilation_mode[fastbuild|dbg|opt]
# @option --conlyopt <string>                    may be used multiple times
# @option --copt <string>                        may be used multiple times
# @option --cpu <string>
# @option --cs_fdo_absolute_path <string>
# @option --cs_fdo_instrument <string>
# @option --cs_fdo_profile[`_choice_target`] <label>
# @option --cxxopt <string>                      may be used multiple times
# @flag --debug_app
# @option --define <value>                       a 'name=value' assignment may be used multiple times
# @option --device <string>
# @option --dynamic_mode[off|default|fully]
# @flag --enable_fdo_profile_absolute_path
# @flag --noenable_fdo_profile_absolute_path
# @option --enable_runfiles[auto|yes|no] <value>  a tri-state
# @option --noenable_runfiles[auto|yes|no] <value>  a tri-state
# @option --experimental_action_listener[`_choice_target`] may be used multiple times <label>
# @flag --experimental_android_compress_java_resources
# @flag --noexperimental_android_compress_java_resources
# @flag --experimental_android_databinding_v2
# @flag --noexperimental_android_databinding_v2
# @flag --experimental_android_resource_shrinking
# @flag --noexperimental_android_resource_shrinking
# @flag --experimental_android_rewrite_dexes_with_rex
# @flag --noexperimental_android_rewrite_dexes_with_rex
# @flag --experimental_collect_code_coverage_for_generated_files
# @flag --noexperimental_collect_code_coverage_for_generated_files
# @option --experimental_convenience_symlinks[normal|clean|ignore|log_only]
# @option --noexperimental_convenience_symlinks[normal|clean|ignore|log_only]
# @flag --experimental_convenience_symlinks_bep_event
# @flag --noexperimental_convenience_symlinks_bep_event
# @option --experimental_multi_cpu <value>       comma-separated list of options may be used multiple times
# @option --experimental_objc_fastbuild_options <value>  comma-separated list of options
# @flag --experimental_omitfp
# @flag --noexperimental_omitfp
# @flag --experimental_platform_in_output_dir
# @flag --noexperimental_platform_in_output_dir
# @flag --experimental_use_llvm_covmap
# @flag --noexperimental_use_llvm_covmap
# @option --fat_apk_cpu <value>                  comma-separated list of options
# @flag --fat_apk_hwasan
# @flag --nofat_apk_hwasan
# @option --fdo_instrument <string>
# @option --fdo_optimize <string>
# @option --fdo_prefetch_hints[`_choice_target`] <label>
# @option --fdo_profile[`_choice_target`] <label>
# @option --features <string>                    may be used multiple times
# @flag --force_pic
# @flag --noforce_pic
# @option --host_action_env <value>              a 'name=value' assignment with an optional value part may be used multiple times
# @option --host_compilation_mode[fastbuild|dbg|opt]
# @option --host_conlyopt <string>               may be used multiple times
# @option --host_copt <string>                   may be used multiple times
# @option --host_cpu <string>
# @option --host_cxxopt <string>                 may be used multiple times
# @option --host_features <string>               may be used multiple times
# @option --host_force_python[PY2|PY3]
# @option --host_linkopt <string>                may be used multiple times
# @option --host_macos_minimum_os <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --host_per_file_copt <path>            a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --host_swiftcopt <string>              may be used multiple times
# @flag --incompatible_avoid_conflict_dlls
# @flag --noincompatible_avoid_conflict_dlls
# @flag --incompatible_merge_genfiles_directory
# @flag --noincompatible_merge_genfiles_directory
# @flag --incompatible_use_host_features
# @flag --noincompatible_use_host_features
# @flag --incompatible_use_platforms_repo_for_constraints
# @flag --noincompatible_use_platforms_repo_for_constraints
# @flag --instrument_test_targets
# @flag --noinstrument_test_targets
# @option --instrumentation_filter <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ios_minimum_os <value>               a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --ios_multi_cpus <value>               comma-separated list of options may be used multiple times
# @flag --legacy_whole_archive
# @flag --nolegacy_whole_archive
# @option --linkopt <string>                     may be used multiple times
# @option --ltobackendopt <string>               may be used multiple times
# @option --ltoindexopt <string>                 may be used multiple times
# @option --macos_cpus <value>                   comma-separated list of options may be used multiple times
# @option --macos_minimum_os <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --objc_debug_with_GLIBCXX
# @flag --noobjc_debug_with_GLIBCXX
# @flag --objc_enable_binary_stripping
# @flag --noobjc_enable_binary_stripping
# @option --objccopt <string>                    may be used multiple times
# @option --per_file_copt <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --per_file_ltobackendopt <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --platform_suffix <string>
# @option --propeller_optimize[`_choice_target`] <label>
# @option --propeller_optimize_absolute_cc_profile <string>
# @option --propeller_optimize_absolute_ld_profile <string>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @option --run_under <value>                    a prefix in front of command
# @flag --share_native_deps
# @flag --noshare_native_deps
# @flag --stamp
# @flag --nostamp
# @option --start[no|cold|warm|debug]
# @flag --start_app
# @option --strip[always|sometimes|never]
# @option --stripopt <string>                    may be used multiple times
# @option --swiftcopt <string>                   may be used multiple times
# @option --symlink_prefix <string>
# @option --tvos_cpus <value>                    comma-separated list of options may be used multiple times
# @option --tvos_minimum_os <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --visionos_cpus <value>                comma-separated list of options may be used multiple times
# @option --watchos_cpus <value>                 comma-separated list of options may be used multiple times
# @option --watchos_minimum_os <value>           a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xbinary_fdo[`_choice_target`] <label>
# @option --auto_cpu_environment_group[`_choice_target`] <label>
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @flag --check_licenses
# @flag --nocheck_licenses
# @flag --check_visibility
# @flag --nocheck_visibility
# @flag --desugar_for_android
# @flag --nodesugar_for_android
# @flag --desugar_java8_libs
# @flag --nodesugar_java8_libs
# @flag --enforce_constraints
# @flag --noenforce_constraints
# @flag --experimental_allow_android_library_deps_without_srcs
# @flag --noexperimental_allow_android_library_deps_without_srcs
# @flag --experimental_check_desugar_deps
# @flag --noexperimental_check_desugar_deps
# @flag --experimental_docker_privileged
# @flag --noexperimental_docker_privileged
# @option --experimental_import_deps_checking[off|warning|error]
# @option --experimental_repository_hash_file <string>
# @flag --experimental_sandboxfs_map_symlink_targets
# @flag --noexperimental_sandboxfs_map_symlink_targets
# @option --experimental_strict_java_deps[off|warn|error|strict|default]
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --incompatible_check_testonly_for_output_files
# @flag --noincompatible_check_testonly_for_output_files
# @flag --incompatible_disable_native_android_rules
# @flag --noincompatible_disable_native_android_rules
# @flag --incompatible_disable_native_apple_binary_rule
# @flag --noincompatible_disable_native_apple_binary_rule
# @flag --incompatible_force_strict_header_check_from_starlark
# @flag --noincompatible_force_strict_header_check_from_starlark
# @flag --incompatible_legacy_local_fallback
# @flag --noincompatible_legacy_local_fallback
# @flag --incompatible_validate_top_level_header_inclusions
# @flag --noincompatible_validate_top_level_header_inclusions
# @option --sandbox_add_mount_pair <path>        a single path or a 'source:target' pair may be used multiple times
# @option --sandbox_block_path <string>          may be used multiple times
# @flag --sandbox_default_allow_network
# @flag --nosandbox_default_allow_network
# @flag --sandbox_fake_hostname
# @flag --nosandbox_fake_hostname
# @flag --sandbox_fake_username
# @flag --nosandbox_fake_username
# @option --sandbox_writable_path <string>       may be used multiple times
# @flag --strict_filesets
# @flag --nostrict_filesets
# @option --strict_proto_deps[off|warn|error|strict|default]
# @option --strict_public_imports[off|warn|error|strict|default]
# @flag --strict_system_includes
# @flag --nostrict_system_includes
# @option --target_environment[`_choice_target`] may be used multiple times <label>
# @option --apk_signing_method[v1|v2|v1_v2|v4]
# @flag --device_debug_entitlements
# @flag --nodevice_debug_entitlements
# @option --ios_signing_cert_name <string>
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_legacy_py_provider
# @flag --noincompatible_disallow_legacy_py_provider
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @flag --allow_analysis_failures
# @flag --noallow_analysis_failures
# @option --analysis_testing_deps_limit <integer>
# @flag --break_build_on_parallel_dex2oat_failure
# @flag --nobreak_build_on_parallel_dex2oat_failure
# @flag --check_tests_up_to_date
# @flag --nocheck_tests_up_to_date
# @flag --experimental_android_use_parallel_dex2oat
# @flag --noexperimental_android_use_parallel_dex2oat
# @option --flaky_test_attempts <value>          a positive integer, the string "default", or test_regex@attempts.
# @flag --ios_memleaks
# @flag --noios_memleaks
# @option --ios_simulator_device <string>
# @option --ios_simulator_version <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --local_test_jobs[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --runs_per_test <value>                a positive integer or test_regex@runs.
# @option --test_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --test_keep_going
# @flag --notest_keep_going
# @option --test_strategy <string>
# @option --test_timeout <value>                 a single integer or comma-separated list of 4 integers
# @option --test_tmpdir <path>
# @option --tvos_simulator_device <string>
# @option --tvos_simulator_version <value>       a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_simulator_device <string>
# @option --watchos_simulator_version <value>    a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --zip_undeclared_test_outputs
# @flag --nozip_undeclared_test_outputs
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --collapse_duplicate_defines
# @flag --nocollapse_duplicate_defines
# @flag --experimental_filter_library_jar_with_program_jar
# @flag --noexperimental_filter_library_jar_with_program_jar
# @flag --experimental_inmemory_dotd_files
# @flag --noexperimental_inmemory_dotd_files
# @flag --experimental_inmemory_jdeps_files
# @flag --noexperimental_inmemory_jdeps_files
# @flag --experimental_objc_include_scanning
# @flag --noexperimental_objc_include_scanning
# @flag --experimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --noexperimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --experimental_retain_test_configuration_across_testonly
# @flag --noexperimental_retain_test_configuration_across_testonly
# @flag --experimental_starlark_cc_import
# @flag --noexperimental_starlark_cc_import
# @flag --experimental_unsupported_and_brittle_include_scanning
# @flag --noexperimental_unsupported_and_brittle_include_scanning
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --incremental_dexing
# @flag --noincremental_dexing
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @flag --objc_use_dotd_pruning
# @flag --noobjc_use_dotd_pruning
# @flag --process_headers_in_dependencies
# @flag --noprocess_headers_in_dependencies
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --trim_test_configuration
# @flag --notrim_test_configuration
# @flag --use_singlejar_apkbuilder
# @flag --nouse_singlejar_apkbuilder
# @flag --announce
# @flag --noannounce
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --debug_spawn_scheduler
# @flag --nodebug_spawn_scheduler
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @flag --experimental_collect_local_sandbox_action_metrics
# @flag --noexperimental_collect_local_sandbox_action_metrics
# @flag --experimental_docker_verbose
# @flag --noexperimental_docker_verbose
# @flag --experimental_materialize_param_files_directly
# @flag --noexperimental_materialize_param_files_directly
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --explain <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @option --incremental_install_verbosity <string>
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @flag --materialize_param_files
# @flag --nomaterialize_param_files
# @option --max_config_changes_to_show <integer>
# @option --max_test_output_bytes <integer>
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --output_filter <value>                a valid Java regular expression
# @option --profile <path>
# @option --progress_report_interval <value>     an integer in 0-3600 range
# @option --remote_print_execution_messages[failure|success|all]
# @flag --sandbox_debug
# @flag --nosandbox_debug
# @option --show_result <integer>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option -s[true|pretty_print|false]
# @option --subcommands[true|pretty_print|false]
# @option --nosubcommands[true|pretty_print|false]
# @option --test_output[summary|errors|all|streamed]
# @option --test_summary[short|terse|detailed|none|testcase]
# @option --tool_tag <string>
# @option --toolchain_resolution_debug <path>    a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @flag --verbose_explanations
# @flag --noverbose_explanations
# @flag --verbose_failures
# @flag --noverbose_failures
# @option --aspects_parameters <value>           a 'name=value' assignment may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --flag_alias <value>                   a 'name=value' flag alias may be used multiple times
# @flag --incompatible_default_to_explicit_init_py
# @flag --noincompatible_default_to_explicit_init_py
# @flag --incompatible_py2_outputs_are_suffixed
# @flag --noincompatible_py2_outputs_are_suffixed
# @flag --incompatible_py3_is_default
# @flag --noincompatible_py3_is_default
# @flag --incompatible_use_python_toolchains
# @flag --noincompatible_use_python_toolchains
# @option --python_version[PY2|PY3]
# @option --target_pattern_file <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_cache_eviction_retries <integer>
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @flag --allow_analysis_cache_discard
# @flag --noallow_analysis_cache_discard
# @option --auto_output_filter[none|all|packages|subpackages]
# @flag --build_manual_tests
# @flag --nobuild_manual_tests
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --build_tag_filters <value>            comma-separated list of options
# @flag --build_tests_only
# @flag --nobuild_tests_only
# @option -t[auto|yes|no]                        <value>  a tri-state
# @option --cache_test_results[auto|yes|no]      <value>  a tri-state
# @option --nocache_test_results[auto|yes|no]    <value>  a tri-state
# @option --color[yes|no|auto]
# @option --combined_report[none|lcov]
# @flag --compile_one_dependency
# @flag --nocompile_one_dependency
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --discard_analysis_cache
# @flag --nodiscard_analysis_cache
# @option --disk_cache <path>
# @option --embed_label <value>                  a one-line string
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @option --execution_log_binary_file <path>
# @option --execution_log_json_file <path>
# @flag --execution_log_sort
# @flag --noexecution_log_sort
# @flag --expand_test_suites
# @flag --noexpand_test_suites
# @flag --experimental_cancel_concurrent_tests
# @flag --noexperimental_cancel_concurrent_tests
# @option --experimental_execution_log_file <path>
# @flag --experimental_execution_log_spawn_metrics
# @flag --noexperimental_execution_log_spawn_metrics
# @option --experimental_extra_action_filter <path>  a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @flag --experimental_extra_action_top_level_only
# @flag --noexperimental_extra_action_top_level_only
# @flag --experimental_fetch_all_coverage_outputs
# @flag --noexperimental_fetch_all_coverage_outputs
# @flag --experimental_generate_llvm_lcov
# @flag --noexperimental_generate_llvm_lcov
# @flag --experimental_j2objc_header_map
# @flag --noexperimental_j2objc_header_map
# @flag --experimental_j2objc_shorter_header_path
# @flag --noexperimental_j2objc_shorter_header_path
# @option --experimental_java_classpath[off|javabuilder|bazel]
# @flag --experimental_limit_android_lint_to_android_constrained_java
# @flag --noexperimental_limit_android_lint_to_android_constrained_java
# @flag --experimental_prioritize_local_actions
# @flag --noexperimental_prioritize_local_actions
# @flag --experimental_run_android_lint_on_java_rules
# @flag --noexperimental_run_android_lint_on_java_rules
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_spawn_scheduler
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @flag --explicit_java_test_deps
# @flag --noexplicit_java_test_deps
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @option --host_java_launcher[`_choice_target`] <label>
# @option --host_javacopt <string>               may be used multiple times
# @option --host_jvmopt <string>                 may be used multiple times
# @flag --ignore_unsupported_sandboxing
# @flag --noignore_unsupported_sandboxing
# @flag --incompatible_check_sharding_support
# @flag --noincompatible_check_sharding_support
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_dont_use_javasourceinfoprovider
# @flag --noincompatible_dont_use_javasourceinfoprovider
# @flag --incompatible_exclusive_test_sandboxed
# @flag --noincompatible_exclusive_test_sandboxed
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @flag --incompatible_strict_action_env
# @flag --noincompatible_strict_action_env
# @option --j2objc_translation_flags <value>     comma-separated list of options may be used multiple times
# @flag --java_debug
# @flag --java_deps
# @flag --nojava_deps
# @flag --java_header_compilation
# @flag --nojava_header_compilation
# @option --java_language_version <string>
# @option --java_launcher[`_choice_target`] <label>
# @option --java_runtime_version <string>
# @option --javacopt <string>                    may be used multiple times
# @option --jvmopt <string>                      may be used multiple times
# @option --legacy_main_dex_list_generator[`_choice_target`] <label>
# @option --local_cpu_resources <value>          an integer, or "HOST_CPUS", optionally followed by [-|*]<float>.
# @option --local_extra_resources <value>        a named float, 'name=value' may be used multiple times
# @option --local_ram_resources <value>          an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --local_termination_grace_seconds <integer>
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @option --plugin[`_choice_target`] may be used multiple times <label>
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @option --proguard_top[`_choice_target`] <label>
# @option --proto_compiler[`_choice_target`] <label>
# @option --proto_toolchain_for_cc[`_choice_target`] <label>
# @option --proto_toolchain_for_j2objc[`_choice_target`] <label>
# @option --proto_toolchain_for_java[`_choice_target`] <label>
# @option --proto_toolchain_for_javalite[`_choice_target`] <label>
# @option --protocopt <string>                   may be used multiple times
# @flag --runs_per_test_detects_flakes
# @flag --noruns_per_test_detects_flakes
# @option --shell_executable <path>
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --test_arg <string>                    may be used multiple times
# @option --test_filter <string>
# @option --test_lang_filters <value>            comma-separated list of options
# @option --test_result_expiration <integer>
# @flag --test_runner_fail_fast
# @flag --notest_runner_fail_fast
# @option --test_sharding_strategy[explicit|disabled]
# @option --test_size_filters[small|medium|large|enormous]  comma-separated list of values
# @option --test_tag_filters <value>             comma-separated list of options
# @option --test_timeout_filters[short|moderate|long|eternal]  comma-separated list of values
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --tool_java_language_version <string>
# @option --tool_java_runtime_version <string>
# @option --ui_actions_shown <integer>
# @flag --use_ijars
# @flag --nouse_ijars
# @flag --watchfs
# @flag --nowatchfs
# @option --workspace_status_command <path>
# @arg target![`_choice_target`]
mobile-install() {
    :;
}
# }} bazel mobile-install

# {{ bazel mod
# @cmd Queries the Bzlmod external dependency graph
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @option --experimental_oom_more_eagerly_threshold <integer>
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @option --experimental_repository_hash_file <string>
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @option --base_module <value>                  "<root>" for the root module <module>@<version> for a specific version of a module <module> for all versions of a module @<name> for a repo with the given apparent name or @@<name> for a repo with the given canonical name
# @option --charset[utf8|ascii]
# @flag --cycles
# @flag --nocycles
# @option --depth <integer>
# @option --extension_filter <value>             a comma-separated list of <extension>s
# @option --extension_info[hidden|usages|repos|all]
# @option --extension_usages <value>             a comma-separated list of <module>s
# @option --from <value>                         a comma-separated list of <module>s
# @flag --include_builtin
# @flag --noinclude_builtin
# @flag --include_unused
# @flag --noinclude_unused
# @option --output[text|json|graph]
# @flag --verbose
# @flag --noverbose
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --profile <path>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option --tool_tag <string>
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --experimental_downloader_config <string>
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --color[yes|no|auto]
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --ui_actions_shown <integer>
# @flag --watchfs
# @flag --nowatchfs
# @arg query_type!
# @arg args*
mod() {
    :;
}
# }} bazel mod

# {{ bazel print_action
# @cmd Prints the command line args for compiling a file.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --check_up_to_date
# @flag --nocheck_up_to_date
# @option --dynamic_local_execution_delay <integer>
# @option --dynamic_local_strategy <value>       a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --dynamic_remote_strategy <value>      a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --experimental_docker_image <string>
# @flag --experimental_docker_use_customized_images
# @flag --noexperimental_docker_use_customized_images
# @flag --experimental_dynamic_exclude_tools
# @flag --noexperimental_dynamic_exclude_tools
# @option --experimental_dynamic_local_load_factor <double>
# @option --experimental_dynamic_slow_remote_time <value>  An immutable length of time.
# @flag --experimental_enable_docker_sandbox
# @flag --noexperimental_enable_docker_sandbox
# @flag --experimental_inprocess_symlink_creation
# @flag --noexperimental_inprocess_symlink_creation
# @option --experimental_oom_more_eagerly_threshold <integer>
# @flag --experimental_persistent_javac
# @flag --experimental_remotable_source_manifests
# @flag --noexperimental_remotable_source_manifests
# @option --experimental_sandbox_async_tree_delete_idle_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --experimental_sandboxfs_path <string>
# @flag --experimental_split_coverage_postprocessing
# @flag --noexperimental_split_coverage_postprocessing
# @flag --experimental_split_xml_generation
# @flag --noexperimental_split_xml_generation
# @flag --experimental_strict_fileset_output
# @flag --noexperimental_strict_fileset_output
# @option --experimental_total_worker_memory_limit_mb <value>  an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --experimental_use_hermetic_linux_sandbox
# @flag --noexperimental_use_hermetic_linux_sandbox
# @option --experimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --experimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --experimental_windows_sandbox_path <string>
# @flag --experimental_worker_as_resource
# @flag --noexperimental_worker_as_resource
# @flag --experimental_worker_cancellation
# @flag --noexperimental_worker_cancellation
# @flag --experimental_worker_multiplex
# @flag --noexperimental_worker_multiplex
# @flag --experimental_worker_multiplex_sandboxing
# @flag --noexperimental_worker_multiplex_sandboxing
# @flag --experimental_worker_strict_flagfiles
# @flag --noexperimental_worker_strict_flagfiles
# @option --genrule_strategy <value>             comma-separated list of options
# @option --high_priority_workers <string>       may be used multiple times
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag --incompatible_sandbox_hermetic_tmp
# @flag --noincompatible_sandbox_hermetic_tmp
# @flag --internal_spawn_scheduler
# @flag --nointernal_spawn_scheduler
# @option -j --jobs[auto|HOST_CPUS|HOST_RAM]     <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --modify_execution_info* <regex=[+-]key,regex=[+-]key,>
# @flag --persistent_android_dex_desugar
# @flag --persistent_android_resource_processor
# @flag --persistent_multiplex_android_dex_desugar
# @flag --persistent_multiplex_android_resource_processor
# @flag --persistent_multiplex_android_tools
# @flag --reuse_sandbox_directories
# @flag --noreuse_sandbox_directories
# @option --sandbox_base <string>
# @flag --sandbox_explicit_pseudoterminal
# @flag --nosandbox_explicit_pseudoterminal
# @option --sandbox_tmpfs_path <path>            an absolute path may be used multiple times
# @option --spawn_strategy <value>               comma-separated list of options
# @option --strategy <value>                     a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --strategy_regexp <value>              a '<RegexFilter>=value[,value]' assignment may be used multiple times
# @option --worker_extra_flag <value>            a 'name=value' assignment may be used multiple times
# @option --worker_max_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --worker_max_multiplex_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag --worker_quit_after_build
# @flag --noworker_quit_after_build
# @flag --worker_sandboxing
# @flag --noworker_sandboxing
# @flag --worker_verbose
# @flag --noworker_verbose
# @option --android_compiler <string>
# @option --android_crosstool_top[`_choice_target`] <label>
# @option --android_grte_top[`_choice_target`] <label>
# @option --android_manifest_merger[legacy|android|force_android]
# @option --android_platforms[`_choice_target`] <label>
# @option --android_sdk[`_choice_target`] <label>
# @option --apple_compiler <string>
# @option --apple_crosstool_top[`_choice_target`] <label>
# @option --apple_grte_top[`_choice_target`] <label>
# @option --cc_output_directory_tag <string>
# @option --compiler <string>
# @option --coverage_output_generator[`_choice_target`] <label>
# @option --coverage_report_generator[`_choice_target`] <label>
# @option --coverage_support[`_choice_target`] <label>
# @option --crosstool_top[`_choice_target`] <label>
# @option --custom_malloc[`_choice_target`] <label>
# @option --experimental_add_exec_constraints_to_targets <value>  a '<RegexFilter>=<label1>[,<label2>,...]' assignment may be used multiple times
# @flag --experimental_enable_objc_cc_deps
# @flag --noexperimental_enable_objc_cc_deps
# @flag --experimental_include_xcode_execution_requirements
# @flag --noexperimental_include_xcode_execution_requirements
# @flag --experimental_prefer_mutual_xcode
# @flag --noexperimental_prefer_mutual_xcode
# @option --extra_execution_platforms <value>    comma-separated list of options may be used multiple times
# @option --extra_toolchains <value>             comma-separated list of options may be used multiple times
# @option --grte_top[`_choice_target`] <label>
# @option --host_compiler <string>
# @option --host_crosstool_top[`_choice_target`] <label>
# @option --host_grte_top[`_choice_target`] <label>
# @option --host_platform[`_choice_target`] <label>
# @flag --incompatible_disable_expand_if_all_available_in_flag_set
# @flag --noincompatible_disable_expand_if_all_available_in_flag_set
# @flag --incompatible_disable_runtimes_filegroups
# @flag --noincompatible_disable_runtimes_filegroups
# @flag --incompatible_dont_emit_static_libgcc
# @flag --noincompatible_dont_emit_static_libgcc
# @flag --incompatible_dont_enable_host_nonhost_crosstool_features
# @flag --noincompatible_dont_enable_host_nonhost_crosstool_features
# @flag --incompatible_enable_android_toolchain_resolution
# @flag --noincompatible_enable_android_toolchain_resolution
# @flag --incompatible_enable_apple_toolchain_resolution
# @flag --noincompatible_enable_apple_toolchain_resolution
# @flag --incompatible_linkopts_in_user_link_flags
# @flag --noincompatible_linkopts_in_user_link_flags
# @flag --incompatible_make_thinlto_command_lines_standalone
# @flag --noincompatible_make_thinlto_command_lines_standalone
# @flag --incompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --noincompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --incompatible_remove_legacy_whole_archive
# @flag --noincompatible_remove_legacy_whole_archive
# @flag --incompatible_require_ctx_in_configure_features
# @flag --noincompatible_require_ctx_in_configure_features
# @flag --interface_shared_objects
# @flag --nointerface_shared_objects
# @option --ios_sdk_version <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --macos_sdk_version <value>            a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --minimum_os_version <string>
# @option --platform_mappings <path>             a relative path
# @option --platforms[`_choice_target`] <label>
# @option --python2_path <string>
# @option --python3_path <string>
# @option --python_path <string>
# @option --python_top[`_choice_target`] <label>
# @option --target_platform_fallback[`_choice_target`] <label>
# @option --tvos_sdk_version <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_sdk_version <value>          a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xcode_version <string>
# @option --xcode_version_config[`_choice_target`] <label>
# @flag --apple_enable_auto_dsym_dbg
# @flag --noapple_enable_auto_dsym_dbg
# @flag --apple_generate_dsym
# @flag --noapple_generate_dsym
# @flag --build
# @flag --nobuild
# @flag --build_runfile_links
# @flag --nobuild_runfile_links
# @flag --build_runfile_manifests
# @flag --nobuild_runfile_manifests
# @flag --build_test_dwp
# @flag --nobuild_test_dwp
# @option --cc_proto_library_header_suffixes <value>  comma-separated list of options
# @option --cc_proto_library_source_suffixes <value>  comma-separated list of options
# @flag --experimental_proto_descriptor_sets_include_source_info
# @flag --noexperimental_proto_descriptor_sets_include_source_info
# @flag --experimental_proto_extra_actions
# @flag --noexperimental_proto_extra_actions
# @flag --experimental_run_validations
# @flag --noexperimental_run_validations
# @flag --experimental_save_feature_state
# @flag --noexperimental_save_feature_state
# @flag --experimental_use_validation_aspect
# @flag --noexperimental_use_validation_aspect
# @option --fission <value>                      a set of compilation modes
# @flag --incompatible_always_include_files_in_data
# @flag --noincompatible_always_include_files_in_data
# @flag --legacy_external_runfiles
# @flag --nolegacy_external_runfiles
# @flag --objc_generate_linkmap
# @flag --noobjc_generate_linkmap
# @option --output_groups <value>                comma-separated list of options may be used multiple times
# @flag --run_validations
# @flag --norun_validations
# @flag --save_temps
# @flag --nosave_temps
# @option --action_env <value>                   a 'name=value' assignment with an optional value part may be used multiple times
# @option --android_cpu <string>
# @flag --android_databinding_use_androidx
# @flag --noandroid_databinding_use_androidx
# @flag --android_databinding_use_v3_4_args
# @flag --noandroid_databinding_use_v3_4_args
# @option --android_dynamic_mode[off|default|fully]
# @option --android_manifest_merger_order[alphabetical|alphabetical_by_configuration|dependency]
# @flag --android_resource_shrinking
# @flag --noandroid_resource_shrinking
# @option --apple_bitcode <value>                'mode' or 'platform=mode', where 'mode' is none, embedded_markers or embedded, and 'platform' is ios, visionos, watchos, tvos, macos or catalyst may be used multiple times
# @option --aspects <value>                      comma-separated list of options may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @option --build_python_zip[auto|yes|no] <value>  a tri-state
# @option --nobuild_python_zip[auto|yes|no] <value>  a tri-state
# @option --catalyst_cpus <value>                comma-separated list of options may be used multiple times
# @flag --collect_code_coverage
# @flag --nocollect_code_coverage
# @option -c --compilation_mode[fastbuild|dbg|opt]
# @option --conlyopt <string>                    may be used multiple times
# @option --copt <string>                        may be used multiple times
# @option --cpu <string>
# @option --cs_fdo_absolute_path <string>
# @option --cs_fdo_instrument <string>
# @option --cs_fdo_profile[`_choice_target`] <label>
# @option --cxxopt <string>                      may be used multiple times
# @option --define <value>                       a 'name=value' assignment may be used multiple times
# @option --dynamic_mode[off|default|fully]
# @flag --enable_fdo_profile_absolute_path
# @flag --noenable_fdo_profile_absolute_path
# @option --enable_runfiles[auto|yes|no] <value>  a tri-state
# @option --noenable_runfiles[auto|yes|no] <value>  a tri-state
# @option --experimental_action_listener[`_choice_target`] may be used multiple times <label>
# @flag --experimental_android_compress_java_resources
# @flag --noexperimental_android_compress_java_resources
# @flag --experimental_android_databinding_v2
# @flag --noexperimental_android_databinding_v2
# @flag --experimental_android_resource_shrinking
# @flag --noexperimental_android_resource_shrinking
# @flag --experimental_android_rewrite_dexes_with_rex
# @flag --noexperimental_android_rewrite_dexes_with_rex
# @flag --experimental_collect_code_coverage_for_generated_files
# @flag --noexperimental_collect_code_coverage_for_generated_files
# @option --experimental_convenience_symlinks[normal|clean|ignore|log_only]
# @option --noexperimental_convenience_symlinks[normal|clean|ignore|log_only]
# @flag --experimental_convenience_symlinks_bep_event
# @flag --noexperimental_convenience_symlinks_bep_event
# @option --experimental_multi_cpu <value>       comma-separated list of options may be used multiple times
# @option --experimental_objc_fastbuild_options <value>  comma-separated list of options
# @flag --experimental_omitfp
# @flag --noexperimental_omitfp
# @flag --experimental_platform_in_output_dir
# @flag --noexperimental_platform_in_output_dir
# @flag --experimental_use_llvm_covmap
# @flag --noexperimental_use_llvm_covmap
# @option --fat_apk_cpu <value>                  comma-separated list of options
# @flag --fat_apk_hwasan
# @flag --nofat_apk_hwasan
# @option --fdo_instrument <string>
# @option --fdo_optimize <string>
# @option --fdo_prefetch_hints[`_choice_target`] <label>
# @option --fdo_profile[`_choice_target`] <label>
# @option --features <string>                    may be used multiple times
# @flag --force_pic
# @flag --noforce_pic
# @option --host_action_env <value>              a 'name=value' assignment with an optional value part may be used multiple times
# @option --host_compilation_mode[fastbuild|dbg|opt]
# @option --host_conlyopt <string>               may be used multiple times
# @option --host_copt <string>                   may be used multiple times
# @option --host_cpu <string>
# @option --host_cxxopt <string>                 may be used multiple times
# @option --host_features <string>               may be used multiple times
# @option --host_force_python[PY2|PY3]
# @option --host_linkopt <string>                may be used multiple times
# @option --host_macos_minimum_os <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --host_per_file_copt <path>            a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --host_swiftcopt <string>              may be used multiple times
# @flag --incompatible_avoid_conflict_dlls
# @flag --noincompatible_avoid_conflict_dlls
# @flag --incompatible_merge_genfiles_directory
# @flag --noincompatible_merge_genfiles_directory
# @flag --incompatible_use_host_features
# @flag --noincompatible_use_host_features
# @flag --incompatible_use_platforms_repo_for_constraints
# @flag --noincompatible_use_platforms_repo_for_constraints
# @flag --instrument_test_targets
# @flag --noinstrument_test_targets
# @option --instrumentation_filter <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ios_minimum_os <value>               a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --ios_multi_cpus <value>               comma-separated list of options may be used multiple times
# @flag --legacy_whole_archive
# @flag --nolegacy_whole_archive
# @option --linkopt <string>                     may be used multiple times
# @option --ltobackendopt <string>               may be used multiple times
# @option --ltoindexopt <string>                 may be used multiple times
# @option --macos_cpus <value>                   comma-separated list of options may be used multiple times
# @option --macos_minimum_os <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --objc_debug_with_GLIBCXX
# @flag --noobjc_debug_with_GLIBCXX
# @flag --objc_enable_binary_stripping
# @flag --noobjc_enable_binary_stripping
# @option --objccopt <string>                    may be used multiple times
# @option --per_file_copt <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --per_file_ltobackendopt <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --platform_suffix <string>
# @option --propeller_optimize[`_choice_target`] <label>
# @option --propeller_optimize_absolute_cc_profile <string>
# @option --propeller_optimize_absolute_ld_profile <string>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @option --run_under <value>                    a prefix in front of command
# @flag --share_native_deps
# @flag --noshare_native_deps
# @flag --stamp
# @flag --nostamp
# @option --strip[always|sometimes|never]
# @option --stripopt <string>                    may be used multiple times
# @option --swiftcopt <string>                   may be used multiple times
# @option --symlink_prefix <string>
# @option --tvos_cpus <value>                    comma-separated list of options may be used multiple times
# @option --tvos_minimum_os <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --visionos_cpus <value>                comma-separated list of options may be used multiple times
# @option --watchos_cpus <value>                 comma-separated list of options may be used multiple times
# @option --watchos_minimum_os <value>           a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xbinary_fdo[`_choice_target`] <label>
# @option --auto_cpu_environment_group[`_choice_target`] <label>
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @flag --check_licenses
# @flag --nocheck_licenses
# @flag --check_visibility
# @flag --nocheck_visibility
# @flag --desugar_for_android
# @flag --nodesugar_for_android
# @flag --desugar_java8_libs
# @flag --nodesugar_java8_libs
# @flag --enforce_constraints
# @flag --noenforce_constraints
# @flag --experimental_allow_android_library_deps_without_srcs
# @flag --noexperimental_allow_android_library_deps_without_srcs
# @flag --experimental_check_desugar_deps
# @flag --noexperimental_check_desugar_deps
# @flag --experimental_docker_privileged
# @flag --noexperimental_docker_privileged
# @option --experimental_import_deps_checking[off|warning|error]
# @option --experimental_repository_hash_file <string>
# @flag --experimental_sandboxfs_map_symlink_targets
# @flag --noexperimental_sandboxfs_map_symlink_targets
# @option --experimental_strict_java_deps[off|warn|error|strict|default]
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --incompatible_check_testonly_for_output_files
# @flag --noincompatible_check_testonly_for_output_files
# @flag --incompatible_disable_native_android_rules
# @flag --noincompatible_disable_native_android_rules
# @flag --incompatible_disable_native_apple_binary_rule
# @flag --noincompatible_disable_native_apple_binary_rule
# @flag --incompatible_force_strict_header_check_from_starlark
# @flag --noincompatible_force_strict_header_check_from_starlark
# @flag --incompatible_legacy_local_fallback
# @flag --noincompatible_legacy_local_fallback
# @flag --incompatible_validate_top_level_header_inclusions
# @flag --noincompatible_validate_top_level_header_inclusions
# @option --sandbox_add_mount_pair <path>        a single path or a 'source:target' pair may be used multiple times
# @option --sandbox_block_path <string>          may be used multiple times
# @flag --sandbox_default_allow_network
# @flag --nosandbox_default_allow_network
# @flag --sandbox_fake_hostname
# @flag --nosandbox_fake_hostname
# @flag --sandbox_fake_username
# @flag --nosandbox_fake_username
# @option --sandbox_writable_path <string>       may be used multiple times
# @flag --strict_filesets
# @flag --nostrict_filesets
# @option --strict_proto_deps[off|warn|error|strict|default]
# @option --strict_public_imports[off|warn|error|strict|default]
# @flag --strict_system_includes
# @flag --nostrict_system_includes
# @option --target_environment[`_choice_target`] may be used multiple times <label>
# @option --apk_signing_method[v1|v2|v1_v2|v4]
# @flag --device_debug_entitlements
# @flag --nodevice_debug_entitlements
# @option --ios_signing_cert_name <string>
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_legacy_py_provider
# @flag --noincompatible_disallow_legacy_py_provider
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @flag --allow_analysis_failures
# @flag --noallow_analysis_failures
# @option --analysis_testing_deps_limit <integer>
# @flag --break_build_on_parallel_dex2oat_failure
# @flag --nobreak_build_on_parallel_dex2oat_failure
# @flag --check_tests_up_to_date
# @flag --nocheck_tests_up_to_date
# @flag --experimental_android_use_parallel_dex2oat
# @flag --noexperimental_android_use_parallel_dex2oat
# @option --flaky_test_attempts <value>          a positive integer, the string "default", or test_regex@attempts.
# @flag --ios_memleaks
# @flag --noios_memleaks
# @option --ios_simulator_device <string>
# @option --ios_simulator_version <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --local_test_jobs[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --runs_per_test <value>                a positive integer or test_regex@runs.
# @option --test_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --test_keep_going
# @flag --notest_keep_going
# @option --test_strategy <string>
# @option --test_timeout <value>                 a single integer or comma-separated list of 4 integers
# @option --test_tmpdir <path>
# @option --tvos_simulator_device <string>
# @option --tvos_simulator_version <value>       a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_simulator_device <string>
# @option --watchos_simulator_version <value>    a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --zip_undeclared_test_outputs
# @flag --nozip_undeclared_test_outputs
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --collapse_duplicate_defines
# @flag --nocollapse_duplicate_defines
# @flag --experimental_filter_library_jar_with_program_jar
# @flag --noexperimental_filter_library_jar_with_program_jar
# @flag --experimental_inmemory_dotd_files
# @flag --noexperimental_inmemory_dotd_files
# @flag --experimental_inmemory_jdeps_files
# @flag --noexperimental_inmemory_jdeps_files
# @flag --experimental_objc_include_scanning
# @flag --noexperimental_objc_include_scanning
# @flag --experimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --noexperimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --experimental_retain_test_configuration_across_testonly
# @flag --noexperimental_retain_test_configuration_across_testonly
# @flag --experimental_starlark_cc_import
# @flag --noexperimental_starlark_cc_import
# @flag --experimental_unsupported_and_brittle_include_scanning
# @flag --noexperimental_unsupported_and_brittle_include_scanning
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --incremental_dexing
# @flag --noincremental_dexing
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @flag --objc_use_dotd_pruning
# @flag --noobjc_use_dotd_pruning
# @flag --process_headers_in_dependencies
# @flag --noprocess_headers_in_dependencies
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --trim_test_configuration
# @flag --notrim_test_configuration
# @flag --use_singlejar_apkbuilder
# @flag --nouse_singlejar_apkbuilder
# @flag --announce
# @flag --noannounce
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --debug_spawn_scheduler
# @flag --nodebug_spawn_scheduler
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @flag --experimental_collect_local_sandbox_action_metrics
# @flag --noexperimental_collect_local_sandbox_action_metrics
# @flag --experimental_docker_verbose
# @flag --noexperimental_docker_verbose
# @flag --experimental_materialize_param_files_directly
# @flag --noexperimental_materialize_param_files_directly
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --explain <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @flag --materialize_param_files
# @flag --nomaterialize_param_files
# @option --max_config_changes_to_show <integer>
# @option --max_test_output_bytes <integer>
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --output_filter <value>                a valid Java regular expression
# @option --profile <path>
# @option --progress_report_interval <value>     an integer in 0-3600 range
# @option --remote_print_execution_messages[failure|success|all]
# @flag --sandbox_debug
# @flag --nosandbox_debug
# @option --show_result <integer>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option -s[true|pretty_print|false]
# @option --subcommands[true|pretty_print|false]
# @option --nosubcommands[true|pretty_print|false]
# @option --test_output[summary|errors|all|streamed]
# @option --test_summary[short|terse|detailed|none|testcase]
# @option --tool_tag <string>
# @option --toolchain_resolution_debug <path>    a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @flag --verbose_explanations
# @flag --noverbose_explanations
# @flag --verbose_failures
# @flag --noverbose_failures
# @option --aspects_parameters <value>           a 'name=value' assignment may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --flag_alias <value>                   a 'name=value' flag alias may be used multiple times
# @flag --incompatible_default_to_explicit_init_py
# @flag --noincompatible_default_to_explicit_init_py
# @flag --incompatible_py2_outputs_are_suffixed
# @flag --noincompatible_py2_outputs_are_suffixed
# @flag --incompatible_py3_is_default
# @flag --noincompatible_py3_is_default
# @flag --incompatible_use_python_toolchains
# @flag --noincompatible_use_python_toolchains
# @option --python_version[PY2|PY3]
# @option --target_pattern_file <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_cache_eviction_retries <integer>
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @flag --allow_analysis_cache_discard
# @flag --noallow_analysis_cache_discard
# @option --auto_output_filter[none|all|packages|subpackages]
# @flag --build_manual_tests
# @flag --nobuild_manual_tests
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --build_tag_filters <value>            comma-separated list of options
# @flag --build_tests_only
# @flag --nobuild_tests_only
# @option -t[auto|yes|no]                        <value>  a tri-state
# @option --cache_test_results[auto|yes|no]      <value>  a tri-state
# @option --nocache_test_results[auto|yes|no]    <value>  a tri-state
# @option --color[yes|no|auto]
# @option --combined_report[none|lcov]
# @flag --compile_one_dependency
# @flag --nocompile_one_dependency
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --discard_analysis_cache
# @flag --nodiscard_analysis_cache
# @option --disk_cache <path>
# @option --embed_label <value>                  a one-line string
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @option --execution_log_binary_file <path>
# @option --execution_log_json_file <path>
# @flag --execution_log_sort
# @flag --noexecution_log_sort
# @flag --expand_test_suites
# @flag --noexpand_test_suites
# @flag --experimental_cancel_concurrent_tests
# @flag --noexperimental_cancel_concurrent_tests
# @option --experimental_execution_log_file <path>
# @flag --experimental_execution_log_spawn_metrics
# @flag --noexperimental_execution_log_spawn_metrics
# @option --experimental_extra_action_filter <path>  a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @flag --experimental_extra_action_top_level_only
# @flag --noexperimental_extra_action_top_level_only
# @flag --experimental_fetch_all_coverage_outputs
# @flag --noexperimental_fetch_all_coverage_outputs
# @flag --experimental_generate_llvm_lcov
# @flag --noexperimental_generate_llvm_lcov
# @flag --experimental_j2objc_header_map
# @flag --noexperimental_j2objc_header_map
# @flag --experimental_j2objc_shorter_header_path
# @flag --noexperimental_j2objc_shorter_header_path
# @option --experimental_java_classpath[off|javabuilder|bazel]
# @flag --experimental_limit_android_lint_to_android_constrained_java
# @flag --noexperimental_limit_android_lint_to_android_constrained_java
# @flag --experimental_prioritize_local_actions
# @flag --noexperimental_prioritize_local_actions
# @flag --experimental_run_android_lint_on_java_rules
# @flag --noexperimental_run_android_lint_on_java_rules
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_spawn_scheduler
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @flag --explicit_java_test_deps
# @flag --noexplicit_java_test_deps
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @option --host_java_launcher[`_choice_target`] <label>
# @option --host_javacopt <string>               may be used multiple times
# @option --host_jvmopt <string>                 may be used multiple times
# @flag --ignore_unsupported_sandboxing
# @flag --noignore_unsupported_sandboxing
# @flag --incompatible_check_sharding_support
# @flag --noincompatible_check_sharding_support
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_dont_use_javasourceinfoprovider
# @flag --noincompatible_dont_use_javasourceinfoprovider
# @flag --incompatible_exclusive_test_sandboxed
# @flag --noincompatible_exclusive_test_sandboxed
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @flag --incompatible_strict_action_env
# @flag --noincompatible_strict_action_env
# @option --j2objc_translation_flags <value>     comma-separated list of options may be used multiple times
# @flag --java_debug
# @flag --java_deps
# @flag --nojava_deps
# @flag --java_header_compilation
# @flag --nojava_header_compilation
# @option --java_language_version <string>
# @option --java_launcher[`_choice_target`] <label>
# @option --java_runtime_version <string>
# @option --javacopt <string>                    may be used multiple times
# @option --jvmopt <string>                      may be used multiple times
# @option --legacy_main_dex_list_generator[`_choice_target`] <label>
# @option --local_cpu_resources <value>          an integer, or "HOST_CPUS", optionally followed by [-|*]<float>.
# @option --local_extra_resources <value>        a named float, 'name=value' may be used multiple times
# @option --local_ram_resources <value>          an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --local_termination_grace_seconds <integer>
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @option --plugin[`_choice_target`] may be used multiple times <label>
# @option --print_action_mnemonics <string>      may be used multiple times
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @option --proguard_top[`_choice_target`] <label>
# @option --proto_compiler[`_choice_target`] <label>
# @option --proto_toolchain_for_cc[`_choice_target`] <label>
# @option --proto_toolchain_for_j2objc[`_choice_target`] <label>
# @option --proto_toolchain_for_java[`_choice_target`] <label>
# @option --proto_toolchain_for_javalite[`_choice_target`] <label>
# @option --protocopt <string>                   may be used multiple times
# @flag --runs_per_test_detects_flakes
# @flag --noruns_per_test_detects_flakes
# @option --shell_executable <path>
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --test_arg <string>                    may be used multiple times
# @option --test_filter <string>
# @option --test_lang_filters <value>            comma-separated list of options
# @option --test_result_expiration <integer>
# @flag --test_runner_fail_fast
# @flag --notest_runner_fail_fast
# @option --test_sharding_strategy[explicit|disabled]
# @option --test_size_filters[small|medium|large|enormous]  comma-separated list of values
# @option --test_tag_filters <value>             comma-separated list of options
# @option --test_timeout_filters[short|moderate|long|eternal]  comma-separated list of values
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --tool_java_language_version <string>
# @option --tool_java_runtime_version <string>
# @option --ui_actions_shown <integer>
# @flag --use_ijars
# @flag --nouse_ijars
# @flag --watchfs
# @flag --nowatchfs
# @option --workspace_status_command <path>
# @arg targets*[`_choice_target`]
print_action() {
    :;
}
# }} bazel print_action

# {{ bazel query
# @cmd Executes a dependency graph query.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @option --experimental_oom_more_eagerly_threshold <integer>
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --bep_maximum_open_remote_upload_files <integer>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @option --experimental_repository_hash_file <string>
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @option --aspect_deps[off|conservative|precise]
# @flag --consistent_labels
# @flag --noconsistent_labels
# @option --experimental_graphless_query[auto|yes|no] <value>  a tri-state
# @option --noexperimental_graphless_query[auto|yes|no] <value>  a tri-state
# @option --graph:conditional_edges_limit <integer>
# @flag --graph:factored
# @flag --nograph:factored
# @option --graph:node_limit <integer>
# @flag --implicit_deps
# @flag --noimplicit_deps
# @flag --include_aspects
# @flag --noinclude_aspects
# @flag --incompatible_display_source_file_location
# @flag --noincompatible_display_source_file_location
# @flag --incompatible_lexicographical_output
# @flag --noincompatible_lexicographical_output
# @flag --incompatible_package_group_includes_double_slash
# @flag --noincompatible_package_group_includes_double_slash
# @flag --infer_universe_scope
# @flag --noinfer_universe_scope
# @flag --line_terminator_null
# @flag --noline_terminator_null
# @flag --nodep_deps
# @flag --nonodep_deps
# @flag --noorder_results
# @flag --null
# @option --order_output[no|deps|auto|full]
# @flag --order_results
# @option --output <string>
# @flag --proto:default_values
# @flag --noproto:default_values
# @flag --proto:definition_stack
# @flag --noproto:definition_stack
# @flag --proto:flatten_selects
# @flag --noproto:flatten_selects
# @flag --proto:include_synthetic_attribute_hash
# @flag --noproto:include_synthetic_attribute_hash
# @flag --proto:instantiation_stack
# @flag --noproto:instantiation_stack
# @flag --proto:locations
# @flag --noproto:locations
# @option --proto:output_rule_attrs <value>      comma-separated list of options
# @flag --proto:rule_inputs_and_outputs
# @flag --noproto:rule_inputs_and_outputs
# @option --query_file <string>
# @flag --relative_locations
# @flag --norelative_locations
# @flag --strict_test_suite
# @flag --nostrict_test_suite
# @flag --tool_deps
# @flag --notool_deps
# @option --universe_scope <value>               comma-separated list of options
# @flag --xml:default_values
# @flag --noxml:default_values
# @flag --xml:line_numbers
# @flag --noxml:line_numbers
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --profile <path>
# @option --remote_print_execution_messages[failure|success|all]
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option --tool_tag <string>
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --color[yes|no|auto]
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @option --disk_cache <path>
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --ui_actions_shown <integer>
# @flag --watchfs
# @flag --nowatchfs
# @arg query-expression!
query() {
    :;
}
# }} bazel query

# {{ bazel run
# @cmd Runs the specified target.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --check_up_to_date
# @flag --nocheck_up_to_date
# @option --dynamic_local_execution_delay <integer>
# @option --dynamic_local_strategy <value>       a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --dynamic_remote_strategy <value>      a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --experimental_docker_image <string>
# @flag --experimental_docker_use_customized_images
# @flag --noexperimental_docker_use_customized_images
# @flag --experimental_dynamic_exclude_tools
# @flag --noexperimental_dynamic_exclude_tools
# @option --experimental_dynamic_local_load_factor <double>
# @option --experimental_dynamic_slow_remote_time <value>  An immutable length of time.
# @flag --experimental_enable_docker_sandbox
# @flag --noexperimental_enable_docker_sandbox
# @flag --experimental_inprocess_symlink_creation
# @flag --noexperimental_inprocess_symlink_creation
# @option --experimental_oom_more_eagerly_threshold <integer>
# @flag --experimental_persistent_javac
# @flag --experimental_remotable_source_manifests
# @flag --noexperimental_remotable_source_manifests
# @option --experimental_sandbox_async_tree_delete_idle_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --experimental_sandboxfs_path <string>
# @flag --experimental_split_coverage_postprocessing
# @flag --noexperimental_split_coverage_postprocessing
# @flag --experimental_split_xml_generation
# @flag --noexperimental_split_xml_generation
# @flag --experimental_strict_fileset_output
# @flag --noexperimental_strict_fileset_output
# @option --experimental_total_worker_memory_limit_mb <value>  an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --experimental_use_hermetic_linux_sandbox
# @flag --noexperimental_use_hermetic_linux_sandbox
# @option --experimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --experimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --experimental_windows_sandbox_path <string>
# @flag --experimental_worker_as_resource
# @flag --noexperimental_worker_as_resource
# @flag --experimental_worker_cancellation
# @flag --noexperimental_worker_cancellation
# @flag --experimental_worker_multiplex
# @flag --noexperimental_worker_multiplex
# @flag --experimental_worker_multiplex_sandboxing
# @flag --noexperimental_worker_multiplex_sandboxing
# @flag --experimental_worker_strict_flagfiles
# @flag --noexperimental_worker_strict_flagfiles
# @option --genrule_strategy <value>             comma-separated list of options
# @option --high_priority_workers <string>       may be used multiple times
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag --incompatible_sandbox_hermetic_tmp
# @flag --noincompatible_sandbox_hermetic_tmp
# @flag --internal_spawn_scheduler
# @flag --nointernal_spawn_scheduler
# @option -j --jobs[auto|HOST_CPUS|HOST_RAM]     <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --modify_execution_info* <regex=[+-]key,regex=[+-]key,>
# @flag --persistent_android_dex_desugar
# @flag --persistent_android_resource_processor
# @flag --persistent_multiplex_android_dex_desugar
# @flag --persistent_multiplex_android_resource_processor
# @flag --persistent_multiplex_android_tools
# @flag --reuse_sandbox_directories
# @flag --noreuse_sandbox_directories
# @option --sandbox_base <string>
# @flag --sandbox_explicit_pseudoterminal
# @flag --nosandbox_explicit_pseudoterminal
# @option --sandbox_tmpfs_path <path>            an absolute path may be used multiple times
# @option --spawn_strategy <value>               comma-separated list of options
# @option --strategy <value>                     a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --strategy_regexp <value>              a '<RegexFilter>=value[,value]' assignment may be used multiple times
# @option --worker_extra_flag <value>            a 'name=value' assignment may be used multiple times
# @option --worker_max_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --worker_max_multiplex_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag --worker_quit_after_build
# @flag --noworker_quit_after_build
# @flag --worker_sandboxing
# @flag --noworker_sandboxing
# @flag --worker_verbose
# @flag --noworker_verbose
# @option --android_compiler <string>
# @option --android_crosstool_top[`_choice_target`] <label>
# @option --android_grte_top[`_choice_target`] <label>
# @option --android_manifest_merger[legacy|android|force_android]
# @option --android_platforms[`_choice_target`] <label>
# @option --android_sdk[`_choice_target`] <label>
# @option --apple_compiler <string>
# @option --apple_crosstool_top[`_choice_target`] <label>
# @option --apple_grte_top[`_choice_target`] <label>
# @option --cc_output_directory_tag <string>
# @option --compiler <string>
# @option --coverage_output_generator[`_choice_target`] <label>
# @option --coverage_report_generator[`_choice_target`] <label>
# @option --coverage_support[`_choice_target`] <label>
# @option --crosstool_top[`_choice_target`] <label>
# @option --custom_malloc[`_choice_target`] <label>
# @option --experimental_add_exec_constraints_to_targets <value>  a '<RegexFilter>=<label1>[,<label2>,...]' assignment may be used multiple times
# @flag --experimental_enable_objc_cc_deps
# @flag --noexperimental_enable_objc_cc_deps
# @flag --experimental_include_xcode_execution_requirements
# @flag --noexperimental_include_xcode_execution_requirements
# @flag --experimental_prefer_mutual_xcode
# @flag --noexperimental_prefer_mutual_xcode
# @option --extra_execution_platforms <value>    comma-separated list of options may be used multiple times
# @option --extra_toolchains <value>             comma-separated list of options may be used multiple times
# @option --grte_top[`_choice_target`] <label>
# @option --host_compiler <string>
# @option --host_crosstool_top[`_choice_target`] <label>
# @option --host_grte_top[`_choice_target`] <label>
# @option --host_platform[`_choice_target`] <label>
# @flag --incompatible_disable_expand_if_all_available_in_flag_set
# @flag --noincompatible_disable_expand_if_all_available_in_flag_set
# @flag --incompatible_disable_runtimes_filegroups
# @flag --noincompatible_disable_runtimes_filegroups
# @flag --incompatible_dont_emit_static_libgcc
# @flag --noincompatible_dont_emit_static_libgcc
# @flag --incompatible_dont_enable_host_nonhost_crosstool_features
# @flag --noincompatible_dont_enable_host_nonhost_crosstool_features
# @flag --incompatible_enable_android_toolchain_resolution
# @flag --noincompatible_enable_android_toolchain_resolution
# @flag --incompatible_enable_apple_toolchain_resolution
# @flag --noincompatible_enable_apple_toolchain_resolution
# @flag --incompatible_linkopts_in_user_link_flags
# @flag --noincompatible_linkopts_in_user_link_flags
# @flag --incompatible_make_thinlto_command_lines_standalone
# @flag --noincompatible_make_thinlto_command_lines_standalone
# @flag --incompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --noincompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --incompatible_remove_legacy_whole_archive
# @flag --noincompatible_remove_legacy_whole_archive
# @flag --incompatible_require_ctx_in_configure_features
# @flag --noincompatible_require_ctx_in_configure_features
# @flag --interface_shared_objects
# @flag --nointerface_shared_objects
# @option --ios_sdk_version <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --macos_sdk_version <value>            a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --minimum_os_version <string>
# @option --platform_mappings <path>             a relative path
# @option --platforms[`_choice_target`] <label>
# @option --python2_path <string>
# @option --python3_path <string>
# @option --python_path <string>
# @option --python_top[`_choice_target`] <label>
# @option --target_platform_fallback[`_choice_target`] <label>
# @option --tvos_sdk_version <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_sdk_version <value>          a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xcode_version <string>
# @option --xcode_version_config[`_choice_target`] <label>
# @flag --apple_enable_auto_dsym_dbg
# @flag --noapple_enable_auto_dsym_dbg
# @flag --apple_generate_dsym
# @flag --noapple_generate_dsym
# @flag --build
# @flag --nobuild
# @flag --build_runfile_links
# @flag --nobuild_runfile_links
# @flag --build_runfile_manifests
# @flag --nobuild_runfile_manifests
# @flag --build_test_dwp
# @flag --nobuild_test_dwp
# @option --cc_proto_library_header_suffixes <value>  comma-separated list of options
# @option --cc_proto_library_source_suffixes <value>  comma-separated list of options
# @flag --experimental_proto_descriptor_sets_include_source_info
# @flag --noexperimental_proto_descriptor_sets_include_source_info
# @flag --experimental_proto_extra_actions
# @flag --noexperimental_proto_extra_actions
# @flag --experimental_run_validations
# @flag --noexperimental_run_validations
# @flag --experimental_save_feature_state
# @flag --noexperimental_save_feature_state
# @flag --experimental_use_validation_aspect
# @flag --noexperimental_use_validation_aspect
# @option --fission <value>                      a set of compilation modes
# @flag --incompatible_always_include_files_in_data
# @flag --noincompatible_always_include_files_in_data
# @flag --legacy_external_runfiles
# @flag --nolegacy_external_runfiles
# @flag --objc_generate_linkmap
# @flag --noobjc_generate_linkmap
# @option --output_groups <value>                comma-separated list of options may be used multiple times
# @flag --run_validations
# @flag --norun_validations
# @flag --save_temps
# @flag --nosave_temps
# @option --action_env <value>                   a 'name=value' assignment with an optional value part may be used multiple times
# @option --android_cpu <string>
# @flag --android_databinding_use_androidx
# @flag --noandroid_databinding_use_androidx
# @flag --android_databinding_use_v3_4_args
# @flag --noandroid_databinding_use_v3_4_args
# @option --android_dynamic_mode[off|default|fully]
# @option --android_manifest_merger_order[alphabetical|alphabetical_by_configuration|dependency]
# @flag --android_resource_shrinking
# @flag --noandroid_resource_shrinking
# @option --apple_bitcode <value>                'mode' or 'platform=mode', where 'mode' is none, embedded_markers or embedded, and 'platform' is ios, visionos, watchos, tvos, macos or catalyst may be used multiple times
# @option --aspects <value>                      comma-separated list of options may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @option --build_python_zip[auto|yes|no] <value>  a tri-state
# @option --nobuild_python_zip[auto|yes|no] <value>  a tri-state
# @option --catalyst_cpus <value>                comma-separated list of options may be used multiple times
# @flag --collect_code_coverage
# @flag --nocollect_code_coverage
# @option -c --compilation_mode[fastbuild|dbg|opt]
# @option --conlyopt <string>                    may be used multiple times
# @option --copt <string>                        may be used multiple times
# @option --cpu <string>
# @option --cs_fdo_absolute_path <string>
# @option --cs_fdo_instrument <string>
# @option --cs_fdo_profile[`_choice_target`] <label>
# @option --cxxopt <string>                      may be used multiple times
# @option --define <value>                       a 'name=value' assignment may be used multiple times
# @option --dynamic_mode[off|default|fully]
# @flag --enable_fdo_profile_absolute_path
# @flag --noenable_fdo_profile_absolute_path
# @option --enable_runfiles[auto|yes|no] <value>  a tri-state
# @option --noenable_runfiles[auto|yes|no] <value>  a tri-state
# @option --experimental_action_listener[`_choice_target`] may be used multiple times <label>
# @flag --experimental_android_compress_java_resources
# @flag --noexperimental_android_compress_java_resources
# @flag --experimental_android_databinding_v2
# @flag --noexperimental_android_databinding_v2
# @flag --experimental_android_resource_shrinking
# @flag --noexperimental_android_resource_shrinking
# @flag --experimental_android_rewrite_dexes_with_rex
# @flag --noexperimental_android_rewrite_dexes_with_rex
# @flag --experimental_collect_code_coverage_for_generated_files
# @flag --noexperimental_collect_code_coverage_for_generated_files
# @option --experimental_convenience_symlinks[normal|clean|ignore|log_only]
# @option --noexperimental_convenience_symlinks[normal|clean|ignore|log_only]
# @flag --experimental_convenience_symlinks_bep_event
# @flag --noexperimental_convenience_symlinks_bep_event
# @option --experimental_multi_cpu <value>       comma-separated list of options may be used multiple times
# @option --experimental_objc_fastbuild_options <value>  comma-separated list of options
# @flag --experimental_omitfp
# @flag --noexperimental_omitfp
# @flag --experimental_platform_in_output_dir
# @flag --noexperimental_platform_in_output_dir
# @flag --experimental_use_llvm_covmap
# @flag --noexperimental_use_llvm_covmap
# @option --fat_apk_cpu <value>                  comma-separated list of options
# @flag --fat_apk_hwasan
# @flag --nofat_apk_hwasan
# @option --fdo_instrument <string>
# @option --fdo_optimize <string>
# @option --fdo_prefetch_hints[`_choice_target`] <label>
# @option --fdo_profile[`_choice_target`] <label>
# @option --features <string>                    may be used multiple times
# @flag --force_pic
# @flag --noforce_pic
# @option --host_action_env <value>              a 'name=value' assignment with an optional value part may be used multiple times
# @option --host_compilation_mode[fastbuild|dbg|opt]
# @option --host_conlyopt <string>               may be used multiple times
# @option --host_copt <string>                   may be used multiple times
# @option --host_cpu <string>
# @option --host_cxxopt <string>                 may be used multiple times
# @option --host_features <string>               may be used multiple times
# @option --host_force_python[PY2|PY3]
# @option --host_linkopt <string>                may be used multiple times
# @option --host_macos_minimum_os <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --host_per_file_copt <path>            a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --host_swiftcopt <string>              may be used multiple times
# @flag --incompatible_avoid_conflict_dlls
# @flag --noincompatible_avoid_conflict_dlls
# @flag --incompatible_merge_genfiles_directory
# @flag --noincompatible_merge_genfiles_directory
# @flag --incompatible_use_host_features
# @flag --noincompatible_use_host_features
# @flag --incompatible_use_platforms_repo_for_constraints
# @flag --noincompatible_use_platforms_repo_for_constraints
# @flag --instrument_test_targets
# @flag --noinstrument_test_targets
# @option --instrumentation_filter <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ios_minimum_os <value>               a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --ios_multi_cpus <value>               comma-separated list of options may be used multiple times
# @flag --legacy_whole_archive
# @flag --nolegacy_whole_archive
# @option --linkopt <string>                     may be used multiple times
# @option --ltobackendopt <string>               may be used multiple times
# @option --ltoindexopt <string>                 may be used multiple times
# @option --macos_cpus <value>                   comma-separated list of options may be used multiple times
# @option --macos_minimum_os <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --objc_debug_with_GLIBCXX
# @flag --noobjc_debug_with_GLIBCXX
# @flag --objc_enable_binary_stripping
# @flag --noobjc_enable_binary_stripping
# @option --objccopt <string>                    may be used multiple times
# @option --per_file_copt <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --per_file_ltobackendopt <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --platform_suffix <string>
# @option --propeller_optimize[`_choice_target`] <label>
# @option --propeller_optimize_absolute_cc_profile <string>
# @option --propeller_optimize_absolute_ld_profile <string>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @option --run_under <value>                    a prefix in front of command
# @option --script_path <path>
# @flag --share_native_deps
# @flag --noshare_native_deps
# @flag --stamp
# @flag --nostamp
# @option --strip[always|sometimes|never]
# @option --stripopt <string>                    may be used multiple times
# @option --swiftcopt <string>                   may be used multiple times
# @option --symlink_prefix <string>
# @option --tvos_cpus <value>                    comma-separated list of options may be used multiple times
# @option --tvos_minimum_os <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --visionos_cpus <value>                comma-separated list of options may be used multiple times
# @option --watchos_cpus <value>                 comma-separated list of options may be used multiple times
# @option --watchos_minimum_os <value>           a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xbinary_fdo[`_choice_target`] <label>
# @option --auto_cpu_environment_group[`_choice_target`] <label>
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @flag --check_licenses
# @flag --nocheck_licenses
# @flag --check_visibility
# @flag --nocheck_visibility
# @flag --desugar_for_android
# @flag --nodesugar_for_android
# @flag --desugar_java8_libs
# @flag --nodesugar_java8_libs
# @flag --enforce_constraints
# @flag --noenforce_constraints
# @flag --experimental_allow_android_library_deps_without_srcs
# @flag --noexperimental_allow_android_library_deps_without_srcs
# @flag --experimental_check_desugar_deps
# @flag --noexperimental_check_desugar_deps
# @flag --experimental_docker_privileged
# @flag --noexperimental_docker_privileged
# @option --experimental_import_deps_checking[off|warning|error]
# @option --experimental_repository_hash_file <string>
# @flag --experimental_sandboxfs_map_symlink_targets
# @flag --noexperimental_sandboxfs_map_symlink_targets
# @option --experimental_strict_java_deps[off|warn|error|strict|default]
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --incompatible_check_testonly_for_output_files
# @flag --noincompatible_check_testonly_for_output_files
# @flag --incompatible_disable_native_android_rules
# @flag --noincompatible_disable_native_android_rules
# @flag --incompatible_disable_native_apple_binary_rule
# @flag --noincompatible_disable_native_apple_binary_rule
# @flag --incompatible_force_strict_header_check_from_starlark
# @flag --noincompatible_force_strict_header_check_from_starlark
# @flag --incompatible_legacy_local_fallback
# @flag --noincompatible_legacy_local_fallback
# @flag --incompatible_validate_top_level_header_inclusions
# @flag --noincompatible_validate_top_level_header_inclusions
# @option --sandbox_add_mount_pair <path>        a single path or a 'source:target' pair may be used multiple times
# @option --sandbox_block_path <string>          may be used multiple times
# @flag --sandbox_default_allow_network
# @flag --nosandbox_default_allow_network
# @flag --sandbox_fake_hostname
# @flag --nosandbox_fake_hostname
# @flag --sandbox_fake_username
# @flag --nosandbox_fake_username
# @option --sandbox_writable_path <string>       may be used multiple times
# @flag --strict_filesets
# @flag --nostrict_filesets
# @option --strict_proto_deps[off|warn|error|strict|default]
# @option --strict_public_imports[off|warn|error|strict|default]
# @flag --strict_system_includes
# @flag --nostrict_system_includes
# @option --target_environment[`_choice_target`] may be used multiple times <label>
# @option --apk_signing_method[v1|v2|v1_v2|v4]
# @flag --device_debug_entitlements
# @flag --nodevice_debug_entitlements
# @option --ios_signing_cert_name <string>
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_legacy_py_provider
# @flag --noincompatible_disallow_legacy_py_provider
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @flag --allow_analysis_failures
# @flag --noallow_analysis_failures
# @option --analysis_testing_deps_limit <integer>
# @flag --break_build_on_parallel_dex2oat_failure
# @flag --nobreak_build_on_parallel_dex2oat_failure
# @flag --check_tests_up_to_date
# @flag --nocheck_tests_up_to_date
# @flag --experimental_android_use_parallel_dex2oat
# @flag --noexperimental_android_use_parallel_dex2oat
# @option --flaky_test_attempts <value>          a positive integer, the string "default", or test_regex@attempts.
# @flag --ios_memleaks
# @flag --noios_memleaks
# @option --ios_simulator_device <string>
# @option --ios_simulator_version <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --local_test_jobs[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --runs_per_test <value>                a positive integer or test_regex@runs.
# @option --test_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --test_keep_going
# @flag --notest_keep_going
# @option --test_strategy <string>
# @option --test_timeout <value>                 a single integer or comma-separated list of 4 integers
# @option --test_tmpdir <path>
# @option --tvos_simulator_device <string>
# @option --tvos_simulator_version <value>       a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_simulator_device <string>
# @option --watchos_simulator_version <value>    a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --zip_undeclared_test_outputs
# @flag --nozip_undeclared_test_outputs
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --collapse_duplicate_defines
# @flag --nocollapse_duplicate_defines
# @flag --experimental_filter_library_jar_with_program_jar
# @flag --noexperimental_filter_library_jar_with_program_jar
# @flag --experimental_inmemory_dotd_files
# @flag --noexperimental_inmemory_dotd_files
# @flag --experimental_inmemory_jdeps_files
# @flag --noexperimental_inmemory_jdeps_files
# @flag --experimental_objc_include_scanning
# @flag --noexperimental_objc_include_scanning
# @flag --experimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --noexperimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --experimental_retain_test_configuration_across_testonly
# @flag --noexperimental_retain_test_configuration_across_testonly
# @flag --experimental_starlark_cc_import
# @flag --noexperimental_starlark_cc_import
# @flag --experimental_unsupported_and_brittle_include_scanning
# @flag --noexperimental_unsupported_and_brittle_include_scanning
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --incremental_dexing
# @flag --noincremental_dexing
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @flag --objc_use_dotd_pruning
# @flag --noobjc_use_dotd_pruning
# @flag --process_headers_in_dependencies
# @flag --noprocess_headers_in_dependencies
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --trim_test_configuration
# @flag --notrim_test_configuration
# @flag --use_singlejar_apkbuilder
# @flag --nouse_singlejar_apkbuilder
# @flag --announce
# @flag --noannounce
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --debug_spawn_scheduler
# @flag --nodebug_spawn_scheduler
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @flag --experimental_collect_local_sandbox_action_metrics
# @flag --noexperimental_collect_local_sandbox_action_metrics
# @flag --experimental_docker_verbose
# @flag --noexperimental_docker_verbose
# @flag --experimental_materialize_param_files_directly
# @flag --noexperimental_materialize_param_files_directly
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --explain <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @flag --materialize_param_files
# @flag --nomaterialize_param_files
# @option --max_config_changes_to_show <integer>
# @option --max_test_output_bytes <integer>
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --output_filter <value>                a valid Java regular expression
# @option --profile <path>
# @option --progress_report_interval <value>     an integer in 0-3600 range
# @option --remote_print_execution_messages[failure|success|all]
# @flag --sandbox_debug
# @flag --nosandbox_debug
# @option --show_result <integer>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option -s[true|pretty_print|false]
# @option --subcommands[true|pretty_print|false]
# @option --nosubcommands[true|pretty_print|false]
# @option --test_output[summary|errors|all|streamed]
# @option --test_summary[short|terse|detailed|none|testcase]
# @option --tool_tag <string>
# @option --toolchain_resolution_debug <path>    a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @flag --verbose_explanations
# @flag --noverbose_explanations
# @flag --verbose_failures
# @flag --noverbose_failures
# @option --aspects_parameters <value>           a 'name=value' assignment may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --flag_alias <value>                   a 'name=value' flag alias may be used multiple times
# @flag --incompatible_default_to_explicit_init_py
# @flag --noincompatible_default_to_explicit_init_py
# @flag --incompatible_py2_outputs_are_suffixed
# @flag --noincompatible_py2_outputs_are_suffixed
# @flag --incompatible_py3_is_default
# @flag --noincompatible_py3_is_default
# @flag --incompatible_use_python_toolchains
# @flag --noincompatible_use_python_toolchains
# @option --python_version[PY2|PY3]
# @option --target_pattern_file <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_cache_eviction_retries <integer>
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @flag --allow_analysis_cache_discard
# @flag --noallow_analysis_cache_discard
# @option --auto_output_filter[none|all|packages|subpackages]
# @flag --build_manual_tests
# @flag --nobuild_manual_tests
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --build_tag_filters <value>            comma-separated list of options
# @flag --build_tests_only
# @flag --nobuild_tests_only
# @option -t[auto|yes|no]                        <value>  a tri-state
# @option --cache_test_results[auto|yes|no]      <value>  a tri-state
# @option --nocache_test_results[auto|yes|no]    <value>  a tri-state
# @option --color[yes|no|auto]
# @option --combined_report[none|lcov]
# @flag --compile_one_dependency
# @flag --nocompile_one_dependency
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --discard_analysis_cache
# @flag --nodiscard_analysis_cache
# @option --disk_cache <path>
# @option --embed_label <value>                  a one-line string
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @option --execution_log_binary_file <path>
# @option --execution_log_json_file <path>
# @flag --execution_log_sort
# @flag --noexecution_log_sort
# @flag --expand_test_suites
# @flag --noexpand_test_suites
# @flag --experimental_cancel_concurrent_tests
# @flag --noexperimental_cancel_concurrent_tests
# @option --experimental_execution_log_file <path>
# @flag --experimental_execution_log_spawn_metrics
# @flag --noexperimental_execution_log_spawn_metrics
# @option --experimental_extra_action_filter <path>  a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @flag --experimental_extra_action_top_level_only
# @flag --noexperimental_extra_action_top_level_only
# @flag --experimental_fetch_all_coverage_outputs
# @flag --noexperimental_fetch_all_coverage_outputs
# @flag --experimental_generate_llvm_lcov
# @flag --noexperimental_generate_llvm_lcov
# @flag --experimental_j2objc_header_map
# @flag --noexperimental_j2objc_header_map
# @flag --experimental_j2objc_shorter_header_path
# @flag --noexperimental_j2objc_shorter_header_path
# @option --experimental_java_classpath[off|javabuilder|bazel]
# @flag --experimental_limit_android_lint_to_android_constrained_java
# @flag --noexperimental_limit_android_lint_to_android_constrained_java
# @flag --experimental_prioritize_local_actions
# @flag --noexperimental_prioritize_local_actions
# @flag --experimental_run_android_lint_on_java_rules
# @flag --noexperimental_run_android_lint_on_java_rules
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_spawn_scheduler
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @flag --explicit_java_test_deps
# @flag --noexplicit_java_test_deps
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @option --host_java_launcher[`_choice_target`] <label>
# @option --host_javacopt <string>               may be used multiple times
# @option --host_jvmopt <string>                 may be used multiple times
# @flag --ignore_unsupported_sandboxing
# @flag --noignore_unsupported_sandboxing
# @flag --incompatible_check_sharding_support
# @flag --noincompatible_check_sharding_support
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_dont_use_javasourceinfoprovider
# @flag --noincompatible_dont_use_javasourceinfoprovider
# @flag --incompatible_exclusive_test_sandboxed
# @flag --noincompatible_exclusive_test_sandboxed
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @flag --incompatible_strict_action_env
# @flag --noincompatible_strict_action_env
# @option --j2objc_translation_flags <value>     comma-separated list of options may be used multiple times
# @flag --java_debug
# @flag --java_deps
# @flag --nojava_deps
# @flag --java_header_compilation
# @flag --nojava_header_compilation
# @option --java_language_version <string>
# @option --java_launcher[`_choice_target`] <label>
# @option --java_runtime_version <string>
# @option --javacopt <string>                    may be used multiple times
# @option --jvmopt <string>                      may be used multiple times
# @option --legacy_main_dex_list_generator[`_choice_target`] <label>
# @option --local_cpu_resources <value>          an integer, or "HOST_CPUS", optionally followed by [-|*]<float>.
# @option --local_extra_resources <value>        a named float, 'name=value' may be used multiple times
# @option --local_ram_resources <value>          an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --local_termination_grace_seconds <integer>
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @option --plugin[`_choice_target`] may be used multiple times <label>
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @option --proguard_top[`_choice_target`] <label>
# @option --proto_compiler[`_choice_target`] <label>
# @option --proto_toolchain_for_cc[`_choice_target`] <label>
# @option --proto_toolchain_for_j2objc[`_choice_target`] <label>
# @option --proto_toolchain_for_java[`_choice_target`] <label>
# @option --proto_toolchain_for_javalite[`_choice_target`] <label>
# @option --protocopt <string>                   may be used multiple times
# @flag --runs_per_test_detects_flakes
# @flag --noruns_per_test_detects_flakes
# @option --shell_executable <path>
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --test_arg <string>                    may be used multiple times
# @option --test_filter <string>
# @option --test_lang_filters <value>            comma-separated list of options
# @option --test_result_expiration <integer>
# @flag --test_runner_fail_fast
# @flag --notest_runner_fail_fast
# @option --test_sharding_strategy[explicit|disabled]
# @option --test_size_filters[small|medium|large|enormous]  comma-separated list of values
# @option --test_tag_filters <value>             comma-separated list of options
# @option --test_timeout_filters[short|moderate|long|eternal]  comma-separated list of values
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --tool_java_language_version <string>
# @option --tool_java_runtime_version <string>
# @option --ui_actions_shown <integer>
# @flag --use_ijars
# @flag --nouse_ijars
# @flag --watchfs
# @flag --nowatchfs
# @option --workspace_status_command <path>
# @arg binary-target*[`_choice_run_target`] <binary target>
run() {
    :;
}
# }} bazel run

# {{ bazel shutdown
# @cmd Stops the bazel server.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @option --experimental_oom_more_eagerly_threshold <integer>
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @option --iff_heap_size_greater_than <integer>
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @option --experimental_repository_hash_file <string>
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --profile <path>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option --tool_tag <string>
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --experimental_downloader_config <string>
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --color[yes|no|auto]
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --ui_actions_shown <integer>
# @flag --watchfs
# @flag --nowatchfs
shutdown() {
    :;
}
# }} bazel shutdown

# {{ bazel sync
# @cmd Syncs all repositories specified in the workspace file
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --configure
# @flag --noconfigure
# @option --experimental_oom_more_eagerly_threshold <integer>
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --only <string>                        may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @option --experimental_repository_hash_file <string>
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --profile <path>
# @option --remote_print_execution_messages[failure|success|all]
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option --tool_tag <string>
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --color[yes|no|auto]
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @option --disk_cache <path>
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --ui_actions_shown <integer>
# @flag --watchfs
# @flag --nowatchfs
sync() {
    :;
}
# }} bazel sync

# {{ bazel test
# @cmd Builds and runs the specified test targets.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @flag --check_up_to_date
# @flag --nocheck_up_to_date
# @option --dynamic_local_execution_delay <integer>
# @option --dynamic_local_strategy <value>       a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --dynamic_remote_strategy <value>      a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --experimental_docker_image <string>
# @flag --experimental_docker_use_customized_images
# @flag --noexperimental_docker_use_customized_images
# @flag --experimental_dynamic_exclude_tools
# @flag --noexperimental_dynamic_exclude_tools
# @option --experimental_dynamic_local_load_factor <double>
# @option --experimental_dynamic_slow_remote_time <value>  An immutable length of time.
# @flag --experimental_enable_docker_sandbox
# @flag --noexperimental_enable_docker_sandbox
# @flag --experimental_inprocess_symlink_creation
# @flag --noexperimental_inprocess_symlink_creation
# @option --experimental_oom_more_eagerly_threshold <integer>
# @flag --experimental_persistent_javac
# @flag --experimental_remotable_source_manifests
# @flag --noexperimental_remotable_source_manifests
# @option --experimental_sandbox_async_tree_delete_idle_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --experimental_sandboxfs_path <string>
# @flag --experimental_split_coverage_postprocessing
# @flag --noexperimental_split_coverage_postprocessing
# @flag --experimental_split_xml_generation
# @flag --noexperimental_split_xml_generation
# @flag --experimental_strict_fileset_output
# @flag --noexperimental_strict_fileset_output
# @option --experimental_total_worker_memory_limit_mb <value>  an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --experimental_use_hermetic_linux_sandbox
# @flag --noexperimental_use_hermetic_linux_sandbox
# @option --experimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_sandboxfs[auto|yes|no] <value>  a tri-state
# @option --experimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --noexperimental_use_windows_sandbox[auto|yes|no] <value>  a tri-state
# @option --experimental_windows_sandbox_path <string>
# @flag --experimental_worker_as_resource
# @flag --noexperimental_worker_as_resource
# @flag --experimental_worker_cancellation
# @flag --noexperimental_worker_cancellation
# @flag --experimental_worker_multiplex
# @flag --noexperimental_worker_multiplex
# @flag --experimental_worker_multiplex_sandboxing
# @flag --noexperimental_worker_multiplex_sandboxing
# @flag --experimental_worker_strict_flagfiles
# @flag --noexperimental_worker_strict_flagfiles
# @option --genrule_strategy <value>             comma-separated list of options
# @option --high_priority_workers <string>       may be used multiple times
# @flag --incompatible_remote_dangling_symlinks
# @flag --noincompatible_remote_dangling_symlinks
# @flag --incompatible_remote_symlinks
# @flag --noincompatible_remote_symlinks
# @flag --incompatible_sandbox_hermetic_tmp
# @flag --noincompatible_sandbox_hermetic_tmp
# @flag --internal_spawn_scheduler
# @flag --nointernal_spawn_scheduler
# @option -j --jobs[auto|HOST_CPUS|HOST_RAM]     <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag -k
# @flag --keep_going
# @flag --nokeep_going
# @option --loading_phase_threads[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --modify_execution_info* <regex=[+-]key,regex=[+-]key,>
# @flag --persistent_android_dex_desugar
# @flag --persistent_android_resource_processor
# @flag --persistent_multiplex_android_dex_desugar
# @flag --persistent_multiplex_android_resource_processor
# @flag --persistent_multiplex_android_tools
# @flag --reuse_sandbox_directories
# @flag --noreuse_sandbox_directories
# @option --sandbox_base <string>
# @flag --sandbox_explicit_pseudoterminal
# @flag --nosandbox_explicit_pseudoterminal
# @option --sandbox_tmpfs_path <path>            an absolute path may be used multiple times
# @option --spawn_strategy <value>               comma-separated list of options
# @option --strategy <value>                     a '[name=]value1[,..,valueN]' assignment may be used multiple times
# @option --strategy_regexp <value>              a '<RegexFilter>=value[,value]' assignment may be used multiple times
# @option --worker_extra_flag <value>            a 'name=value' assignment may be used multiple times
# @option --worker_max_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --worker_max_multiplex_instances[auto|HOST_CPUS|HOST_RAM] <value>  [name=]value, where value is an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @flag --worker_quit_after_build
# @flag --noworker_quit_after_build
# @flag --worker_sandboxing
# @flag --noworker_sandboxing
# @flag --worker_verbose
# @flag --noworker_verbose
# @option --android_compiler <string>
# @option --android_crosstool_top[`_choice_target`] <label>
# @option --android_grte_top[`_choice_target`] <label>
# @option --android_manifest_merger[legacy|android|force_android]
# @option --android_platforms[`_choice_target`] <label>
# @option --android_sdk[`_choice_target`] <label>
# @option --apple_compiler <string>
# @option --apple_crosstool_top[`_choice_target`] <label>
# @option --apple_grte_top[`_choice_target`] <label>
# @option --cc_output_directory_tag <string>
# @option --compiler <string>
# @option --coverage_output_generator[`_choice_target`] <label>
# @option --coverage_report_generator[`_choice_target`] <label>
# @option --coverage_support[`_choice_target`] <label>
# @option --crosstool_top[`_choice_target`] <label>
# @option --custom_malloc[`_choice_target`] <label>
# @option --experimental_add_exec_constraints_to_targets <value>  a '<RegexFilter>=<label1>[,<label2>,...]' assignment may be used multiple times
# @flag --experimental_enable_objc_cc_deps
# @flag --noexperimental_enable_objc_cc_deps
# @flag --experimental_include_xcode_execution_requirements
# @flag --noexperimental_include_xcode_execution_requirements
# @flag --experimental_prefer_mutual_xcode
# @flag --noexperimental_prefer_mutual_xcode
# @option --extra_execution_platforms <value>    comma-separated list of options may be used multiple times
# @option --extra_toolchains <value>             comma-separated list of options may be used multiple times
# @option --grte_top[`_choice_target`] <label>
# @option --host_compiler <string>
# @option --host_crosstool_top[`_choice_target`] <label>
# @option --host_grte_top[`_choice_target`] <label>
# @option --host_platform[`_choice_target`] <label>
# @flag --incompatible_disable_expand_if_all_available_in_flag_set
# @flag --noincompatible_disable_expand_if_all_available_in_flag_set
# @flag --incompatible_disable_runtimes_filegroups
# @flag --noincompatible_disable_runtimes_filegroups
# @flag --incompatible_dont_emit_static_libgcc
# @flag --noincompatible_dont_emit_static_libgcc
# @flag --incompatible_dont_enable_host_nonhost_crosstool_features
# @flag --noincompatible_dont_enable_host_nonhost_crosstool_features
# @flag --incompatible_enable_android_toolchain_resolution
# @flag --noincompatible_enable_android_toolchain_resolution
# @flag --incompatible_enable_apple_toolchain_resolution
# @flag --noincompatible_enable_apple_toolchain_resolution
# @flag --incompatible_linkopts_in_user_link_flags
# @flag --noincompatible_linkopts_in_user_link_flags
# @flag --incompatible_make_thinlto_command_lines_standalone
# @flag --noincompatible_make_thinlto_command_lines_standalone
# @flag --incompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --noincompatible_remove_cpu_and_compiler_attributes_from_cc_toolchain
# @flag --incompatible_remove_legacy_whole_archive
# @flag --noincompatible_remove_legacy_whole_archive
# @flag --incompatible_require_ctx_in_configure_features
# @flag --noincompatible_require_ctx_in_configure_features
# @flag --interface_shared_objects
# @flag --nointerface_shared_objects
# @option --ios_sdk_version <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --macos_sdk_version <value>            a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --minimum_os_version <string>
# @option --platform_mappings <path>             a relative path
# @option --platforms[`_choice_target`] <label>
# @option --python2_path <string>
# @option --python3_path <string>
# @option --python_path <string>
# @option --python_top[`_choice_target`] <label>
# @option --target_platform_fallback[`_choice_target`] <label>
# @option --tvos_sdk_version <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_sdk_version <value>          a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xcode_version <string>
# @option --xcode_version_config[`_choice_target`] <label>
# @flag --apple_enable_auto_dsym_dbg
# @flag --noapple_enable_auto_dsym_dbg
# @flag --apple_generate_dsym
# @flag --noapple_generate_dsym
# @flag --build
# @flag --nobuild
# @flag --build_runfile_links
# @flag --nobuild_runfile_links
# @flag --build_runfile_manifests
# @flag --nobuild_runfile_manifests
# @flag --build_test_dwp
# @flag --nobuild_test_dwp
# @option --cc_proto_library_header_suffixes <value>  comma-separated list of options
# @option --cc_proto_library_source_suffixes <value>  comma-separated list of options
# @flag --experimental_proto_descriptor_sets_include_source_info
# @flag --noexperimental_proto_descriptor_sets_include_source_info
# @flag --experimental_proto_extra_actions
# @flag --noexperimental_proto_extra_actions
# @flag --experimental_run_validations
# @flag --noexperimental_run_validations
# @flag --experimental_save_feature_state
# @flag --noexperimental_save_feature_state
# @flag --experimental_use_validation_aspect
# @flag --noexperimental_use_validation_aspect
# @option --fission <value>                      a set of compilation modes
# @flag --incompatible_always_include_files_in_data
# @flag --noincompatible_always_include_files_in_data
# @flag --legacy_external_runfiles
# @flag --nolegacy_external_runfiles
# @flag --objc_generate_linkmap
# @flag --noobjc_generate_linkmap
# @option --output_groups <value>                comma-separated list of options may be used multiple times
# @flag --run_validations
# @flag --norun_validations
# @flag --save_temps
# @flag --nosave_temps
# @option --action_env <value>                   a 'name=value' assignment with an optional value part may be used multiple times
# @option --android_cpu <string>
# @flag --android_databinding_use_androidx
# @flag --noandroid_databinding_use_androidx
# @flag --android_databinding_use_v3_4_args
# @flag --noandroid_databinding_use_v3_4_args
# @option --android_dynamic_mode[off|default|fully]
# @option --android_manifest_merger_order[alphabetical|alphabetical_by_configuration|dependency]
# @flag --android_resource_shrinking
# @flag --noandroid_resource_shrinking
# @option --apple_bitcode <value>                'mode' or 'platform=mode', where 'mode' is none, embedded_markers or embedded, and 'platform' is ios, visionos, watchos, tvos, macos or catalyst may be used multiple times
# @option --aspects <value>                      comma-separated list of options may be used multiple times
# @option --bep_maximum_open_remote_upload_files <integer>
# @option --build_python_zip[auto|yes|no] <value>  a tri-state
# @option --nobuild_python_zip[auto|yes|no] <value>  a tri-state
# @option --catalyst_cpus <value>                comma-separated list of options may be used multiple times
# @flag --collect_code_coverage
# @flag --nocollect_code_coverage
# @option -c --compilation_mode[fastbuild|dbg|opt]
# @option --conlyopt <string>                    may be used multiple times
# @option --copt <string>                        may be used multiple times
# @option --cpu <string>
# @option --cs_fdo_absolute_path <string>
# @option --cs_fdo_instrument <string>
# @option --cs_fdo_profile[`_choice_target`] <label>
# @option --cxxopt <string>                      may be used multiple times
# @option --define <value>                       a 'name=value' assignment may be used multiple times
# @option --dynamic_mode[off|default|fully]
# @flag --enable_fdo_profile_absolute_path
# @flag --noenable_fdo_profile_absolute_path
# @option --enable_runfiles[auto|yes|no] <value>  a tri-state
# @option --noenable_runfiles[auto|yes|no] <value>  a tri-state
# @option --experimental_action_listener[`_choice_target`] may be used multiple times <label>
# @flag --experimental_android_compress_java_resources
# @flag --noexperimental_android_compress_java_resources
# @flag --experimental_android_databinding_v2
# @flag --noexperimental_android_databinding_v2
# @flag --experimental_android_resource_shrinking
# @flag --noexperimental_android_resource_shrinking
# @flag --experimental_android_rewrite_dexes_with_rex
# @flag --noexperimental_android_rewrite_dexes_with_rex
# @flag --experimental_collect_code_coverage_for_generated_files
# @flag --noexperimental_collect_code_coverage_for_generated_files
# @option --experimental_convenience_symlinks[normal|clean|ignore|log_only]
# @option --noexperimental_convenience_symlinks[normal|clean|ignore|log_only]
# @flag --experimental_convenience_symlinks_bep_event
# @flag --noexperimental_convenience_symlinks_bep_event
# @option --experimental_multi_cpu <value>       comma-separated list of options may be used multiple times
# @option --experimental_objc_fastbuild_options <value>  comma-separated list of options
# @flag --experimental_omitfp
# @flag --noexperimental_omitfp
# @flag --experimental_platform_in_output_dir
# @flag --noexperimental_platform_in_output_dir
# @flag --experimental_use_llvm_covmap
# @flag --noexperimental_use_llvm_covmap
# @option --fat_apk_cpu <value>                  comma-separated list of options
# @flag --fat_apk_hwasan
# @flag --nofat_apk_hwasan
# @option --fdo_instrument <string>
# @option --fdo_optimize <string>
# @option --fdo_prefetch_hints[`_choice_target`] <label>
# @option --fdo_profile[`_choice_target`] <label>
# @option --features <string>                    may be used multiple times
# @flag --force_pic
# @flag --noforce_pic
# @option --host_action_env <value>              a 'name=value' assignment with an optional value part may be used multiple times
# @option --host_compilation_mode[fastbuild|dbg|opt]
# @option --host_conlyopt <string>               may be used multiple times
# @option --host_copt <string>                   may be used multiple times
# @option --host_cpu <string>
# @option --host_cxxopt <string>                 may be used multiple times
# @option --host_features <string>               may be used multiple times
# @option --host_force_python[PY2|PY3]
# @option --host_linkopt <string>                may be used multiple times
# @option --host_macos_minimum_os <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --host_per_file_copt <path>            a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --host_swiftcopt <string>              may be used multiple times
# @flag --incompatible_avoid_conflict_dlls
# @flag --noincompatible_avoid_conflict_dlls
# @flag --incompatible_merge_genfiles_directory
# @flag --noincompatible_merge_genfiles_directory
# @flag --incompatible_use_host_features
# @flag --noincompatible_use_host_features
# @flag --incompatible_use_platforms_repo_for_constraints
# @flag --noincompatible_use_platforms_repo_for_constraints
# @flag --instrument_test_targets
# @flag --noinstrument_test_targets
# @option --instrumentation_filter <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ios_minimum_os <value>               a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --ios_multi_cpus <value>               comma-separated list of options may be used multiple times
# @flag --legacy_whole_archive
# @flag --nolegacy_whole_archive
# @option --linkopt <string>                     may be used multiple times
# @option --ltobackendopt <string>               may be used multiple times
# @option --ltoindexopt <string>                 may be used multiple times
# @option --macos_cpus <value>                   comma-separated list of options may be used multiple times
# @option --macos_minimum_os <value>             a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --objc_debug_with_GLIBCXX
# @flag --noobjc_debug_with_GLIBCXX
# @flag --objc_enable_binary_stripping
# @flag --noobjc_enable_binary_stripping
# @option --objccopt <string>                    may be used multiple times
# @option --per_file_copt <path>                 a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --per_file_ltobackendopt <path>        a comma-separated list of regex expressions with prefix '-' specifying excluded paths followed by an @ and a comma separated list of options may be used multiple times
# @option --platform_suffix <string>
# @option --propeller_optimize[`_choice_target`] <label>
# @option --propeller_optimize_absolute_cc_profile <string>
# @option --propeller_optimize_absolute_ld_profile <string>
# @flag --remote_download_minimal
# @option --remote_download_outputs[all|minimal|toplevel]
# @option --remote_download_symlink_template <string>
# @flag --remote_download_toplevel
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @option --run_under <value>                    a prefix in front of command
# @flag --share_native_deps
# @flag --noshare_native_deps
# @flag --stamp
# @flag --nostamp
# @option --strip[always|sometimes|never]
# @option --stripopt <string>                    may be used multiple times
# @option --swiftcopt <string>                   may be used multiple times
# @option --symlink_prefix <string>
# @option --tvos_cpus <value>                    comma-separated list of options may be used multiple times
# @option --tvos_minimum_os <value>              a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --visionos_cpus <value>                comma-separated list of options may be used multiple times
# @option --watchos_cpus <value>                 comma-separated list of options may be used multiple times
# @option --watchos_minimum_os <value>           a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --xbinary_fdo[`_choice_target`] <label>
# @option --auto_cpu_environment_group[`_choice_target`] <label>
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @flag --check_licenses
# @flag --nocheck_licenses
# @flag --check_visibility
# @flag --nocheck_visibility
# @flag --desugar_for_android
# @flag --nodesugar_for_android
# @flag --desugar_java8_libs
# @flag --nodesugar_java8_libs
# @flag --enforce_constraints
# @flag --noenforce_constraints
# @flag --experimental_allow_android_library_deps_without_srcs
# @flag --noexperimental_allow_android_library_deps_without_srcs
# @flag --experimental_check_desugar_deps
# @flag --noexperimental_check_desugar_deps
# @flag --experimental_docker_privileged
# @flag --noexperimental_docker_privileged
# @option --experimental_import_deps_checking[off|warning|error]
# @option --experimental_repository_hash_file <string>
# @flag --experimental_sandboxfs_map_symlink_targets
# @flag --noexperimental_sandboxfs_map_symlink_targets
# @option --experimental_strict_java_deps[off|warn|error|strict|default]
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --incompatible_check_testonly_for_output_files
# @flag --noincompatible_check_testonly_for_output_files
# @flag --incompatible_disable_native_android_rules
# @flag --noincompatible_disable_native_android_rules
# @flag --incompatible_disable_native_apple_binary_rule
# @flag --noincompatible_disable_native_apple_binary_rule
# @flag --incompatible_force_strict_header_check_from_starlark
# @flag --noincompatible_force_strict_header_check_from_starlark
# @flag --incompatible_legacy_local_fallback
# @flag --noincompatible_legacy_local_fallback
# @flag --incompatible_validate_top_level_header_inclusions
# @flag --noincompatible_validate_top_level_header_inclusions
# @option --sandbox_add_mount_pair <path>        a single path or a 'source:target' pair may be used multiple times
# @option --sandbox_block_path <string>          may be used multiple times
# @flag --sandbox_default_allow_network
# @flag --nosandbox_default_allow_network
# @flag --sandbox_fake_hostname
# @flag --nosandbox_fake_hostname
# @flag --sandbox_fake_username
# @flag --nosandbox_fake_username
# @option --sandbox_writable_path <string>       may be used multiple times
# @flag --strict_filesets
# @flag --nostrict_filesets
# @option --strict_proto_deps[off|warn|error|strict|default]
# @option --strict_public_imports[off|warn|error|strict|default]
# @flag --strict_system_includes
# @flag --nostrict_system_includes
# @option --target_environment[`_choice_target`] may be used multiple times <label>
# @option --apk_signing_method[v1|v2|v1_v2|v4]
# @flag --device_debug_entitlements
# @flag --nodevice_debug_entitlements
# @option --ios_signing_cert_name <string>
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_config_setting_private_default_visibility
# @flag --noincompatible_config_setting_private_default_visibility
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_legacy_py_provider
# @flag --noincompatible_disallow_legacy_py_provider
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_enforce_config_setting_visibility
# @flag --noincompatible_enforce_config_setting_visibility
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @flag --allow_analysis_failures
# @flag --noallow_analysis_failures
# @option --analysis_testing_deps_limit <integer>
# @flag --break_build_on_parallel_dex2oat_failure
# @flag --nobreak_build_on_parallel_dex2oat_failure
# @flag --check_tests_up_to_date
# @flag --nocheck_tests_up_to_date
# @flag --experimental_android_use_parallel_dex2oat
# @flag --noexperimental_android_use_parallel_dex2oat
# @option --flaky_test_attempts <value>          a positive integer, the string "default", or test_regex@attempts.
# @flag --ios_memleaks
# @flag --noios_memleaks
# @option --ios_simulator_device <string>
# @option --ios_simulator_version <value>        a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --local_test_jobs[auto|HOST_CPUS|HOST_RAM] <value>  an integer, or a keyword, optionally followed by an operation ([-|*]<float>) eg.
# @option --runs_per_test <value>                a positive integer or test_regex@runs.
# @option --test_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --test_keep_going
# @flag --notest_keep_going
# @option --test_strategy <string>
# @option --test_timeout <value>                 a single integer or comma-separated list of 4 integers
# @option --test_tmpdir <path>
# @option --tvos_simulator_device <string>
# @option --tvos_simulator_version <value>       a dotted version (for example '2.3' or '3.3alpha2.4')
# @option --watchos_simulator_device <string>
# @option --watchos_simulator_version <value>    a dotted version (for example '2.3' or '3.3alpha2.4')
# @flag --zip_undeclared_test_outputs
# @flag --nozip_undeclared_test_outputs
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --collapse_duplicate_defines
# @flag --nocollapse_duplicate_defines
# @flag --experimental_filter_library_jar_with_program_jar
# @flag --noexperimental_filter_library_jar_with_program_jar
# @flag --experimental_inmemory_dotd_files
# @flag --noexperimental_inmemory_dotd_files
# @flag --experimental_inmemory_jdeps_files
# @flag --noexperimental_inmemory_jdeps_files
# @flag --experimental_objc_include_scanning
# @flag --noexperimental_objc_include_scanning
# @flag --experimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --noexperimental_parse_headers_skipped_if_corresponding_srcs_found
# @flag --experimental_retain_test_configuration_across_testonly
# @flag --noexperimental_retain_test_configuration_across_testonly
# @flag --experimental_starlark_cc_import
# @flag --noexperimental_starlark_cc_import
# @flag --experimental_unsupported_and_brittle_include_scanning
# @flag --noexperimental_unsupported_and_brittle_include_scanning
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --incremental_dexing
# @flag --noincremental_dexing
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @flag --objc_use_dotd_pruning
# @flag --noobjc_use_dotd_pruning
# @flag --process_headers_in_dependencies
# @flag --noprocess_headers_in_dependencies
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --trim_test_configuration
# @flag --notrim_test_configuration
# @flag --use_singlejar_apkbuilder
# @flag --nouse_singlejar_apkbuilder
# @flag --announce
# @flag --noannounce
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --debug_spawn_scheduler
# @flag --nodebug_spawn_scheduler
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @flag --experimental_collect_local_sandbox_action_metrics
# @flag --noexperimental_collect_local_sandbox_action_metrics
# @flag --experimental_docker_verbose
# @flag --noexperimental_docker_verbose
# @flag --experimental_materialize_param_files_directly
# @flag --noexperimental_materialize_param_files_directly
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @option --experimental_repository_resolved_file <string>
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --explain <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @flag --materialize_param_files
# @flag --nomaterialize_param_files
# @option --max_config_changes_to_show <integer>
# @option --max_test_output_bytes <integer>
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --output_filter <value>                a valid Java regular expression
# @flag --print_relative_test_log_paths
# @flag --noprint_relative_test_log_paths
# @option --profile <path>
# @option --progress_report_interval <value>     an integer in 0-3600 range
# @option --remote_print_execution_messages[failure|success|all]
# @flag --sandbox_debug
# @flag --nosandbox_debug
# @option --show_result <integer>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option -s[true|pretty_print|false]
# @option --subcommands[true|pretty_print|false]
# @option --nosubcommands[true|pretty_print|false]
# @option --test_output[summary|errors|all|streamed]
# @option --test_summary[short|terse|detailed|none|testcase]
# @flag --test_verbose_timeout_warnings
# @flag --notest_verbose_timeout_warnings
# @option --tool_tag <string>
# @option --toolchain_resolution_debug <path>    a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @flag --verbose_explanations
# @flag --noverbose_explanations
# @flag --verbose_failures
# @flag --noverbose_failures
# @flag --verbose_test_summary
# @flag --noverbose_test_summary
# @option --aspects_parameters <value>           a 'name=value' assignment may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --flag_alias <value>                   a 'name=value' flag alias may be used multiple times
# @flag --incompatible_default_to_explicit_init_py
# @flag --noincompatible_default_to_explicit_init_py
# @flag --incompatible_py2_outputs_are_suffixed
# @flag --noincompatible_py2_outputs_are_suffixed
# @flag --incompatible_py3_is_default
# @flag --noincompatible_py3_is_default
# @flag --incompatible_use_python_toolchains
# @flag --noincompatible_use_python_toolchains
# @option --python_version[PY2|PY3]
# @option --target_pattern_file <string>
# @option --experimental_circuit_breaker_strategy <failure>
# @option --experimental_downloader_config <string>
# @flag --experimental_guard_against_concurrent_changes
# @flag --noexperimental_guard_against_concurrent_changes
# @option --experimental_remote_build_event_upload[all|minimal]
# @flag --experimental_remote_cache_async
# @flag --noexperimental_remote_cache_async
# @flag --experimental_remote_cache_compression
# @flag --noexperimental_remote_cache_compression
# @option --experimental_remote_cache_eviction_retries <integer>
# @option --experimental_remote_capture_corrupted_outputs <path>
# @flag --experimental_remote_discard_merkle_trees
# @flag --noexperimental_remote_discard_merkle_trees
# @option --experimental_remote_downloader <string>
# @flag --experimental_remote_downloader_local_fallback
# @flag --noexperimental_remote_downloader_local_fallback
# @flag --experimental_remote_execution_keepalive
# @flag --noexperimental_remote_execution_keepalive
# @option --experimental_remote_failure_rate_threshold <value>  an integer in 0-100 range
# @option --experimental_remote_failure_window_interval <value>  An immutable length of time.
# @flag --experimental_remote_mark_tool_inputs
# @flag --noexperimental_remote_mark_tool_inputs
# @flag --experimental_remote_merkle_tree_cache
# @flag --noexperimental_remote_merkle_tree_cache
# @option --experimental_remote_merkle_tree_cache_size <value>  a long integer
# @flag --experimental_remote_require_cached
# @flag --noexperimental_remote_require_cached
# @flag --incompatible_remote_build_event_upload_respect_no_cache
# @flag --noincompatible_remote_build_event_upload_respect_no_cache
# @flag --incompatible_remote_downloader_send_all_headers
# @flag --noincompatible_remote_downloader_send_all_headers
# @flag --incompatible_remote_output_paths_relative_to_input_root
# @flag --noincompatible_remote_output_paths_relative_to_input_root
# @flag --incompatible_remote_results_ignore_disk
# @flag --noincompatible_remote_results_ignore_disk
# @flag --incompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --noincompatible_remote_use_new_exit_code_for_lost_inputs
# @flag --remote_accept_cached
# @flag --noremote_accept_cached
# @option --remote_bytestream_uri_prefix <string>
# @option --remote_cache <string>
# @option --remote_cache_header <value>          a 'name=value' assignment may be used multiple times
# @option --remote_default_exec_properties <value>  a 'name=value' assignment may be used multiple times
# @option --remote_default_platform_properties <string>
# @option --remote_downloader_header <value>     a 'name=value' assignment may be used multiple times
# @option --remote_exec_header <value>           a 'name=value' assignment may be used multiple times
# @option --remote_execution_priority <integer>
# @option --remote_executor <string>
# @option --remote_grpc_log <path>
# @option --remote_header <value>                a 'name=value' assignment may be used multiple times
# @option --remote_instance_name <string>
# @flag --remote_local_fallback
# @flag --noremote_local_fallback
# @option --remote_local_fallback_strategy <string>
# @option --remote_max_connections <integer>
# @option --remote_proxy <string>
# @option --remote_result_cache_priority <integer>
# @option --remote_retries <integer>
# @option --remote_retry_max_delay <value>       An immutable length of time.
# @option --remote_timeout <value>               An immutable length of time.
# @flag --remote_upload_local_results
# @flag --noremote_upload_local_results
# @flag --remote_verify_downloads
# @flag --noremote_verify_downloads
# @flag --allow_analysis_cache_discard
# @flag --noallow_analysis_cache_discard
# @option --auto_output_filter[none|all|packages|subpackages]
# @flag --build_manual_tests
# @flag --nobuild_manual_tests
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --build_tag_filters <value>            comma-separated list of options
# @flag --build_tests_only
# @flag --nobuild_tests_only
# @option -t[auto|yes|no]                        <value>  a tri-state
# @option --cache_test_results[auto|yes|no]      <value>  a tri-state
# @option --nocache_test_results[auto|yes|no]    <value>  a tri-state
# @option --color[yes|no|auto]
# @option --combined_report[none|lcov]
# @flag --compile_one_dependency
# @flag --nocompile_one_dependency
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @option --deleted_packages <value>             comma-separated list of package names
# @flag --discard_analysis_cache
# @flag --nodiscard_analysis_cache
# @option --disk_cache <path>
# @option --embed_label <value>                  a one-line string
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @option --execution_log_binary_file <path>
# @option --execution_log_json_file <path>
# @flag --execution_log_sort
# @flag --noexecution_log_sort
# @flag --expand_test_suites
# @flag --noexpand_test_suites
# @flag --experimental_cancel_concurrent_tests
# @flag --noexperimental_cancel_concurrent_tests
# @option --experimental_execution_log_file <path>
# @flag --experimental_execution_log_spawn_metrics
# @flag --noexperimental_execution_log_spawn_metrics
# @option --experimental_extra_action_filter <path>  a comma-separated list of regex expressions with prefix '-' specifying excluded paths
# @flag --experimental_extra_action_top_level_only
# @flag --noexperimental_extra_action_top_level_only
# @flag --experimental_fetch_all_coverage_outputs
# @flag --noexperimental_fetch_all_coverage_outputs
# @flag --experimental_generate_llvm_lcov
# @flag --noexperimental_generate_llvm_lcov
# @flag --experimental_j2objc_header_map
# @flag --noexperimental_j2objc_header_map
# @flag --experimental_j2objc_shorter_header_path
# @flag --noexperimental_j2objc_shorter_header_path
# @option --experimental_java_classpath[off|javabuilder|bazel]
# @flag --experimental_limit_android_lint_to_android_constrained_java
# @flag --noexperimental_limit_android_lint_to_android_constrained_java
# @flag --experimental_prioritize_local_actions
# @flag --noexperimental_prioritize_local_actions
# @flag --experimental_run_android_lint_on_java_rules
# @flag --noexperimental_run_android_lint_on_java_rules
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_spawn_scheduler
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @flag --explicit_java_test_deps
# @flag --noexplicit_java_test_deps
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @option --host_java_launcher[`_choice_target`] <label>
# @option --host_javacopt <string>               may be used multiple times
# @option --host_jvmopt <string>                 may be used multiple times
# @flag --ignore_unsupported_sandboxing
# @flag --noignore_unsupported_sandboxing
# @flag --incompatible_check_sharding_support
# @flag --noincompatible_check_sharding_support
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_dont_use_javasourceinfoprovider
# @flag --noincompatible_dont_use_javasourceinfoprovider
# @flag --incompatible_exclusive_test_sandboxed
# @flag --noincompatible_exclusive_test_sandboxed
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @flag --incompatible_strict_action_env
# @flag --noincompatible_strict_action_env
# @option --j2objc_translation_flags <value>     comma-separated list of options may be used multiple times
# @flag --java_debug
# @flag --java_deps
# @flag --nojava_deps
# @flag --java_header_compilation
# @flag --nojava_header_compilation
# @option --java_language_version <string>
# @option --java_launcher[`_choice_target`] <label>
# @option --java_runtime_version <string>
# @option --javacopt <string>                    may be used multiple times
# @option --jvmopt <string>                      may be used multiple times
# @option --legacy_main_dex_list_generator[`_choice_target`] <label>
# @option --local_cpu_resources <value>          an integer, or "HOST_CPUS", optionally followed by [-|*]<float>.
# @option --local_extra_resources <value>        a named float, 'name=value' may be used multiple times
# @option --local_ram_resources <value>          an integer, or "HOST_RAM", optionally followed by [-|*]<float>.
# @option --local_termination_grace_seconds <integer>
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @option --package_path <value>                 colon-separated list of options
# @option --plugin[`_choice_target`] may be used multiple times <label>
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @option --proguard_top[`_choice_target`] <label>
# @option --proto_compiler[`_choice_target`] <label>
# @option --proto_toolchain_for_cc[`_choice_target`] <label>
# @option --proto_toolchain_for_j2objc[`_choice_target`] <label>
# @option --proto_toolchain_for_java[`_choice_target`] <label>
# @option --proto_toolchain_for_javalite[`_choice_target`] <label>
# @option --protocopt <string>                   may be used multiple times
# @flag --runs_per_test_detects_flakes
# @flag --noruns_per_test_detects_flakes
# @option --shell_executable <path>
# @flag --show_loading_progress
# @flag --noshow_loading_progress
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --test_arg <string>                    may be used multiple times
# @option --test_filter <string>
# @option --test_lang_filters <value>            comma-separated list of options
# @option --test_result_expiration <integer>
# @flag --test_runner_fail_fast
# @flag --notest_runner_fail_fast
# @option --test_sharding_strategy[explicit|disabled]
# @option --test_size_filters[small|medium|large|enormous]  comma-separated list of values
# @option --test_tag_filters <value>             comma-separated list of options
# @option --test_timeout_filters[short|moderate|long|eternal]  comma-separated list of values
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --tool_java_language_version <string>
# @option --tool_java_runtime_version <string>
# @option --ui_actions_shown <integer>
# @flag --use_ijars
# @flag --nouse_ijars
# @flag --watchfs
# @flag --nowatchfs
# @option --workspace_status_command <path>
# @arg test-targets*[`_choice_test_target`]
test() {
    :;
}
# }} bazel test

# {{ bazel version
# @cmd Prints version information for bazel.
# @option --distdir <path>                       may be used multiple times
# @flag --experimental_repository_cache_hardlinks
# @flag --noexperimental_repository_cache_hardlinks
# @flag --experimental_repository_cache_urls_as_default_canonical_id
# @flag --noexperimental_repository_cache_urls_as_default_canonical_id
# @flag --experimental_repository_disable_download
# @flag --noexperimental_repository_disable_download
# @option --experimental_repository_downloader_retries <integer>
# @option --experimental_scale_timeouts <double>
# @option --http_timeout_scaling <double>
# @option --repository_cache <path>
# @option --experimental_oom_more_eagerly_threshold <integer>
# @option --experimental_ui_max_stdouterr_bytes <value>  an integer in (-1)-1073741819 range
# @flag --gnu_format
# @flag --nognu_format
# @option --repo_env <value>                     a 'name=value' assignment with an optional value part may be used multiple times
# @flag --check_bzl_visibility
# @flag --nocheck_bzl_visibility
# @option --experimental_repository_hash_file <string>
# @option --experimental_verify_repository_rules <string>  may be used multiple times
# @flag --enable_bzlmod
# @flag --noenable_bzlmod
# @flag --experimental_action_resource_set
# @flag --noexperimental_action_resource_set
# @flag --experimental_allow_tags_propagation
# @flag --noexperimental_allow_tags_propagation
# @flag --experimental_allow_top_level_aspects_parameters
# @flag --noexperimental_allow_top_level_aspects_parameters
# @flag --experimental_analysis_test_call
# @flag --noexperimental_analysis_test_call
# @flag --experimental_bzl_visibility
# @flag --noexperimental_bzl_visibility
# @flag --experimental_cc_shared_library
# @flag --noexperimental_cc_shared_library
# @flag --experimental_disable_external_package
# @flag --noexperimental_disable_external_package
# @flag --experimental_enable_android_migration_apis
# @flag --noexperimental_enable_android_migration_apis
# @flag --experimental_get_fixed_configured_action_env
# @flag --noexperimental_get_fixed_configured_action_env
# @flag --experimental_google_legacy_api
# @flag --noexperimental_google_legacy_api
# @flag --experimental_isolated_extension_usages
# @flag --noexperimental_isolated_extension_usages
# @flag --experimental_lazy_template_expansion
# @flag --noexperimental_lazy_template_expansion
# @flag --experimental_platforms_api
# @flag --noexperimental_platforms_api
# @flag --experimental_repo_remote_exec
# @flag --noexperimental_repo_remote_exec
# @flag --experimental_sibling_repository_layout
# @flag --noexperimental_sibling_repository_layout
# @flag --incompatible_always_check_depset_elements
# @flag --noincompatible_always_check_depset_elements
# @flag --incompatible_depset_for_libraries_to_link_getter
# @flag --noincompatible_depset_for_libraries_to_link_getter
# @flag --incompatible_disable_objc_library_transition
# @flag --noincompatible_disable_objc_library_transition
# @flag --incompatible_disable_starlark_host_transitions
# @flag --noincompatible_disable_starlark_host_transitions
# @flag --incompatible_disable_target_provider_fields
# @flag --noincompatible_disable_target_provider_fields
# @flag --incompatible_disallow_empty_glob
# @flag --noincompatible_disallow_empty_glob
# @flag --incompatible_disallow_legacy_javainfo
# @flag --noincompatible_disallow_legacy_javainfo
# @flag --incompatible_disallow_struct_provider_syntax
# @flag --noincompatible_disallow_struct_provider_syntax
# @flag --incompatible_existing_rules_immutable_view
# @flag --noincompatible_existing_rules_immutable_view
# @flag --incompatible_fail_on_unknown_attributes
# @flag --noincompatible_fail_on_unknown_attributes
# @flag --incompatible_fix_package_group_reporoot_syntax
# @flag --noincompatible_fix_package_group_reporoot_syntax
# @flag --incompatible_java_common_parameters
# @flag --noincompatible_java_common_parameters
# @flag --incompatible_merge_fixed_and_default_shell_env
# @flag --noincompatible_merge_fixed_and_default_shell_env
# @flag --incompatible_new_actions_api
# @flag --noincompatible_new_actions_api
# @flag --incompatible_no_attr_license
# @flag --noincompatible_no_attr_license
# @flag --incompatible_no_implicit_file_export
# @flag --noincompatible_no_implicit_file_export
# @flag --incompatible_no_rule_outputs_param
# @flag --noincompatible_no_rule_outputs_param
# @flag --incompatible_package_group_has_public_syntax
# @flag --noincompatible_package_group_has_public_syntax
# @flag --incompatible_require_linker_input_cc_api
# @flag --noincompatible_require_linker_input_cc_api
# @flag --incompatible_run_shell_command_string
# @flag --noincompatible_run_shell_command_string
# @flag --incompatible_stop_exporting_language_modules
# @flag --noincompatible_stop_exporting_language_modules
# @flag --incompatible_struct_has_no_methods
# @flag --noincompatible_struct_has_no_methods
# @flag --incompatible_top_level_aspects_require_providers
# @flag --noincompatible_top_level_aspects_require_providers
# @flag --incompatible_unambiguous_label_stringification
# @flag --noincompatible_unambiguous_label_stringification
# @flag --incompatible_use_cc_configure_from_rules_cc
# @flag --noincompatible_use_cc_configure_from_rules_cc
# @flag --incompatible_visibility_private_attributes_at_definition
# @flag --noincompatible_visibility_private_attributes_at_definition
# @option --max_computation_steps <value>        a long integer
# @option --nested_set_depth_limit <integer>
# @option --allow_yanked_versions <string>       may be used multiple times
# @option --check_bazel_compatibility[error|warning|off]
# @option --check_direct_dependencies[off|warning|error]
# @flag --ignore_dev_dependency
# @flag --noignore_dev_dependency
# @option --lockfile_mode[off|update|error]
# @option --override_module <path>               an equals-separated mapping of module name to path may be used multiple times
# @option --registry <string>                    may be used multiple times
# @flag --incompatible_do_not_split_linking_cmdline
# @flag --noincompatible_do_not_split_linking_cmdline
# @flag --keep_state_after_build
# @flag --nokeep_state_after_build
# @option --skyframe_high_water_mark_threshold <integer>
# @flag --track_incremental_state
# @flag --notrack_incremental_state
# @flag --announce_rc
# @flag --noannounce_rc
# @flag --attempt_to_print_relative_paths
# @flag --noattempt_to_print_relative_paths
# @option --bes_backend <string>
# @flag --bes_check_preceding_lifecycle_events
# @flag --nobes_check_preceding_lifecycle_events
# @option --bes_header <value>                   a 'name=value' assignment may be used multiple times
# @option --bes_instance_name <string>
# @option --bes_keywords <value>                 comma-separated list of options may be used multiple times
# @flag --bes_lifecycle_events
# @flag --nobes_lifecycle_events
# @option --bes_oom_finish_upload_timeout <value>  An immutable length of time.
# @option --bes_outerr_buffer_size <integer>
# @option --bes_outerr_chunk_size <integer>
# @option --bes_proxy <string>
# @option --bes_results_url <string>
# @option --bes_timeout <value>                  An immutable length of time.
# @option --build_event_binary_file <string>
# @flag --build_event_binary_file_path_conversion
# @flag --nobuild_event_binary_file_path_conversion
# @option --build_event_json_file <string>
# @flag --build_event_json_file_path_conversion
# @flag --nobuild_event_json_file_path_conversion
# @option --build_event_max_named_set_of_file_entries <integer>
# @flag --build_event_publish_all_actions
# @flag --nobuild_event_publish_all_actions
# @option --build_event_text_file <string>
# @flag --build_event_text_file_path_conversion
# @flag --nobuild_event_text_file_path_conversion
# @flag --experimental_announce_profile_path
# @flag --noexperimental_announce_profile_path
# @flag --experimental_bep_target_summary
# @flag --noexperimental_bep_target_summary
# @flag --experimental_build_event_expand_filesets
# @flag --noexperimental_build_event_expand_filesets
# @flag --experimental_build_event_fully_resolve_fileset_symlinks
# @flag --noexperimental_build_event_fully_resolve_fileset_symlinks
# @option --experimental_build_event_upload_max_retries <integer>
# @option --experimental_build_event_upload_retry_minimum_delay <value>  An immutable length of time.
# @option --experimental_build_event_upload_strategy <string>
# @option --experimental_profile_additional_tasks[phase|action|action_check|action_lock|action_release|action_update|action_complete|bzlmod|info|create_package|remote_execution|local_execution|scanner|local_parse|upload_time|process_time|remote_queue|remote_setup|fetch|vfs_stat|vfs_dir|vfs_readlink|vfs_md5|vfs_xattr|vfs_delete|vfs_open|vfs_read|vfs_write|vfs_glob|vfs_vmfs_stat|vfs_vmfs_dir|vfs_vmfs_read|wait|thread_name|thread_sort_index|skyframe_eval|skyfunction|critical_path|critical_path_component|handle_gc_notification|action_counts|local_cpu_usage|system_cpu_usage|local_memory_usage|system_memory_usage|system_network_up_usage|system_network_down_usage|workers_memory_usage|system_load_average|starlark_parser|starlark_user_fn|starlark_builtin_fn|starlark_user_compiled_fn|starlark_repository_fn|action_fs_staging|remote_cache_check|remote_download|remote_network|filesystem_traversal|worker_execution|worker_setup|worker_borrow|worker_working|worker_copying_outputs|credential_helper|unknown]  may be used multiple times
# @flag --experimental_profile_include_primary_output
# @flag --noexperimental_profile_include_primary_output
# @flag --experimental_profile_include_target_label
# @flag --noexperimental_profile_include_target_label
# @flag --experimental_record_metrics_for_all_mnemonics
# @flag --noexperimental_record_metrics_for_all_mnemonics
# @flag --experimental_stream_log_file_uploads
# @flag --noexperimental_stream_log_file_uploads
# @option --experimental_workspace_rules_log_file <path>
# @option --generate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @option --nogenerate_json_trace_profile[auto|yes|no] <value>  a tri-state
# @flag --heap_dump_on_oom
# @flag --noheap_dump_on_oom
# @flag --legacy_important_outputs
# @flag --nolegacy_important_outputs
# @option --logging <value>                      0 <= an integer <= 6
# @option --memory_profile <path>
# @option --memory_profile_stable_heap_parameters <value>  integers, separated by a comma expected in pairs
# @option --profile <path>
# @flag --slim_profile
# @flag --noslim_profile
# @option --starlark_cpu_profile <string>
# @option --tool_tag <string>
# @option --ui_event_filters <value>             Convert list of comma separated event kind to list of filters may be used multiple times
# @option --experimental_resolved_file_instead_of_workspace <string>
# @option --experimental_downloader_config <string>
# @option --build_metadata <value>               a 'name=value' assignment may be used multiple times
# @option --color[yes|no|auto]
# @option --config <string>                      may be used multiple times
# @option --credential_helper <path>             Path to a credential helper.
# @option --credential_helper_cache_duration <value>  An immutable length of time.
# @option --credential_helper_timeout <value>    An immutable length of time.
# @option --curses[yes|no|auto]
# @flag --enable_platform_specific_config
# @flag --noenable_platform_specific_config
# @flag --experimental_skymeld_ui
# @flag --noexperimental_skymeld_ui
# @flag --experimental_windows_watchfs
# @flag --noexperimental_windows_watchfs
# @option --google_auth_scopes <value>           comma-separated list of options
# @option --google_credentials <string>
# @flag --google_default_credentials
# @flag --nogoogle_default_credentials
# @option --grpc_keepalive_time <value>          An immutable length of time.
# @option --grpc_keepalive_timeout <value>       An immutable length of time.
# @flag --incompatible_disallow_symlink_file_to_dir
# @flag --noincompatible_disallow_symlink_file_to_dir
# @flag --incompatible_remove_rule_name_parameter
# @flag --noincompatible_remove_rule_name_parameter
# @option --override_repository <path>           an equals-separated mapping of repository name to path may be used multiple times
# @flag --progress_in_terminal_title
# @flag --noprogress_in_terminal_title
# @flag --show_progress
# @flag --noshow_progress
# @option --show_progress_rate_limit <double>
# @flag --show_timestamps
# @flag --noshow_timestamps
# @option --tls_certificate <string>
# @option --tls_client_certificate <string>
# @option --tls_client_key <string>
# @option --ui_actions_shown <integer>
# @flag --watchfs
# @flag --nowatchfs
version() {
    :;
}
# }} bazel version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_target() {
    _helper_find_target
}

_choice_test_target() {
    _helper_find_target test
}

_choice_info_key() {
    bazel help info-keys | sed 's/ \+/\t/'
}

_choice_run_target() {
    _helper_find_target run
}

_helper_find_package() {
    find "$workspace_dir" -name BUILD* | \
    sed \
        -e 's|/BUILD\(\.bazel\)\?$|:\x00|' \
        -e "s|^$workspace_dir:|//:|" \
        -e "s|^$workspace_dir|/|" \

}

_helper_find_rules_in_package() {
    local package_name="${ARGC_CWORD%%:*}"
    bazel --output_base=/tmp/bazel-completion-$USER query \
        --keep_going --noshow_progress --output=label "kind('$pattern rule', '$package_name:*')"
}

_helper_find_target() {
    local pattern
    if [[ "$1" == "test" ]]; then
        pattern='(test|test_suite)'
    elif [[ "$1" == "run" ]]; then
        pattern='(binary)'
    fi
    _helper_find_workspace_dir
    if [[ -z "$workspace_dir" ]]; then
        return
    fi
    if [[ "$ARGC_CWORD" == *':'* ]]; then
        _helper_find_rules_in_package
    else
        _helper_find_package
    fi
}

_helper_find_workspace_dir() {
    workspace_dir="$(_argc_util_path_search_parent -p WORKSPACE WORKSPACE.bazel)"
}

command eval "$(argc --argc-eval "$0" "$@")"