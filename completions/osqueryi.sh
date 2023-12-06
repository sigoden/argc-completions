#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --flagfile <PATH>                        Line-delimited file of additional flags
# @flag --D                                        Run as a daemon process
# @flag --S                                        Run as a shell process
# @option --alarm_timeout <VALUE>                  Seconds to allow for shutdown.
# @flag --aws_enforce_fips                         Whether to enforce AWS FIPS endpoints for all services or not
# @option --carver_block_size <VALUE>              Size of blocks used for POSTing data back to remote endpoints
# @flag --carver_compression                       Compress archives using zstd prior to upload (default false)
# @option --carver_continue_endpoint <VALUE>       TLS/HTTPS endpoint that receives carved content after session creation
# @flag --carver_disable_function                  Disable the osquery file carver function (default true)
# @option --carver_expiry <VALUE>                  Seconds to store successful carve result metadata (in carves table)
# @option --carver_start_endpoint <VALUE>          TLS/HTTPS init endpoint for forensic carver
# @option --config_accelerated_refresh <VALUE>     Interval to wait if reading a configuration fails
# @flag --config_check                             Check the format of an osquery config and exit
# @flag --config_dump                              Dump the contents of the configuration, then exit
# @flag --config_enable_backup                     Backup config and use it when refresh fails
# @option --config_path <file>                     Path to JSON config file
# @option --config_plugin <VALUE>                  Config plugin name
# @option --config_refresh <VALUE>                 Optional interval in seconds to re-read configuration
# @option --config_tls_endpoint <VALUE>            TLS/HTTPS endpoint for config retrieval
# @option --config_tls_max_attempts <VALUE>        Number of attempts to retry a TLS config request
# @flag --daemonize                                Attempt to daemonize (POSIX only)
# @flag --database_dump                            Dump the contents of the backing store
# @option --database_path <path>                   If using a disk-based backing store, specify a path
# @flag --disable_carver                           Disable the osquery file carver (default true)
# @flag --disable_enrollment                       Disable enrollment functions on related config/logger plugins
# @flag --disable_extensions                       Disable extension API
# @flag --disable_reenrollment                     Disable re-enrollment attempts if related plugins return invalid
# @option --disable_tables*,[`_choice_table`] <VALUE>  Comma-delimited list of table names to be disabled
# @flag --disable_watchdog                         Disable userland watchdog process
# @flag --enable_extensions_watchdog               Enable userland watchdog for extensions processes
# @option --enable_tables*,[`_choice_table`] <VALUE>  Comma-delimited list of table names to be enabled
# @flag --enable_watchdog_debug                    Enable logging of CPU and memory footprint of watched processes
# @flag --enroll_always                            On startup, send a new enrollment request
# @option --enroll_secret_env <VALUE>              Name of environment variable holding enrollment-auth secret
# @option --enroll_secret_path <path>              Path to an optional client enrollment-auth secret
# @option --enroll_tls_endpoint <VALUE>            TLS/HTTPS endpoint for client enrollment
# @option --experiments_linuxevents_circular_buffer_size <VALUE>  Size of the circular buffer used by tables to store events
# @option --experiments_linuxevents_perf_output_size <VALUE>  Perf ouput size (must be a power of two)
# @option --extensions_autoload <path>             Optional path to a list of autoloaded & managed extensions
# @option --extensions_interval <VALUE>            Seconds delay between connectivity checks
# @option --extensions_require <VALUE>             Comma-separated list of required extensions
# @option --extensions_socket <path>               Path to the extensions UNIX domain socket
# @option --extensions_timeout <VALUE>             Seconds to wait for autoloaded extensions
# @flag --force                                    Force osqueryd to kill previously-running daemons
# @flag --install                                  Install osqueryd as a service
# @flag --keep_container_worker_open               Keep the container worker running to be reused instead of closing it after each query
# @option --logger_mode <file>                     Octal mode for log files (default '0640')
# @option --logger_plugin <VALUE>                  Logger plugin name
# @flag --logger_stderr                            Write status logs to stderr
# @flag --logtostderr                              Log messages to stderr in addition to the logger plugin(s)
# @option --pidfile <file>                         Path to the daemon pidfile mutex
# @option --proxy_hostname <VALUE>                 Optional HTTP proxy hostname
# @option --stderrthreshold <VALUE>                Stderr log level threshold
# @option --tls_client_cert <path>                 Optional path to a TLS client-auth PEM certificate
# @option --tls_client_key <path>                  Optional path to a TLS client-auth PEM private key
# @option --tls_enroll_max_attempts <VALUE>        The total number of attempts that will be made to the enroll endpoint if a request fails, 0 for infinite
# @option --tls_enroll_max_interval <VALUE>        Maximum wait time in seconds between enroll retry attempts
# @option --tls_hostname <VALUE>                   TLS/HTTPS hostname for Config, Logger, and Enroll plugins
# @option --tls_server_certs <path>                Optional path to a TLS server PEM certificate(s) bundle
# @flag --tls_session_reuse                        Reuse TLS session sockets
# @option --tls_session_timeout <VALUE>            TLS session keep alive timeout in seconds
# @flag --uninstall                                Uninstall osqueryd as a service
# @option --watchdog_delay <VALUE>                 Initial delay in seconds before watchdog starts
# @option --watchdog_forced_shutdown_delay <VALUE>  Seconds that the watchdog will wait to do a forced shutdown after a graceful shutdown request, when a resource limit is hit
# @option --watchdog_latency_limit <file>          Override watchdog profile CPU utilization latency limit
# @option --watchdog_level <VALUE>                 Performance limit level (0=normal, 1=restrictive, -1=off)
# @option --watchdog_memory_limit <file>           Override watchdog profile memory limit (e.g., 300, for 300MB)
# @option --watchdog_utilization_limit <file>      Override watchdog profile CPU utilization limit
# @flag --audit_allow_accept_socket_events         Include rows for accept socket events
# @flag --audit_allow_apparmor_events              Allow the publisher to process audit events
# @flag --audit_allow_config                       Allow the audit publisher to change auditing configuration
# @flag --audit_allow_failed_socket_events         Include rows for socket events that have failed
# @flag --audit_allow_fim_events                   Allow the audit publisher to install filesystem-related rules
# @flag --audit_allow_fork_process_events          Allow the audit publisher to install process event monitoring rules to capture fork/vfork/clone system calls
# @flag --audit_allow_kill_process_events          Allow the audit publisher to install process event monitoring rules to capture kill/tkill/tgkill system calls
# @flag --audit_allow_null_accept_socket_events    Allow non-blocking accept() syscalls that returned EAGAIN/EWOULDBLOCK
# @flag --audit_allow_process_events               Allow the audit publisher to install process-related rules
# @flag --audit_allow_seccomp_events               Allow the audit publisher to process seccomp events
# @flag --audit_allow_selinux_events               Allow the audit publisher to process audit events
# @flag --audit_allow_sockets                      Allow the audit publisher to install socket-related rules
# @flag --audit_allow_user_events                  Allow the audit publisher to install user-related rules
# @option --audit_backlog_limit <VALUE>            The audit backlog limit
# @option --audit_backlog_wait_time <VALUE>        The audit backlog wait time
# @flag --audit_force_reconfigure                  Configure the audit subsystem from scratch
# @flag --audit_force_unconfigure                  Always uninstall all rules, regardless of whether they were already installed or not
# @flag --audit_persist                            Attempt to retain control of audit
# @option --augeas_lenses <path>                   Directory that contains augeas lenses files
# @option --aws_access_key_id <VALUE>              AWS access key ID
# @flag --aws_debug                                Enable AWS SDK debug logging
# @flag --aws_disable_imdsv1_fallback              Whether to disable support for IMDSv1 and fail if an IMDSv2 token could not be retrieved
# @flag --aws_enable_proxy                         Enable proxying of HTTP/HTTPS requests in AWS client config
# @option --aws_firehose_endpoint <VALUE>          Custom Firehose endpoint
# @option --aws_firehose_period <VALUE>            Seconds between flushing logs to Firehose (default 10)
# @option --aws_firehose_stream <VALUE>            Name of Firehose stream for logging
# @option --aws_imdsv2_request_attempts <VALUE>    How many attempts to do at requesting an IMDSv2 token
# @option --aws_imdsv2_request_interval <VALUE>    Base seconds to wait between attempts at requesting an IMDSv2 token.
# @flag --aws_kinesis_disable_log_status           Disable status logs processing
# @option --aws_kinesis_endpoint <VALUE>           Custom Kinesis endpoint
# @option --aws_kinesis_period <VALUE>             Seconds between flushing logs to Kinesis (default 10)
# @flag --aws_kinesis_random_partition_key         Enable random kinesis partition keys
# @option --aws_kinesis_stream <VALUE>             Name of Kinesis stream for logging
# @option --aws_profile_name <file>                AWS profile for authentication and region configuration
# @option --aws_proxy_host <VALUE>                 Proxy host for use in AWS client config
# @option --aws_proxy_password <VALUE>             Proxy password for use in AWS client config
# @option --aws_proxy_port <VALUE>                 Proxy port for use in AWS client config
# @option --aws_proxy_scheme <VALUE>               Proxy HTTP scheme for use in AWS client config (http or https, default https)
# @option --aws_proxy_username <VALUE>             Proxy username for use in AWS client config
# @option --aws_region <VALUE>                     AWS region
# @option --aws_secret_access_key <VALUE>          AWS secret access key
# @option --aws_session_token <VALUE>              AWS STS session token
# @option --aws_sts_arn_role <VALUE>               AWS STS ARN role
# @option --aws_sts_region <VALUE>                 AWS STS region
# @option --aws_sts_session_name <VALUE>           AWS STS session name
# @option --aws_sts_timeout <VALUE>                AWS STS assume role credential validity in seconds (default 3600)
# @option --bpf_buffer_storage_size <VALUE>        How many slots each buffer storage should have
# @option --bpf_perf_event_array_exp <VALUE>       Size of the perf event array as a power of 2
# @option --buffered_log_max <VALUE>               Maximum number of logs in buffered output plugins (0 = unlimited)
# @flag --decorations_top_level                    Add decorators as top level JSON object members
# @flag --disable_audit                            Disable receiving events from the audit subsystem
# @flag --disable_caching                          Disable scheduled query caching
# @flag --disable_database                         Disable the persistent RocksDB storage
# @flag --disable_decorators                       Disable log result decoration
# @flag --disable_distributed                      Disable distributed queries (default true)
# @flag --disable_events                           Disable osquery publish/subscribe system
# @flag --disable_hash_cache                       Cache calculated file hashes, re-calculate only if inode times change
# @flag --disable_logging                          Disable ERROR/INFO logging
# @flag --disable_memory                           Disable physical memory reads
# @option --distributed_denylist_duration <VALUE>  Seconds to denylist distributed queries (default 1 day)
# @option --distributed_interval <VALUE>           Seconds between polling for new queries (default 60)
# @flag --distributed_loginfo                      Log the running distributed queries name at INFO level
# @option --distributed_plugin <VALUE>             Distributed plugin name
# @option --distributed_tls_max_attempts <VALUE>   Number of times to attempt a request
# @option --distributed_tls_read_endpoint <VALUE>  TLS/HTTPS endpoint for distributed query retrieval
# @option --distributed_tls_write_endpoint <VALUE>  TLS/HTTPS endpoint for distributed query results
# @option --docker_socket <path>                   Docker UNIX domain socket path
# @flag --enable_bpf_events                        Enables the bpf_process_events publisher
# @flag --enable_file_events                       Enables the file_events publisher
# @flag --enable_foreign                           Enable no-op foreign virtual tables
# @flag --enable_numeric_monitoring                Enable numeric monitoring system
# @flag --enable_syslog                            Enable the syslog ingestion event publisher
# @flag --ephemeral                                Skip pidfile and database state checks
# @option --events_expiry <VALUE>                  Timeout to expire event subscriber results
# @option --events_max <VALUE>                     Maximum number of event batches per type to buffer
# @flag --events_optimize                          Optimize subscriber select queries (scheduler only)
# @option --experiment_list <VALUE>                Comma-separated list of experiments to enable
# @flag --extensions_default_index                 Enable INDEX on all extension table columns (default true)
# @option --hardware_disabled_types <VALUE>        List of disabled hardware event types
# @option --hash_cache_max <file>                  Size of LRU file hash cache
# @option --host_identifier[hostname|uuid|instance|ephemeral|specified] <VALUE>  Field used to identify the host running osquery
# @flag --ignore_table_exceptions                  Ignore exceptions thrown by tables.
# @flag --logger_event_type                        Log scheduled results as events
# @option --logger_kafka_acks <VALUE>              The number of acknowledgments the leader has to receive (0, 1, 'all')
# @option --logger_kafka_brokers <VALUE>           Bootstrap broker(s) as a comma-separated list of host or host:port (default port 9092)
# @option --logger_kafka_compression <VALUE>       Compression codec to use for compressing message sets ('none' or 'gzip')
# @option --logger_kafka_topic <VALUE>             Kafka topic to publish logs under
# @option --logger_min_status <VALUE>              Minimum level for status log recording
# @option --logger_min_stderr <VALUE>              Minimum level for statuses written to stderr
# @flag --logger_numerics                          Use numeric JSON syntax for numeric values
# @option --logger_path <dir>                      Directory path for ERROR/WARN/INFO and results logging
# @flag --logger_rotate                            Use filesystem log rotation
# @option --logger_rotate_max_files <file>         Max number of files to keep in rotation
# @option --logger_rotate_size <file>              Size for each filesystem log in bytes
# @flag --logger_snapshot_event_type               Log scheduled snapshot results as events
# @option --logger_syslog_facility <VALUE>         Syslog facility for status and results logs (0-23, default 19)
# @flag --logger_syslog_prepend_cee                Prepend @cee: tag to logged JSON messages
# @flag --logger_tls_compress                      GZip compress TLS/HTTPS request body
# @option --logger_tls_endpoint <VALUE>            TLS/HTTPS endpoint for results logging
# @option --logger_tls_max_lines <VALUE>           Max number of logs to send per period
# @option --logger_tls_max_linesize <VALUE>        Max size in bytes allowed per log line
# @option --logger_tls_period <VALUE>              Seconds between flushing logs over TLS/HTTPS
# @option --lxd_socket <path>                      LXD UNIX domain socket path
# @option --malloc_trim_threshold <VALUE>          Memory threshold in MB used to decide when a malloc_trim will be called to reduce the retained memory (Linux only)
# @option --nullvalue <VALUE>                      Set string for NULL values, default ''
# @option --numeric_monitoring_filesystem_path <file>  File to dump numeric monitoring records one per line.
# @option --numeric_monitoring_plugins <VALUE>     Comma separated numeric monitoring plugins names
# @option --numeric_monitoring_pre_aggregation_time <VALUE>  Time period in seconds for numeric monitoring pre-aggregation buffer.
# @option --pack_delimiter <VALUE>                 Delimiter for pack and query names
# @option --pack_refresh_interval <VALUE>          Cache expiration for a packs discovery queries
# @option --read_max <file>                        Maximum file read size
# @option --schedule_default_interval <VALUE>      Query interval to use if none is provided
# @option --schedule_epoch <VALUE>                 Epoch for scheduled queries
# @flag --schedule_lognames                        Log the running scheduled query name at INFO level
# @option --schedule_max_drift <VALUE>             Max time drift in seconds
# @option --schedule_reload <VALUE>                Interval in seconds to reload database arenas
# @option --schedule_splay_percent <VALUE>         Percent to splay config times
# @option --schedule_timeout <VALUE>               Limit the schedule to a duration in seconds, 0 for no limit
# @option --specified_identifier <VALUE>           Field used to specify the host_identifier when set to "specified"
# @option --syslog_events_expiry <VALUE>           Timeout to expire event subscriber results
# @option --syslog_events_max <VALUE>              Maximum number of events per type to buffer
# @option --syslog_pipe_path <path>                Path to the named pipe used for forwarding rsyslog events
# @option --syslog_rate_limit <VALUE>              Maximum number of logs to ingest per run (~200ms between runs)
# @option --table_delay <VALUE>                    Add an optional millisecond delay between table scans
# @option --thrift_string_size_limit <VALUE>       Sets the maximum string size allowed in a thrift message, use 0 for unlimited
# @option --thrift_timeout <VALUE>                 Timeout for thrift socket operations
# @flag --thrift_verbose                           Enable the thrift log handler
# @flag --tls_disable_status_log                   Disable sending status logs
# @flag --verbose                                  Enable verbose informational messages
# @option --worker_threads <VALUE>                 Number of work dispatch threads
# @option --yara_delay <file>                      Time in ms to sleep after scan of each file (default 50) to reduce memory spikes
# @option --A <VALUE>                              Select all from a table
# @flag --L                                        List all table names
# @option --connect <VALUE>                        Connect to an extension socket
# @flag --csv                                      Set output mode to 'csv'
# @option --extension <path>                       Path to a single extension to autoload
# @flag --header                                   Toggle column headers true/false
# @flag --json                                     Set output mode to 'json'
# @flag --json_pretty                              Set output mode to 'json_pretty'
# @flag --line                                     Set output mode to 'line'
# @flag --list                                     Set output mode to 'list'
# @option --pack <VALUE>                           Run all queries in a pack
# @flag --planner                                  Enable osquery runtime planner output
# @option --profile <file>                         Enable profile mode when non-0, set number of iterations
# @option --separator <VALUE>                      Set output field separator, default '|'
# @arg sql-statement <SQL STATEMENT>

_choice_table() {
    osqueryi --L | sed -n 's/^\s*=> \(\S\+\).*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"