#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -y -yj    YAML to JSON (default)
# @flag -yy       YAML to YAML
# @flag -yt       YAML to TOML
# @flag -yc       YAML to HCL
# @flag -t -tj    TOML to JSON
# @flag -ty       TOML to YAML
# @flag -tt       TOML to TOML
# @flag -tc       TOML to HCL
# @flag -jj       JSON to JSON
# @flag -r -jy    JSON to YAML
# @flag -jt       JSON to TOML
# @flag -jc       JSON to HCL
# @flag -cy       HCL to YAML
# @flag -ct       HCL to TOML
# @flag -c -cj    HCL to JSON
# @flag -cc       HCL to HCL
# @flag -n        Do not covert inf, -inf, and NaN to/from strings (YAML or TOML only)
# @flag -e        Escape HTML (JSON out only)
# @flag -i        Indent output (JSON or TOML out only)
# @flag -k        Attempt to parse keys as objects or numeric types (YAML out only)
# @flag -h        Show this help message
# @flag -v        Show version

command eval "$(argc --argc-eval "$0" "$@")"