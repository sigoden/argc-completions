#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Prints help information
# @flag -V --version    Prints version information

# {{ cargo crev config
# @cmd Local configuration
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
config() {
    :;
}

# {{{ cargo crev config cache-dir
# @cmd Print the dir containing cache files
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
config::cache-dir() {
    :;
}
# }}} cargo crev config cache-dir

# {{{ cargo crev config completions
# @cmd Completions
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
# @option --shell <shell>
config::completions() {
    :;
}
# }}} cargo crev config completions

# {{{ cargo crev config data-dir
# @cmd Print the dir containing data files
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
config::data-dir() {
    :;
}
# }}} cargo crev config data-dir

# {{{ cargo crev config dir
# @cmd Print the dir containing config files
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
config::dir() {
    :;
}
# }}} cargo crev config dir

# {{{ cargo crev config edit
# @cmd Edit the config file
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
config::edit() {
    :;
}
# }}} cargo crev config edit
# }} cargo crev config

# {{ cargo crev crate
# @cmd Crate related operations (review, verify...)
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
crate() {
    :;
}

# {{{ cargo crev crate clean
# @cmd Clean the source code directory of a crate (eg.
# @flag -h --help         Prints help information
# @flag -u --unrelated    This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version      Prints version information
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
crate::clean() {
    :;
}
# }}} cargo crev crate clean

# {{{ cargo crev crate diff
# @cmd Diff between two versions of a package
# @flag --direct                                   [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                                  Prints help information
# @flag -u --unrelated                             This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version                               Prints version information
# @option --depth <depth>                          [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>          [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --dst <dst>                              Destination version - defaults to the current one
# @option --high-cost <high-cost>                  [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>                    [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --medium-cost <medium-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>                  [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
# @option --redundancy <redundancy>                Number of reviews required [default: 1]
# @option --src <src>                              Source version - defaults to the last reviewed one
# @option --thoroughness <thoroughness-level>      Required thoroughness [default: none]
# @option --trust <trust-level>                    Minimum trust level required [default: low]
# @option --understanding <understanding-level>    Required understanding [default: none]
# @arg name!                                       Crate name
# @arg args+                                       Arguments to the `diff` command
crate::diff() {
    :;
}
# }}} cargo crev crate diff

# {{{ cargo crev crate dir
# @cmd Display the path of the source code directory of a crate
# @flag -h --help                  Prints help information
# @flag -u --unrelated             This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version               Prints version information
# @option --diff <base-version>    Review the delta since the given version
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
crate::dir() {
    :;
}
# }}} cargo crev crate dir

# {{{ cargo crev crate expand
# @cmd WIP: Expand the crate source using `cargo-expand` like functionality
# @flag -h --help                  Prints help information
# @flag -u --unrelated             This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version               Prints version information
# @option --diff <base-version>    Review the delta since the given version
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
crate::expand() {
    :;
}
# }}} cargo crev crate expand

# {{{ cargo crev crate goto
# @cmd Start a shell in source directory of a crate under review
# @flag -h --help         Prints help information
# @flag -u --unrelated    This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version      Prints version information
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
crate::goto() {
    :;
}
# }}} cargo crev crate goto

# {{{ cargo crev crate info
# @cmd Parameters describing trust graph traversal
# @flag --all-features                             [cargo] Activate all available features
# @flag --dev-dependencies                         [cargo] Activate dev dependencies
# @flag --direct                                   [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                                  Prints help information
# @flag --no-default-features                      [cargo] Do not activate the `default` feature
# @flag --no-dev-dependencies                      [cargo] Skip dev dependencies
# @flag -u --unrelated                             This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version                               Prints version information
# @option --depth <depth>                          [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>          [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --features*,[`_choice_feature`]          [cargo] Space-separated list of features to activate
# @option --for-id <for-id>                        Root identity to calculate the Web of Trust for [default: current user id]
# @option --high-cost <high-cost>                  [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>                    [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --manifest-path <PATH>                   [cargo] Path to Cargo.toml
# @option --medium-cost <medium-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>                  [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
# @option --redundancy <redundancy>                Number of reviews required [default: 1]
# @option --target[`_choice_target`] <target>      [cargo] Skip targets other than specified (no value = autodetect)
# @option --thoroughness <thoroughness-level>      Required thoroughness [default: none]
# @option --trust <trust-level>                    Minimum trust level required [default: low]
# @option --understanding <understanding-level>    Required understanding [default: none]
# @option -Z --unstable-flags* <FLAG>              [cargo] Unstable (nightly-only) flags to Cargo
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
crate::info() {
    :;
}
# }}} cargo crev crate info

# {{{ cargo crev crate mvp
# @cmd Parameters describing trust graph traversal
# @flag --all-features                             [cargo] Activate all available features
# @flag --dev-dependencies                         [cargo] Activate dev dependencies
# @flag --direct                                   [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                                  Prints help information
# @flag --no-default-features                      [cargo] Do not activate the `default` feature
# @flag --no-dev-dependencies                      [cargo] Skip dev dependencies
# @flag -u --unrelated                             This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version                               Prints version information
# @option --depth <depth>                          [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>          [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --features*,[`_choice_feature`]          [cargo] Space-separated list of features to activate
# @option --for-id <for-id>                        Root identity to calculate the Web of Trust for [default: current user id]
# @option --high-cost <high-cost>                  [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>                    [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --manifest-path <PATH>                   [cargo] Path to Cargo.toml
# @option --medium-cost <medium-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>                  [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
# @option --redundancy <redundancy>                Number of reviews required [default: 1]
# @option --target[`_choice_target`] <target>      [cargo] Skip targets other than specified (no value = autodetect)
# @option --thoroughness <thoroughness-level>      Required thoroughness [default: none]
# @option --trust <trust-level>                    Minimum trust level required [default: low]
# @option --understanding <understanding-level>    Required understanding [default: none]
# @option -Z --unstable-flags* <FLAG>              [cargo] Unstable (nightly-only) flags to Cargo
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
crate::mvp() {
    :;
}
# }}} cargo crev crate mvp

# {{{ cargo crev crate open
# @cmd Open the source code of a crate
# @flag --cmd-save                 Save the `--cmd` argument to be used a default in the future
# @flag -h --help                  Prints help information
# @flag -u --unrelated             This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version               Prints version information
# @option --diff <base-version>    Review the delta since the given version
# @option --cmd <cmd>              Shell command to execute with crate directory as an argument.
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
crate::open() {
    :;
}
# }}} cargo crev crate open

# {{{ cargo crev crate review
# @cmd Review a crate (code review, security advisory, flag issues)
# @flag --advisory                               Create advisory urging to upgrade to a safe version
# @flag --all-features                           [cargo] Activate all available features
# @flag --dev-dependencies                       [cargo] Activate dev dependencies
# @flag -h --help                                Prints help information
# @flag --issue                                  Flag the crate as buggy/low-quality/dangerous
# @flag --no-commit                              Don't auto-commit local Proof Repository
# @flag --no-default-features                    [cargo] Do not activate the `default` feature
# @flag --no-dev-dependencies                    [cargo] Skip dev dependencies
# @flag --no-store                               Don't store the proof
# @flag --overrides                              Enable overrides suggestions
# @flag --print-signed                           Print signed proof content on stdout
# @flag --print-unsigned                         Print unsigned proof content on stdout
# @flag --skip-activity-check
# @flag -u --unrelated                           This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version                             Prints version information
# @option --affected <affected>                  This release contains advisory (important fix)
# @option --diff <base-version>                  Review the delta since the given version
# @option --features*,[`_choice_feature`]        [cargo] Space-separated list of features to activate
# @option --manifest-path <PATH>                 [cargo] Path to Cargo.toml
# @option --severity <severity>                  Severity of bug/security issue [none low medium high]
# @option --target[`_choice_target`] <target>    [cargo] Skip targets other than specified (no value = autodetect)
# @option -Z --unstable-flags* <FLAG>            [cargo] Unstable (nightly-only) flags to Cargo
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
crate::review() {
    :;
}
# }}} cargo crev crate review

# {{{ cargo crev crate search
# @cmd Search crates on crates.io sorting by review count
# @flag -h --help            Prints help information
# @flag -V --version         Prints version information
# @option --count <count>    Number of results [default: 10]
# @arg query!                Query to use
crate::search() {
    :;
}
# }}} cargo crev crate search

# {{{ cargo crev crate unreview
# @cmd Unreview (overwrite with an null review)
# @flag --advisory                               Create advisory urging to upgrade to a safe version
# @flag --all-features                           [cargo] Activate all available features
# @flag --dev-dependencies                       [cargo] Activate dev dependencies
# @flag -h --help                                Prints help information
# @flag --issue                                  Flag the crate as buggy/low-quality/dangerous
# @flag --no-commit                              Don't auto-commit local Proof Repository
# @flag --no-default-features                    [cargo] Do not activate the `default` feature
# @flag --no-dev-dependencies                    [cargo] Skip dev dependencies
# @flag --no-store                               Don't store the proof
# @flag --overrides                              Enable overrides suggestions
# @flag --print-signed                           Print signed proof content on stdout
# @flag --print-unsigned                         Print unsigned proof content on stdout
# @flag --skip-activity-check
# @flag -u --unrelated                           This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version                             Prints version information
# @option --affected <affected>                  This release contains advisory (important fix)
# @option --diff <base-version>                  Review the delta since the given version
# @option --features*,[`_choice_feature`]        [cargo] Space-separated list of features to activate
# @option --manifest-path <PATH>                 [cargo] Path to Cargo.toml
# @option --severity <severity>                  Severity of bug/security issue [none low medium high]
# @option --target[`_choice_target`] <target>    [cargo] Skip targets other than specified (no value = autodetect)
# @option -Z --unstable-flags* <FLAG>            [cargo] Unstable (nightly-only) flags to Cargo
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
crate::unreview() {
    :;
}
# }}} cargo crev crate unreview

# {{{ cargo crev crate verify
# @cmd Verify dependencies
# @flag --all-features                             [cargo] Activate all available features
# @flag --dev-dependencies                         [cargo] Activate dev dependencies
# @flag --direct                                   [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                                  Prints help information
# @flag -i --interactive
# @flag --no-default-features                      [cargo] Do not activate the `default` feature
# @flag --no-dev-dependencies                      [cargo] Skip dev dependencies
# @flag --recursive                                Calculate recursive metrics for your packages
# @flag --show-all                                 Show all
# @flag --skip-indirect                            Skip dependencies that are not direct
# @flag --skip-known-owners                        Skip crate from known owners (use `edit known` to edit the list)
# @flag --skip-verified                            Display only crates not passing the verification
# @flag -u --unrelated                             This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version                               Prints version information
# @option --depth <depth>                          [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>          [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --features*,[`_choice_feature`]          [cargo] Space-separated list of features to activate
# @option --for-id <for-id>                        Root identity to calculate the Web of Trust for [default: current user id]
# @option --high-cost <high-cost>                  [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>                    [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --manifest-path <PATH>                   [cargo] Path to Cargo.toml
# @option --medium-cost <medium-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>                  [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
# @option --redundancy <redundancy>                Number of reviews required [default: 1]
# @option --show-digest <show-digest>              Show crate content digest
# @option --show-downloads <show-downloads>        Show crate download counts
# @option --show-flags <show-flags>                Show crate flags
# @option --show-geiger <show-geiger>              Show geiger (unsafe lines) count
# @option --show-issues <show-issues>              Show count of issues reported
# @option --show-latest-trusted <show-latest-trusted>  Show latest trusted version
# @option --show-leftpad-index <show-leftpad-index>  Show crate leftpad index (recent downloads / loc)
# @option --show-loc <show-loc>                    Show Lines of Code
# @option --show-owners <show-owners>              Show crate owners counts
# @option --show-reviews <show-reviews>            Show reviews count
# @option --target[`_choice_target`] <target>      [cargo] Skip targets other than specified (no value = autodetect)
# @option --thoroughness <thoroughness-level>      Required thoroughness [default: none]
# @option --trust <trust-level>                    Minimum trust level required [default: low]
# @option --understanding <understanding-level>    Required understanding [default: none]
# @option -Z --unstable-flags* <FLAG>              [cargo] Unstable (nightly-only) flags to Cargo
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
crate::verify() {
    :;
}
# }}} cargo crev crate verify
# }} cargo crev crate

# {{ cargo crev id
# @cmd Id (own and of other users)
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
id() {
    :;
}

# {{{ cargo crev id current
# @cmd Show your current Id
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
id::current() {
    :;
}
# }}} cargo crev id current

# {{{ cargo crev id distrust
# @cmd Distrust an Id
# @flag -h --help            Prints help information
# @flag --no-commit          Don't auto-commit local Proof Repository
# @flag --no-store           Don't store the proof
# @flag --overrides          Enable overrides suggestions
# @flag --print-signed       Print signed proof content on stdout
# @flag --print-unsigned     Print unsigned proof content on stdout
# @flag -V --version         Prints version information
# @option --level <level>    Shortcut for setting trust level without editing
# @arg public-ids+           Public IDs to create Trust Proof for
id::distrust() {
    :;
}
# }}} cargo crev id distrust

# {{{ cargo crev id export
# @cmd Export your own Id
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
# @arg id!
id::export() {
    :;
}
# }}} cargo crev id export

# {{{ cargo crev id import
# @cmd Import an Id as your own
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
id::import() {
    :;
}
# }}} cargo crev id import

# {{{ cargo crev id new
# @cmd Create a new Id
# @flag -h --help                                Prints help information
# @flag --https-push                             Use public HTTP URL for both pulling and pushing.
# @flag -V --version                             Prints version information
# @option --github-username <github-username>    Github username (instead of --url)
# @option --url <url>                            Publicly-visible HTTPS URL of a git repository to be associated with the new Id
id::new() {
    :;
}
# }}} cargo crev id new

# {{{ cargo crev id passwd
# @cmd Change passphrase
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
id::passwd() {
    :;
}
# }}} cargo crev id passwd

# {{{ cargo crev id query
# @cmd Query Ids
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
id::query() {
    :;
}

# {{{{ cargo crev id query all
# @cmd Parameters describing trust graph traversal
# @flag --direct                             [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                            Prints help information
# @flag -V --version                         Prints version information
# @option --depth <depth>                    [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>    [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --for-id <for-id>
# @option --high-cost <high-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --medium-cost <medium-cost>        [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
id::query::all() {
    :;
}
# }}}} cargo crev id query all

# {{{{ cargo crev id query current
# @cmd Parameters describing trust graph traversal
# @flag --direct                             [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                            Prints help information
# @flag -V --version                         Prints version information
# @option --depth <depth>                    [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>    [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --high-cost <high-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --medium-cost <medium-cost>        [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
id::query::current() {
    :;
}
# }}}} cargo crev id query current

# {{{{ cargo crev id query own
# @cmd Parameters describing trust graph traversal
# @flag --direct                             [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                            Prints help information
# @flag -V --version                         Prints version information
# @option --depth <depth>                    [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>    [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --high-cost <high-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --medium-cost <medium-cost>        [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
id::query::own() {
    :;
}
# }}}} cargo crev id query own

# {{{{ cargo crev id query trusted
# @cmd Parameters describing trust graph traversal
# @flag --direct                             [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                            Prints help information
# @flag -V --version                         Prints version information
# @option --depth <depth>                    [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>    [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --for-id <for-id>
# @option --high-cost <high-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --medium-cost <medium-cost>        [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
# @option --trust <trust-level>              Minimum trust level required [default: low]
id::query::trusted() {
    :;
}
# }}}} cargo crev id query trusted
# }}} cargo crev id query

# {{{ cargo crev id set-url
# @cmd Change public HTTPS repo URL for the current Id
# @flag -h --help       Prints help information
# @flag --https-push    Setup `https` instead of recommended `ssh`-based push url
# @flag -V --version    Prints version information
# @arg url!             Public read-only HTTPS git URL to use for the new crev-proofs repo
id::set-url() {
    :;
}
# }}} cargo crev id set-url

# {{{ cargo crev id switch
# @cmd Change current Id
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
# @arg id!              Id to switch to
id::switch() {
    :;
}
# }}} cargo crev id switch

# {{{ cargo crev id trust
# @cmd Trust an Id
# @flag -h --help            Prints help information
# @flag --no-commit          Don't auto-commit local Proof Repository
# @flag --no-store           Don't store the proof
# @flag --overrides          Enable overrides suggestions
# @flag --print-signed       Print signed proof content on stdout
# @flag --print-unsigned     Print unsigned proof content on stdout
# @flag -V --version         Prints version information
# @option --level <level>    Shortcut for setting trust level without editing
# @arg public-ids+           Public IDs to create Trust Proof for
id::trust() {
    :;
}
# }}} cargo crev id trust

# {{{ cargo crev id untrust
# @cmd Untrust (remove) trust
# @flag -h --help            Prints help information
# @flag --no-commit          Don't auto-commit local Proof Repository
# @flag --no-store           Don't store the proof
# @flag --overrides          Enable overrides suggestions
# @flag --print-signed       Print signed proof content on stdout
# @flag --print-unsigned     Print unsigned proof content on stdout
# @flag -V --version         Prints version information
# @option --level <level>    Shortcut for setting trust level without editing
# @arg public-ids+           Public IDs to create Trust Proof for
id::untrust() {
    :;
}
# }}} cargo crev id untrust
# }} cargo crev id

# {{ cargo crev proof
# @cmd Find a proof in the proof repo
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
proof() {
    :;
}

# {{{ cargo crev proof find
# @cmd Find a proof
# @flag -h --help              Prints help information
# @flag -V --version           Prints version information
# @option --author <author>    Find a proof by a crev Id
# @option --crate <crate>
# @option --vers <vers>
proof::find() {
    :;
}
# }}} cargo crev proof find

# {{{ cargo crev proof reissue
# @cmd Reissue proofs with current id
# @flag -h --help                Prints help information
# @flag --no-commit              Don't auto-commit local Proof Repository
# @flag --no-store               Don't store the proof
# @flag --print-signed           Print signed proof content on stdout
# @flag --print-unsigned         Print unsigned proof content on stdout
# @flag --skip-reissue-check     Skip check if we already reissued a review using the current id
# @flag -V --version             Prints version information
# @option --author <author>      Reissue all proofs by a crev Id.
# @option --comment <comment>    Comment for human readers.
# @option --crate <crate>
# @option --vers <vers>
# @arg author!
# @arg comment!
proof::reissue() {
    :;
}
# }}} cargo crev proof reissue
# }} cargo crev proof

# {{ cargo crev repo
# @cmd Proof Repository
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
repo() {
    :;
}

# {{{ cargo crev repo dir
# @cmd Print the dir containing local copy of the proof repository
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
repo::dir() {
    :;
}
# }}} cargo crev repo dir

# {{{ cargo crev repo edit
# @cmd Edit README.md of the current Id, ...
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
repo::edit() {
    :;
}

# {{{{ cargo crev repo edit known
# @cmd Edit your KNOWN_CRATE_OWNERS.md file
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
repo::edit::known() {
    :;
}
# }}}} cargo crev repo edit known

# {{{{ cargo crev repo edit readme
# @cmd Edit your README.md file
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
repo::edit::readme() {
    :;
}
# }}}} cargo crev repo edit readme
# }}} cargo crev repo edit

# {{{ cargo crev repo fetch
# @cmd Fetch proofs from external sources
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
repo::fetch() {
    :;
}

# {{{{ cargo crev repo fetch all
# @cmd Fetch all previously retrieved public proof repositories
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
repo::fetch::all() {
    :;
}
# }}}} cargo crev repo fetch all

# {{{{ cargo crev repo fetch trusted
# @cmd Parameters describing trust graph traversal
# @flag --direct                             [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                            Prints help information
# @flag -V --version                         Prints version information
# @option --depth <depth>                    [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>    [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --for-id <for-id>
# @option --high-cost <high-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --medium-cost <medium-cost>        [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
repo::fetch::trusted() {
    :;
}
# }}}} cargo crev repo fetch trusted

# {{{{ cargo crev repo fetch url
# @cmd Fetch from a single public proof repository
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
# @arg url!             URL to public proof repository
repo::fetch::url() {
    :;
}
# }}}} cargo crev repo fetch url
# }}} cargo crev repo fetch

# {{{ cargo crev repo git
# @cmd Run raw git commands in the local proof repository
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
# @arg args+            Arguments to the `git` command
repo::git() {
    :;
}
# }}} cargo crev repo git

# {{{ cargo crev repo import
# @cmd Import proofs
# @flag -h --help           Prints help information
# @flag --no-commit         Don't auto-commit local Proof Repository
# @flag --no-store          Don't store the proof
# @flag --print-signed      Print signed proof content on stdout
# @flag --print-unsigned    Print unsigned proof content on stdout
# @flag --reset-date        Reset proof date to current date
# @flag -V --version        Prints version information
repo::import() {
    :;
}
# }}} cargo crev repo import

# {{{ cargo crev repo publish
# @cmd Publish to remote repository
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
repo::publish() {
    :;
}
# }}} cargo crev repo publish

# {{{ cargo crev repo query
# @cmd Query proofs
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
repo::query() {
    :;
}

# {{{{ cargo crev repo query advisory
# @cmd Query applicable advisories
# @flag -h --help         Prints help information
# @flag -u --unrelated    This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version      Prints version information
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
repo::query::advisory() {
    :;
}
# }}}} cargo crev repo query advisory

# {{{{ cargo crev repo query issue
# @cmd Query applicable issues
# @flag --direct                             [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                            Prints help information
# @flag -u --unrelated                       This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version                         Prints version information
# @option --depth <depth>                    [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>    [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --high-cost <high-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --medium-cost <medium-cost>        [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
# @option --trust <trust-level>              Minimum trust level of the reviewers for reviews [default: none]
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
repo::query::issue() {
    :;
}
# }}}} cargo crev repo query issue

# {{{{ cargo crev repo query review
# @cmd Query reviews
# @flag -h --help         Prints help information
# @flag -u --unrelated    This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version      Prints version information
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
repo::query::review() {
    :;
}
# }}}} cargo crev repo query review
# }}} cargo crev repo query

# {{{ cargo crev repo update
# @cmd Update data from online sources (proof repositories, crates.io)
# @flag --all-features                           [cargo] Activate all available features
# @flag --dev-dependencies                       [cargo] Activate dev dependencies
# @flag -h --help                                Prints help information
# @flag --no-default-features                    [cargo] Do not activate the `default` feature
# @flag --no-dev-dependencies                    [cargo] Skip dev dependencies
# @flag -V --version                             Prints version information
# @option --features*,[`_choice_feature`]        [cargo] Space-separated list of features to activate
# @option --manifest-path <PATH>                 [cargo] Path to Cargo.toml
# @option --target[`_choice_target`] <target>    [cargo] Skip targets other than specified (no value = autodetect)
# @option -Z --unstable-flags* <FLAG>            [cargo] Unstable (nightly-only) flags to Cargo
repo::update() {
    :;
}
# }}} cargo crev repo update
# }} cargo crev repo

# {{ cargo crev trust
# @cmd Add a Trust proof by an Id or a URL
# @flag -h --help             Prints help information
# @flag --no-commit           Don't auto-commit local Proof Repository
# @flag --no-store            Don't store the proof
# @flag --overrides           Enable overrides suggestions
# @flag --print-signed        Print signed proof content on stdout
# @flag --print-unsigned      Print unsigned proof content on stdout
# @flag -V --version          Prints version information
# @option --level <level>     Shortcut for setting trust level without editing.
# @arg public-ids-or-urls+    Public IDs or proof repo URLs to create Trust Proof for
trust() {
    :;
}
# }} cargo crev trust

# {{ cargo crev wot
# @cmd Web of Trust
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
wot() {
    :;
}

# {{{ cargo crev wot log
# @cmd Parameters describing trust graph traversal
# @flag --direct                             [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                            Prints help information
# @flag -V --version                         Prints version information
# @option --depth <depth>                    [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>    [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --for-id <for-id>                  Root identity to calculate the Web of Trust for [default: current user id]
# @option --high-cost <high-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --medium-cost <medium-cost>        [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>            [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
wot::log() {
    :;
}
# }}} cargo crev wot log
# }} cargo crev wot

# {{ cargo crev goto
# @cmd Shortcut for `crate goto`
# @flag -h --help         Prints help information
# @flag -u --unrelated    This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version      Prints version information
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
goto() {
    :;
}
# }} cargo crev goto

# {{ cargo crev open
# @cmd Shortcut for `crate open`
# @flag --cmd-save                 Save the `--cmd` argument to be used a default in the future
# @flag -h --help                  Prints help information
# @flag -u --unrelated             This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version               Prints version information
# @option --diff <base-version>    Review the delta since the given version
# @option --cmd <cmd>              Shell command to execute with crate directory as an argument.
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
open() {
    :;
}
# }} cargo crev open

# {{ cargo crev publish
# @cmd Shortcut for `repo publish`
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
publish() {
    :;
}
# }} cargo crev publish

# {{ cargo crev review
# @cmd Shortcut for `crate review`
# @flag --advisory                               Create advisory urging to upgrade to a safe version
# @flag --all-features                           [cargo] Activate all available features
# @flag --dev-dependencies                       [cargo] Activate dev dependencies
# @flag -h --help                                Prints help information
# @flag --issue                                  Flag the crate as buggy/low-quality/dangerous
# @flag --no-commit                              Don't auto-commit local Proof Repository
# @flag --no-default-features                    [cargo] Do not activate the `default` feature
# @flag --no-dev-dependencies                    [cargo] Skip dev dependencies
# @flag --no-store                               Don't store the proof
# @flag --overrides                              Enable overrides suggestions
# @flag --print-signed                           Print signed proof content on stdout
# @flag --print-unsigned                         Print unsigned proof content on stdout
# @flag --skip-activity-check
# @flag -u --unrelated                           This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version                             Prints version information
# @option --affected <affected>                  This release contains advisory (important fix)
# @option --diff <base-version>                  Review the delta since the given version
# @option --features*,[`_choice_feature`]        [cargo] Space-separated list of features to activate
# @option --manifest-path <PATH>                 [cargo] Path to Cargo.toml
# @option --severity <severity>                  Severity of bug/security issue [none low medium high]
# @option --target[`_choice_target`] <target>    [cargo] Skip targets other than specified (no value = autodetect)
# @option -Z --unstable-flags* <FLAG>            [cargo] Unstable (nightly-only) flags to Cargo
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
review() {
    :;
}
# }} cargo crev review

# {{ cargo crev update
# @cmd Shortcut for `repo update`
# @flag --all-features                           [cargo] Activate all available features
# @flag --dev-dependencies                       [cargo] Activate dev dependencies
# @flag -h --help                                Prints help information
# @flag --no-default-features                    [cargo] Do not activate the `default` feature
# @flag --no-dev-dependencies                    [cargo] Skip dev dependencies
# @flag -V --version                             Prints version information
# @option --features*,[`_choice_feature`]        [cargo] Space-separated list of features to activate
# @option --manifest-path <PATH>                 [cargo] Path to Cargo.toml
# @option --target[`_choice_target`] <target>    [cargo] Skip targets other than specified (no value = autodetect)
# @option -Z --unstable-flags* <FLAG>            [cargo] Unstable (nightly-only) flags to Cargo
update() {
    :;
}
# }} cargo crev update

# {{ cargo crev verify
# @cmd Shortcut for `crate verify`
# @flag --all-features                             [cargo] Activate all available features
# @flag --dev-dependencies                         [cargo] Activate dev dependencies
# @flag --direct                                   [trust-graph-traversal] Consider only direct trust relationships
# @flag -h --help                                  Prints help information
# @flag -i --interactive
# @flag --no-default-features                      [cargo] Do not activate the `default` feature
# @flag --no-dev-dependencies                      [cargo] Skip dev dependencies
# @flag --recursive                                Calculate recursive metrics for your packages
# @flag --show-all                                 Show all
# @flag --skip-indirect                            Skip dependencies that are not direct
# @flag --skip-known-owners                        Skip crate from known owners (use `edit known` to edit the list)
# @flag --skip-verified                            Display only crates not passing the verification
# @flag -u --unrelated                             This crate is not neccesarily a dependency of the current cargo project
# @flag -V --version                               Prints version information
# @option --depth <depth>                          [trust-graph-traversal] Maximum allowed distance from the root identity when traversing trust graph [default: 20]
# @option --distrust-cost <distrust-cost>          [trust-graph-traversal] Cost of traversing trust graph edge of distrust trust level [default: 21]
# @option --features*,[`_choice_feature`]          [cargo] Space-separated list of features to activate
# @option --for-id <for-id>                        Root identity to calculate the Web of Trust for [default: current user id]
# @option --high-cost <high-cost>                  [trust-graph-traversal] Cost of traversing trust graph edge of high trust level [default: 0]
# @option --low-cost <low-cost>                    [trust-graph-traversal] Cost of traversing trust graph edge of low trust level [default: 5]
# @option --manifest-path <PATH>                   [cargo] Path to Cargo.toml
# @option --medium-cost <medium-cost>              [trust-graph-traversal] Cost of traversing trust graph edge of medium trust level [default: 1]
# @option --none-cost <none-cost>                  [trust-graph-traversal] Cost of traversing trust graph edge of none trust level [default: 21]
# @option --redundancy <redundancy>                Number of reviews required [default: 1]
# @option --show-digest <show-digest>              Show crate content digest
# @option --show-downloads <show-downloads>        Show crate download counts
# @option --show-flags <show-flags>                Show crate flags
# @option --show-geiger <show-geiger>              Show geiger (unsafe lines) count
# @option --show-issues <show-issues>              Show count of issues reported
# @option --show-latest-trusted <show-latest-trusted>  Show latest trusted version
# @option --show-leftpad-index <show-leftpad-index>  Show crate leftpad index (recent downloads / loc)
# @option --show-loc <show-loc>                    Show Lines of Code
# @option --show-owners <show-owners>              Show crate owners counts
# @option --show-reviews <show-reviews>            Show reviews count
# @option --target[`_choice_target`] <target>      [cargo] Skip targets other than specified (no value = autodetect)
# @option --thoroughness <thoroughness-level>      Required thoroughness [default: none]
# @option --trust <trust-level>                    Minimum trust level required [default: low]
# @option --understanding <understanding-level>    Required understanding [default: none]
# @option -Z --unstable-flags* <FLAG>              [cargo] Unstable (nightly-only) flags to Cargo
# @option -v --vers <version>
# @arg name!
# @arg version-positional!
verify() {
    :;
}
# }} cargo crev verify

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_feature() {
    _helper_package_json | yq '.features | keys | .[]'
}

_choice_target() {
    rustup target list --installed
}

_helper_metadata_json() {
    cargo metadata --format-version 1 --no-deps
}

_helper_package_json() {
    metadata_json="$(_helper_metadata_json)"
    if [[ -n "$argc_package" ]]; then
        echo "$metadata_json" | yq '.packages[] | select(.name == "'"$argc_package"'")'
    else
        workspace_root="$(echo "$metadata_json" | yq '.workspace_root')"
        manifest_path="$(_argc_util_path_resolve -p "$workspace_root" Cargo.toml)"
        echo "$metadata_json" | yq '.packages[] | select(.manifest_path == "'"$manifest_path"'")'
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"