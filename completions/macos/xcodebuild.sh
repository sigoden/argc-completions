#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -usage                                     print brief usage
# @flag -help                                      print complete usage
# @flag -verbose                                   provide additional status output
# @flag -license                                   show the Xcode and SDK license agreements
# @flag -checkFirstLaunchStatus                    Check if any First Launch tasks need to be performed
# @flag -runFirstLaunch                            install packages and agree to the license
# @flag -downloadAllPlatforms                      download all platforms
# @option -downloadPlatform <NAME>                 download the platform NAME
# @flag -downloadAllPreviouslySelectedPlatforms    download all previously selected platforms
# @option -project <NAME>                          build the project NAME
# @option -target <NAME>                           build the target NAME
# @flag -alltargets                                build all targets
# @option -workspace <NAME>                        build the workspace NAME
# @option -scheme <NAME>                           build the scheme NAME
# @option -configuration <NAME>                    use the build configuration NAME for building each target
# @option -xcconfig <PATH>                         apply the build settings defined in the file at PATH as overrides
# @option -arch                                    build each target for the architecture ARCH; this will override architectures defined in the project
# @option -sdk                                     use SDK as the name or path of the base SDK when building the project
# @option -toolchain <NAME>                        use the toolchain with identifier or name NAME
# @option -destination <DESTINATIONSPECIFIER>      use the destination described by DESTINATIONSPECIFIER (a comma-separated set of key=value pairs describing the destination to use)
# @option -destination-timeout <TIMEOUT>           wait for TIMEOUT seconds while searching for the destination device
# @flag -parallelizeTargets                        build independent targets in parallel
# @option -jobs <NUMBER>                           specify the maximum number of concurrent build operations
# @option -maximum-concurrent-test-device-destinations <NUMBER>  the maximum number of device destinations to test on concurrently
# @option -maximum-concurrent-test-simulator-destinations <NUMBER>  the maximum number of simulator destinations to test on concurrently
# @option -parallel-testing-enabled <YES|NO>       overrides the per-target setting in the scheme
# @option -parallel-testing-worker-count <NUMBER>  the exact number of test runners that will be spawned during parallel testing
# @option -maximum-parallel-testing-workers <NUMBER>  the maximum number of test runners that will be spawned during parallel testing
# @flag -dry-run                                   do everything except actually running the commands
# @flag -quiet                                     do not print any output except for warnings and errors
# @flag -hideShellScriptEnvironment                don't show shell script environment variables in build log
# @flag -showsdks                                  display a compact list of the installed SDKs
# @flag -showdestinations                          display a list of destinations
# @flag -showTestPlans                             display a list of test plans
# @flag -showBuildSettings                         display a list of build settings and values
# @flag -showBuildSettingsForIndex                 display build settings for the index service
# @flag -list                                      lists the targets and configurations in a project, or the schemes in a workspace
# @option -find-executable <NAME>                  display the full path to executable NAME in the provided SDK and toolchain
# @option -find-library <NAME>                     display the full path to library NAME in the provided SDK and toolchain
# @flag -version                                   display the version of Xcode; with -sdk will display info about one or all installed SDKs
# @option -enableAddressSanitizer <YES|NO>         turn the address sanitizer on or off
# @option -enableThreadSanitizer <YES|NO>          turn the thread sanitizer on or off
# @option -enableUndefinedBehaviorSanitizer <YES|NO>  turn the undefined behavior sanitizer on or off
# @option -resultBundlePath <PATH>                 specifies the directory where a result bundle describing what occurred will be placed
# @option -resultStreamPath <PATH>                 specifies the file where a result stream will be written to (the file must already exist)
# @option -resultBundleVersion <3> <default>       specifies which result bundle version should be used
# @option -clonedSourcePackagesDirPath <PATH>      specifies the directory to which remote source packages are fetch or expected to be found
# @option -derivedDataPath <PATH>                  specifies the directory where build products and other derived data will go
# @option -archivePath <PATH>                      specifies the directory where any created archives will be placed, or the archive that should be exported
# @flag -exportArchive                             specifies that an archive should be exported
# @flag -exportNotarizedApp                        export an archive that has been notarized by Apple
# @option -exportOptionsPlist <PATH>               specifies a path to a plist file that configures archive exporting
# @option -enableCodeCoverage <YES|NO>             turn code coverage on or off when testing
# @option -exportPath <PATH>                       specifies the destination for the product exported from an archive
# @flag -skipUnavailableActions                    specifies that scheme actions that cannot be performed should be skipped instead of causing a failure
# @flag -exportLocalizations                       exports completed and outstanding project localizations
# @flag -importLocalizations                       imports localizations for a project, assuming any necessary localized resources have been created in Xcode
# @flag -localizationPath                          specifies a path to XLIFF localization files
# @flag -exportLanguage                            specifies multiple optional ISO 639-1 languages included in a localization export
# @flag -defaultLanguage                           specifies the default ISO 639-1 language to be used as the source language on export
# @flag -xctestrun                                 specifies a path to a test run specification
# @flag -testProductsPath                          specifies a path for the test products
# @option -enablePerformanceTestsDiagnostics <YES|NO>  enables performance trace and memgraph collection for performance XCTests
# @flag -testPlan                                  specifies the name of the test plan associated with the scheme to use for testing
# @option -only-testing- <TEST-IDENTIFIER>         constrains testing by specifying tests to include, and excluding other tests
# @option -skip-testing- <TEST-IDENTIFIER>         constrains testing by specifying tests to exclude, but including other tests
# @option -test-timeouts-enabled <YES|NO>          enable or disable test timeout behavior
# @option -default-test-execution-time-allowance <SECONDS>  the default execution time an individual test is given to execute, if test timeouts are enabled
# @option -maximum-test-execution-time-allowance <SECONDS>  the maximum execution time an individual test is given to execute, regardless of the test's preferred allowance
# @option -test-iterations <number>                If specified, tests will run <number> times.
# @flag -retry-tests-on-failure                    If specified, tests will retry on failure.
# @flag -run-tests-until-failure                   If specified, tests will run until they fail.
# @option -test-repetition-relaunch-enabled <YES|NO>  Enable or disable, tests repeating in a new process for each repetition.
# @flag -only-test-configuration                   constrains testing by specifying test configurations to include, and excluding other test configurations
# @flag -skip-test-configuration                   constrains testing by specifying test configurations to exclude, but including other test configurations
# @option -collect-test-diagnostics <on-failure|never>  Whether or not testing collects verbose diagnostics (like a sysdiagnose) when encountering a failure
# @flag -testLanguage                              constrains testing by specifying ISO 639-1 language in which to run the tests
# @flag -testRegion                                constrains testing by specifying ISO 3166-1 region in which to run the tests
# @flag -enumerate-tests                           Enumerate the tests that would be executed by this command without actually executing them
# @option -test-enumeration-style[flat|hierarchical]  The style in which to enumerate the tests.
# @option -test-enumeration-format[text|json]      The output format of the enumerated tests.
# @flag -test-enumeration-output-path              The path (relative or absolute) where the results of test enumeration should be written.
# @flag -resolvePackageDependencies                resolves any Swift package dependencies referenced by the project or workspace
# @flag -disableAutomaticPackageResolution         prevents packages from automatically being resolved to versions other than those recorded in the `Package.resolved` file
# @flag -onlyUsePackageVersionsFromResolvedFile    prevents packages from automatically being resolved to versions other than those recorded in the `Package.resolved` file
# @flag -skipPackageUpdates                        Skip updating package dependencies from their remote
# @flag -disablePackageRepositoryCache             disable use of a local cache of remote package repositories
# @flag -skipPackagePluginValidation               Skip validation of package plugins (this can be a security risk if they are not from trusted sources)
# @flag -skipMacroValidation                       Skip validation of macros (this can be a security risk if they are not from trusted sources)
# @flag -packageCachePath                          path of caches used for package support
# @flag -defaultPackageRegistryURL                 URL of the default package registry
# @flag -packageDependencySCMToRegistryTransformation  specifies the transformation to apply to SCM-based package dependencies (none, useRegistryIdentity, or useRegistryIdentityAndSources)
# @flag -skipPackageSignatureValidation            Skip validation of package signatures (this can be a security risk if they are not from trusted sources)
# @flag -packageFingerprintPolicy                  Package fingerprint checking policy (`warn` or `strict`)
# @flag -packageSigningEntityPolicy                Package signing entity checking policy (`warn` or `strict`)
# @flag -json                                      output as JSON (note: -json implies -quiet)
# @flag -allowProvisioningUpdates                  Allow xcodebuild to communicate with the Apple Developer website.
# @flag -allowProvisioningDeviceRegistration       Allow xcodebuild to register your destination device on the developer portal if necessary.
# @flag -authenticationKeyPath                     specifies the path to an authentication key issued by App Store Connect.
# @flag -authenticationKeyID                       specifies the key identifier associated with the App Store Conect authentication key at -authenticationKeyPath.
# @flag -authenticationKeyIssuerID                 specifies the App Store Connect issuer identifier associated with the authentication key at -authenticationKeyPath.
# @flag -scmProvider                               which implementation to use for Git operations (system/xcode)
# @flag -showBuildTimingSummary                    display a report of the timings of all the commands invoked during the build
# @flag -create-xcframework                        create an xcframework from prebuilt libraries; -help for more information.

command eval "$(argc --argc-eval "$0" "$@")"