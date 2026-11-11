# Render every derived field of one argc JSON fragment as a record stream, so a
# caller needs one jq invocation per fragment instead of one per field.
#
# This is a module (definitions only): validate-fragment.jq is the program that
# includes it and exposes it as its `records` mode. The rules live there; this
# module only reads a fragment and never validates one.
#
# A record is one line; fields are separated by US (0x1f) and the record kind is
# the first field. A field that may legitimately contain US (body, description,
# meta value, source.section) always comes last, so a reader's final `read`
# variable absorbs any extra separator.
#
#   D  description                      normalized description, "" when absent
#   A  aliases-csv                      .aliases | join(",")
#   X  kind, hash, source.command, source.section
#                                       provenance fields shared by
#                                       check-fragment/fragment-hash/verify;
#                                       source.command is a shell expression
#   M  key, value                       one record per .meta[] entry
#   I  tag, desc, static_fn, terminated, described, body
#                                       one record per item, in the order
#                                       assembly renders them (flags/options
#                                       first, then args, each group stable)
#   R  choice_fn                        one record per non-null choice_fn
#   S  name, status, aliases-csv, description
#                                       one record per .subcommands[] entry
#                                       (declaration data owned by the parent)
#
# def fragment_records($key) is the entry point: $key is the fragment location
# key ("<path segments joined by |>"), which names the generated static-choice
# functions. The fr_ prefix keeps these defs from colliding with the schema
# rules in the including program (jq's `include` merges scopes).

def fr_sanitize: gsub("[^A-Za-z0-9_]"; "_");
def fr_param_label:
  if .kind == "arg" then (.name // "item")
  else
    (.names // []) as $names
    # Prefer a long name so a help order such as "--color, -c" still names the
    # generated function after the parameter, not after the short alias.
    | (([$names[] | select(type == "string" and startswith("--"))] | first) // $names[-1] // "item")
    | sub("^[-]+"; "") | sub("^\\++"; "")
    | if length == 0 then "item" else . end
  end;
def fr_described:
  ((.choice_fn // null) == null)
  and any((.choices // [])[]?; (.description // "") != "");
def fr_static_path($key): ($key | split("|") | .[1:] | join("_")) | fr_sanitize;
def fr_static_fn($key):
  (fr_static_path($key)) as $p
  | "_static_" + (if $p == "" then "" else $p + "_" end) + (fr_param_label | fr_sanitize);
def fr_body:
  ((.choices // []) | map(.value + "\t" + (.description // "")) | join("\u001e"));
def fr_choice_expr($fn):
  if (.choice_fn // null) != null then
    "[?`" + .choice_fn + "`]"
  elif fr_described then
    "[?`" + $fn + "`]"
  elif ((.choices // []) | length) > 0 then
    "[" + ((.choices // []) | map(.value) | join("|")) + "]"
  else "" end;
def fr_names: (.names // []) | join(" ");
def fr_option_names:
  (.names // []) as $names
  | if (.prefixed // false) then
      (($names[0] // "") + "-")
    else
      ($names | join(" "))
    end;
def fr_option_modifier:
  if (.repeatable // false) then
    "*" + (.delimiter // "")
  else
    ""
  end;
def fr_notations: (.notations // []) | join(" ");
def fr_desc: ((.description // "") | gsub("[\\r\\n\\t]+"; " ") | gsub("^ +| +$"; ""));
def fr_terminated_marker:
  if (.terminated // false) then "~" else "" end;
# A terminated arg renders "~" alone: argc rejects a combined suffix
# ("name!~"), so requiredness never reaches the tag.
def fr_arg_modifier:
  if (.terminated // false) then
    ""
  elif (.repeatable // false) then
    (if (.required // false) then "+" else "*" end) + (.delimiter // "")
  else
    (if (.required // false) then "!" else "" end)
  end;
def fr_tag($fn):
  if .kind == "flag" then
    "@flag " + fr_names + (if (.repeatable // false) then "*" else "" end) + fr_choice_expr($fn)
  elif .kind == "option" then
    "@option " + fr_option_names + fr_option_modifier + fr_terminated_marker + fr_choice_expr($fn)
    + (if ((.notations // []) | length) > 0 then " " + fr_notations else "" end)
  else
    "@arg " + (.name // "") + fr_arg_modifier + fr_terminated_marker + fr_choice_expr($fn)
    + (if ((.notation // "") | length) > 0 then " " + .notation else "" end)
  end;

def fragment_records($key):
  "D\u001f" + fr_desc,
  "A\u001f" + ((.aliases // []) | join(",")),
  ("X\u001f" + ((.source // {}) | .kind // "")
    + "\u001f" + (.hash // "")
    + "\u001f" + ((.source // {}) | .command // "")
    + "\u001f" + ((.source // {}) | .section // "")),
  ((.meta // [])[] | "M\u001f" + .key + "\u001f" + (.value // "")),
  # Tag order is an argc requirement: flags/options first, then args; each
  # group keeps fragment order (stable partition, no sorting).
  (((.items // []) | map(select(.kind != "arg")) + map(select(.kind == "arg")))[] as $item
    | ($item | fr_static_fn($key)) as $fn
    | ($item | if fr_described then $fn else "" end) as $static
    | "I\u001f" + ($item | fr_tag($static))
      + "\u001f" + ($item | fr_desc)
      + "\u001f" + $static
      + "\u001f" + ($item | if (.terminated // false) then "true" else "false" end)
      + "\u001f" + ($item | if fr_described then "1" else "0" end)
      + "\u001f" + ($item | if fr_described then fr_body else "" end)),
  ((.items // [])[] | .choice_fn? // empty | "R\u001f" + .),
  ((.subcommands // [])[]
    | "S\u001f" + .name
      + "\u001f" + (.status // "todo")
      + "\u001f" + ((.aliases // []) | join(","))
      + "\u001f" + (.description // ""));
