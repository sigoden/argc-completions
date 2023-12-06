#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  show this help message and exit
# @flag -v --version                               version
# @flag --support                                  Enable debug logs and upload the logs to the server.
# @option -d --directory                           IaC root directory (can not be used together with --file).
# @flag --add-check                                Generate a new check via CLI prompt
# @option -f --file <FILE+>                        File to scan (can not be used together with --directory).
# @option --skip-path <SKIP_PATH>                  Path (file or directory) to skip, using regular expression logic, relative to current working directory.
# @option --external-checks-dir <EXTERNAL_CHECKS_DIR>  Directory for custom checks to be loaded.
# @option --external-checks-git <EXTERNAL_CHECKS_GIT>  Github url of external checks to be added.
# @flag -l --list                                  List checks
# @option -o --output[cli|csv|cyclonedx|cyclonedx_json|json|junitxml|github_failed_only|gitlab_sast|sarif|spdx]  Report output format.
# @option --output-file-path <OUTPUT_FILE_PATH>    Name of the output folder to save the chosen output formats.
# @flag --output-bc-ids                            Print Bridgecrew platform IDs (BC...) instead of Checkov IDs (CKV...), if the check exists in the platform
# @flag --include-all-checkov-policies             When running with an API key, Checkov will omit any policies that do not exist in Prisma Cloud platform, except for local custom policies loaded with the
# @flag --quiet                                    in case of CLI output, display only failed checks.
# @flag --compact                                  in case of CLI output, do not display code blocks
# @option --framework <FRAMEWORK+>                 Filter scan to run only on specific infrastructure as code frameworks.
# @option --skip-framework[ansible|argo_workflows|arm|azure_pipelines|bicep|bitbucket_pipelines|cdk|circleci_pipelines|cloudformation|dockerfile|github_configuration|github_actions|gitlab_configuration|gitlab_ci|bitbucket_configuration|helm|json|yaml|kubernetes|kustomize|openapi|sca_package|sca_image|secrets|serverless|terraform|terraform_json|terraform_plan|sast|sast_python|sast_java|sast_javascript|3d_policy] <SKIP_FRAMEWORK+>  Filter scan to skip specific infrastructure as code frameworks.
# @option -c --check                               Checks to run; any other checks will be skipped.
# @option --skip-check <SKIP_CHECK>                Checks to skip; any other checks will not be run.
# @flag --run-all-external-checks                  Run all external checks (loaded via --external-checks options) even if the checks are not present in the --check list.
# @flag -s --soft-fail                             Runs checks but always returns a 0 exit code.
# @option --soft-fail-on <SOFT_FAIL_ON>            Exits with a 0 exit code if only the specified items fail.
# @option --hard-fail-on <HARD_FAIL_ON>            Exits with a non-zero exit code for specified checks.
# @option --bc-api-key <BC_API_KEY>                Bridgecrew API key or Prisma Cloud Access Key (see --prisma-api-url) [env var: BC_API_KEY]
# @option --prisma-api-url <PRISMA_API_URL>        The Prisma Cloud API URL (see:
# @flag --skip-results-upload                      Do not upload scan results to the platform to view in the console.
# @option --docker-image <DOCKER_IMAGE>            Scan docker images by name or ID.
# @option --image <DOCKER_IMAGE>                   Scan docker images by name or ID.
# @option --dockerfile-path <DOCKERFILE_PATH>      Path to the Dockerfile of the scanned docker image
# @option --repo-id <REPO_ID>                      Identity string of the repository, with form <repo_owner>/<repo_name>.
# @option -b --branch                              Selected branch of the persisted repository.
# @flag --skip-download                            Do not download any data from Prisma Cloud.
# @flag --use-enforcement-rules                    Use the Enforcement rules configured in the platform for hard / soft fail logic.
# @option --download-external-modules <DOWNLOAD_EXTERNAL_MODULES>  download external terraform modules from public git repositories and terraform registry [env var: DOWNLOAD_EXTERNAL_MODULES]
# @option --var-file <VAR_FILE>                    Variable files to load in addition to the default files (see https://www.terraform.io/docs/language/valu es/variables.html#variable-definitions-tfvars-files).Currently only supported for source Terraform (.tf file), and Helm chart scans.Requires using --directory, not --file.
# @option --external-modules-download-path <EXTERNAL_MODULES_DOWNLOAD_PATH>  set the path for the download external terraform modules [env var: EXTERNAL_MODULES_DIR]
# @option --evaluate-variables <EVALUATE_VARIABLES>  evaluate the values of variables and locals [env var: CKV_EVAL_VARS]
# @option -ca <CA_CERTIFICATE>                     Custom CA certificate (bundle) file [env var: BC_CA_BUNDLE]
# @option --ca-certificate <CA_CERTIFICATE>        Custom CA certificate (bundle) file [env var: BC_CA_BUNDLE]
# @flag --no-cert-verify                           Skip SSL certificate verification.
# @option --repo-root-for-plan-enrichment <REPO_ROOT_FOR_PLAN_ENRICHMENT>  Directory containing the hcl code used to generate a given plan file.
# @option --config-file <CONFIG_FILE>              path to the Checkov configuration YAML file
# @option --create-config <CREATE_CONFIG>          takes the current command line args and writes them out to a config file at the given path
# @flag --show-config                              prints all args and config settings and where they came from (eg.
# @flag --create-baseline                          Alongside outputting the findings, save all results to .checkov.baseline file so future runs will not re-flag the same noise.
# @option --baseline                               Use a .checkov.baseline file to compare current results with a known baseline.
# @flag --output-baseline-as-skipped               output checks that are skipped due to baseline file presence
# @option --skip-cve-package <SKIP_CVE_PACKAGE>    filter scan to run on all packages but a specific package identifier (denylist), You can specify this argument multiple times to skip multiple packages
# @option --policy-metadata-filter <POLICY_METADATA_FILTER>  comma separated key:value string to filter policies based on Prisma Cloud policy metadata.
# @option --secrets-scan-file-type <SECRETS_SCAN_FILE_TYPE>  not in use [env var: CKV_SECRETS_SCAN_FILE_TYPE]
# @flag --enable-secret-scan-all-files             enable secret scan for all files [env var: CKV_SECRETS_SCAN_ENABLE_ALL]
# @option --block-list-secret-scan <BLOCK_LIST_SECRET_SCAN>  List of files to filter out from the secret scanner [env var: CKV_SECRETS_SCAN_BLOCK_LIST]
# @option --summary-position[bottom|top]           Chose whether the summary will be appended on top (before the checks results) or on bottom (after check results), default is on top.
# @flag --skip-resources-without-violations        exclude extra resources (resources without violations) from report output [env var: CKV_SKIP_RESOURCES_WITHOUT_VIOLATIONS]
# @flag --deep-analysis                            Combine the TF Plan and TF graphs to make connections not available in either
# @flag --no-fail-on-crash                         Return exit code 0 instead of 2 [env var: CKV_NO_FAIL_ON_CRASH]
# @option --mask                                   List of <resource_type>:<variable> OR <variable> only.
# @flag --scan-secrets-history                     will scan the history of commits for secrets
# @option --secrets-history-timeout <SECRETS_HISTORY_TIMEOUT>  maximum time to stop the scan
# @option --openai-api-key <OPENAI_API_KEY>        Add an OpenAI API key to enhance finding guidelines by sending violated policies and resource code to OpenAI to request remediation guidance.

command eval "$(argc --argc-eval "$0" "$@")"