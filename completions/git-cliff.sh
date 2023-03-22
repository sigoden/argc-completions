#!/usr/bin/env bash
# Generated with `./generate.sh --spec=clap git-cliff`. DON'T MODIFY IT

# @flag -v --verbose
# @flag -i --init
# @flag -l --latest
# @flag --current
# @flag -u --unreleased
# @flag --topo-order
# @flag --context
# @option -c --config <PATH>
# @option -w --workdir <PATH>
# @option -r --repository* <PATH>
# @option --include-path* <PATTERN>
# @option --exclude-path* <PATTERN>
# @option --with-commit* <MSG>
# @option -p --prepend <PATH>
# @option -o --output <PATH>
# @option -t --tag
# @option -b --body <TEMPLATE>
# @option -s --strip[header|footer|all] <PART>
# @option --sort[oldest|newest]
# @arg range

eval "$(argc "$0" "$@")"