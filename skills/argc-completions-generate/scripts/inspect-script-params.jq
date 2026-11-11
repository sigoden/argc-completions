# List the value-taking parameters of one command in an argc completion export.
# Input: the JSON printed by `argc --argc-export <completion.sh>`.
# Usage: argc --argc-export <completion.sh> | jq -r -f inspect-script-params.jq [--arg cmd '<cmd path>']
#
# --arg cmd takes a whitespace-separated command path. The leading root name is
# optional and subcommand aliases are accepted. Without it the root command is
# used. An unknown path fails with the subcommands available at that point.
#
# Prints the resolved command in a '# command <path>' header, then value-taking
# options and positionals only; flags are omitted.
# Option row: id names notations choice describe prefixed delimiter terminated
# Positional row: id notation required multiple choice describe delimiter terminated
# Use this instead of dumping the full export JSON.

def export_names:
  if ((.names? | type) == "array") then .names
  else [(.short_name // ""), (.long_name // "")] | map(select(length > 0))
  end;

def resolve($segs; $path):
  if ($segs | length) == 0 then {cmd: ., path: $path}
  else
    . as $node
    | $segs[0] as $seg
    | ($node.subcommands // []) as $subs
    | ($subs | map(select(.name == $seg or ((.aliases // []) | index($seg)))) | .[0]) as $hit
    | if $hit == null then
        "unknown command path: \($path + $segs | join(" "))"
        + (if ($subs | length) == 0 then " (no subcommands)"
           else " (available: \($subs | map(.name) | join(", ")))" end)
        | error(.)
      else
        $hit | resolve($segs[1:]; $path + [$hit.name])
      end
  end;

. as $root
| (($ARGS.named.cmd // "") | [splits("\\s+")] | map(select(length > 0))) as $given
| (if ($given | length) > 0 and $given[0] == $root.name then $given[1:] else $given end) as $segs
| ($root | resolve($segs; [$root.name])) as $resolved
| "# command \($resolved.path | join(" "))",
  "# options",
  ($resolved.cmd.flag_options[]
   | select(.flag == false)
   | [.id, (export_names | join(" ")), ((.notations // []) | join(" ")),
      ((.choice // {}) | tostring), (.describe // ""),
      ((.prefixed // false) | tostring), (.delimiter // ""), ((.terminated // false) | tostring)]
   | @tsv),
  "# positionals",
  ($resolved.cmd.positionals[]
   | [.id, (.notation // ""), ((.required // false) | tostring), ((.multiple // false) | tostring),
      ((.choice // {}) | tostring), (.describe // ""), (.delimiter // ""), ((.terminated // false) | tostring)]
   | @tsv)
