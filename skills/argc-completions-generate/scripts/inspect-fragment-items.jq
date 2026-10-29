# Compact, read-only view of one fragment.
# Usage: jq -r -f scripts/inspect-fragment-items.jq <fragment.json>
#
# Prints one header line, then one TSV row per item:
#   kind  names  notation  choice_fn  choices  prefixed  delimiter  terminated
# Use this instead of reading the whole fragment JSON.

def item_names: ((.names // [.name]) | map(select(. != null)) | join(","));
def item_notation: (.notation // ((.notations // []) | join(" ")) // "");

"items=\(.items | length) subcommands=\(.subcommands | length) choice_fns=\([.items[] | select(.choice_fn != null)] | length)",
(.items[]
 | [.kind, item_names, item_notation, (.choice_fn // ""), ((.choices // []) | map(.value) | join("|")),
    ((.prefixed // false) | tostring), (.delimiter // ""), ((.terminated // false) | tostring)]
 | @tsv)
