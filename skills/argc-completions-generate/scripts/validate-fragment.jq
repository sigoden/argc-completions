# Validate one argc JSON fragment. Returns true on success, raises an error
# otherwise. The caller passes --arg key "<path segments joined by |>" so the
# fragment path can be checked against its location in the cache directory.
def fail($m): error($m);
def is_str: type == "string";
def is_arr: type == "array";
def is_obj: type == "object";
def no_nl: is_str and (test("[\\r\\n]") | not);
def no_tick: is_str and (test("`") | not);
def no_tab: is_str and (test("\\t") | not);
def cmd_name: no_nl and test("^[-A-Za-z0-9_][A-Za-z0-9_.:+@-]*$");
def opt_name: no_nl and no_tick and test("^[-+][^[:space:]`|]+$");
def short_name: test("^[-+][^-]$");
def extra_name: test("^[-+][^-]$") or test("^--.") or test("^-[^-].+$");
def arg_name: no_nl and no_tick and test("^[A-Za-z0-9_][A-Za-z0-9_.-]*$");
def meta_key: no_nl and no_tick and test("^[A-Za-z0-9_][A-Za-z0-9_.:-]*$");
def choice_fn_ok: . == null or (no_nl and no_tick and test("^[A-Za-z_][A-Za-z0-9_]*$"));
def notation_ok: no_nl and no_tick and test("^<[^<>`]+>$");
def notation_modifier:
  if notation_ok then
    (.[1:-1]) as $inner
    | if ($inner | endswith("*")) or ($inner | endswith("+")) or ($inner | endswith("?"))
      then $inner[-1:] else "" end
  else "" end;
def notation_has_modifier: (notation_modifier | length) > 0;
def notation_base_ok:
  notation_ok
  and ((.[1:-1] | if endswith("*") or endswith("+") or endswith("?") then .[0:-1] else . end | length) > 0);
def choice_text_ok: is_str and no_nl and no_tick and no_tab and (test("[[:cntrl:]]") | not);
def choice_value_ok:
  choice_text_ok and (test("\\|") | not) and (test("\\]") | not)
  and (test("^[[:space:]]|[[:space:]]$") | not) and (length > 0);
def choice_obj_ok:
  is_obj and ((keys_unsorted - ["value", "description"]) | length == 0)
  and ((.value // null) | choice_value_ok)
  and ((.description // null) | choice_text_ok);
def choices_valid:
  if (is_arr and all(.[]; choice_obj_ok)) then
    (map(.value) | (length == (unique | length)))
  else false end;
def choices_shape($i):
  if type != "array" then fail("items[\($i)]: choices must be an array")
  elif any(.[]; type != "object") then
    fail("items[\($i)]: choices entries must be objects {value, description}")
  elif any(.[]; (keys_unsorted - ["value", "description"]) | length > 0) then
    fail("items[\($i)]: choices entries may only contain value and description")
  else . end;
def description_ok: no_nl and no_tick;
def trim_space: gsub("^[[:space:]]+|[[:space:]]+$"; "");
def unquote_choice:
  if length > 1 and ((startswith("\"") and endswith("\"")) or (startswith("'") and endswith("'")))
  then .[1:-1] else . end;
def choice_value:
  trim_space
  | if startswith("=") then .[1:] else . end
  | trim_space
  | unquote_choice;
def choice_values:
  [ splits("[|,]") | choice_value | select(length > 0) ] | sort;
def grouped_texts:
  [ (. // "") | match("\\(([^()]*)\\)"; "g") | .captures[0].string ]
  + [ (. // "") | match("\\[([^\\[\\]]*)\\]"; "g") | .captures[0].string ]
  + [ (. // "") | match("\\{([^{}]*)\\}"; "g") | .captures[0].string ];
def choice_echoes:
  if ((.choices // []) | length) == 0 then []
  else
    ((.choices // []) | map(.value) | map(choice_value) | sort) as $want
    | [ (.description | grouped_texts)[] | select(choice_values == $want) ]
  end;
def only($allowed; $where):
  if type != "object" then fail("\($where): expected object")
  else
    (keys_unsorted - $allowed) as $extra
    | if ($extra | length) > 0
      then fail("\($where): unknown fields: \($extra | join(","))")
      else .
      end
  end;
def meta_ok:
  if . == null then true
  elif (is_arr and all(.[]; (is_obj and ((keys_unsorted - ["key", "value"]) | length == 0)))) then
    all(.[]; (.key | meta_key) and ((.value // "") | is_str and no_nl))
  else false end;
def subcommands_ok:
  if . == null then true
  elif (is_arr and all(.[]; (is_obj and ((keys_unsorted - ["name", "aliases", "description", "status"]) | length == 0)))) then
    all(.[];
      (.name | cmd_name) and
      (.name != "_root") and
      ((.aliases // []) | is_arr and all(.[]; cmd_name)) and
      ((.description // "") | is_str and description_ok) and
      ((.status // "todo") | . == "todo" or . == "succeeded" or . == "failed")
    )
  else false end;
# argc drops the second name and the item's choice when a multi-character
# single-dash name comes first or when two names are not in argc order, so the
# shape is validated here instead of being lost during assembly.
def names_order($i):
  if (has("names") and ((.names | type) == "array") and ((.names | length) == 2)) then
    if ((.names[0] // "") | short_name | not) then
      fail("items[\($i)]: with two names the first must be a one-character short name such as -x: \(.names[0])")
    elif ((.names[1] // "") | extra_name | not) then
      fail("items[\($i)]: invalid second name: \(.names[1])")
    else true end
  else true end;
def item_base($i):
  only(["kind", "names", "repeatable", "notations", "choices", "choice_fn", "description", "name", "required", "notation", "prefixed", "delimiter", "terminated"]; "items[\($i)]") as $it
  | ($it | names_order($i)) as $names_ok
  | ($it | (.choices // []) | choices_shape($i)) as $choices_shape
  | (if ($it | (.choices // []) | choices_valid) then true
     else fail("items[\($i)]: invalid choices: each entry must be {value, description} with a distinct non-empty value and no |, ], tab, newline, backtick, or control characters")
     end) as $choices_ok
  | ((($it.description // "") | is_str and description_ok)
     and (($it.choice_fn // null) | choice_fn_ok)
     and $names_ok) as $ok
  | if ($ok | not) then
      fail("items[\($i)]: invalid description or choice_fn")
    else
      ($it | choice_echoes) as $echoes
      | if ($echoes | length) > 0 then
          fail("items[\($i)]: description repeats choices: \($echoes | join(", "))")
        else $it
        end
    end;
def has_prefixed: has("prefixed") and (.prefixed == true);
def notations_single:
  ((.notations // []) | type == "array") and (((.notations // []) | length) <= 1);
def flag_option_names_ok:
  if (.names | type) == "array" then
    if has_prefixed then
      ((.names | length) == 1) and (((.names[0] // "") | endswith("-")) | not)
    else
      all(.names[]; (endswith("-") | not))
    end
  else false end;
# argc reads a trailing "~" as the terminated marker, so a name may end in "~"
# only when it is the literal "-~"/"+~" first name of a two-name item.
def tilde_names_ok:
  ((.names // []) | map(select((type == "string") and endswith("~")))) as $tilde
  | if ($tilde | length) == 0 then true
    else
      ((.names | length) == 2)
      and ((.names[0] == "-~") or (.names[0] == "+~"))
      and (((.names[1] // "") | endswith("~")) | not)
    end;
def option_prefixed_ok:
  if (has("prefixed") | not) then true
  elif (.prefixed | type) == "boolean" then
    if .prefixed then notations_single else true end
  else false end;
def delimiter_value_ok:
  if (has("delimiter") | not) then true
  elif .delimiter == null then true
  elif (.delimiter | type) == "string" then
    ((.delimiter | length) == 1) and
    (.delimiter | test("^[,:;@|/]$")) and
    (.repeatable == true)
  else false end;
def option_delimiter_ok:
  (delimiter_value_ok) and
  (if ((.delimiter // null) != null) then notations_single else true end);
def arg_delimiter_ok: delimiter_value_ok;
# "~" captures every following argument as the option/arg value. argc renders it
# after the name, so it cannot combine with repeatable, prefixed, or delimiter.
def terminated_ok:
  if (has("terminated") | not) then true
  elif (.terminated | type) != "boolean" then false
  elif .terminated then
    (.kind != "flag") and (.repeatable != true) and
    ((.prefixed // false) != true) and ((.delimiter // null) == null)
  else true end;
# argc allows a notation modifier (* + ?) only on @option, and only on the
# final notation; @arg expresses optional/variadic values with
# required/repeatable instead.
def option_notation_modifiers_ok($i):
  if ((.notations // []) | type) != "array" then true
  else
    (.notations // []) as $n
    | ($n | length) as $len
    | if $len == 0 then true
      elif any($n[0:($len - 1)][]; notation_has_modifier) then
        fail("items[\($i)]: only the final option notation may carry a * + ? modifier")
      elif (($n[$len - 1]) | notation_has_modifier) and ((($n[$len - 1]) | notation_base_ok) | not) then
        fail("items[\($i)]: notation modifier requires a value name")
      else true end
  end;
def arg_notation_modifier_ok($i):
  if ((.notation // null) | type) != "string" then true
  elif (.notation | notation_has_modifier) then
    fail("items[\($i)]: arg notation must not carry a * + ? modifier; use repeatable/required")
  else true end;
def item_ok($i):
  item_base($i) as $it
  | ($it.kind) as $k
  | if $k == "flag" then
      (($it.names // null) | is_arr and length >= 1 and length <= 2 and all(.[]; opt_name)) and
      (($it.repeatable // false) | type == "boolean") and
      (($it.choices // []) | length == 0) and
      (($it.choice_fn // null) == null) and
      (($it.notations // []) | length == 0) and
      (($it.name // null) == null) and
      (($it | has("required")) | not) and
      (($it.notation // null) == null) and
      ($it | flag_option_names_ok) and
      ($it | tilde_names_ok) and
      (($it | has("prefixed")) | not) and
      (($it | has("delimiter")) | not) and
      (($it | has("terminated")) | not)
    elif $k == "option" then
      (($it.names // null) | is_arr and length >= 1 and length <= 2 and all(.[]; opt_name)) and
      (($it.repeatable // false) | type == "boolean") and
      (($it.notations // []) | is_arr and all(.[]; notation_ok)) and
      ($it | option_notation_modifiers_ok($i)) and
      (($it.name // null) == null) and
      (($it | has("required")) | not) and
      (($it.notation // null) == null) and
      ($it | flag_option_names_ok) and
      ($it | tilde_names_ok) and
      ($it | option_prefixed_ok) and
      ($it | option_delimiter_ok) and
      ($it | terminated_ok)
    elif $k == "arg" then
      (($it.name // null) | arg_name) and
      (($it.repeatable // false) | type == "boolean") and
      (($it | has("required")) and (($it.required) | type == "boolean")) and
      (($it.notation // null) | . == null or notation_ok) and
      ($it | arg_notation_modifier_ok($i)) and
      (($it.names // null) == null) and
      (($it.notations // []) | length == 0) and
      (($it | has("prefixed")) | not) and
      ($it | arg_delimiter_ok) and
      ($it | terminated_ok)
    else false end;

. as $frag
| only(["schemaVersion", "path", "description", "aliases", "meta", "items", "subcommands", "source", "notes"]; "fragment")
| if .schemaVersion != 1 then fail("schemaVersion must be 1") else . end
| if (.path | is_arr and length > 0) then . else fail("path must be a non-empty array") end
| if (.path | all(.[]; cmd_name and . != "_root")) then . else fail("invalid path") end
| if ((.path | join("|")) == $key) then . else fail("path mismatch: expected \($key), got \(.path | join("|"))") end
| if ((.description // "") | is_str and description_ok) then . else fail("description must be a single-line string") end
| if ((.aliases // []) | is_arr and all(.[]; cmd_name)) then . else fail("invalid aliases") end
| if ((.meta // []) | meta_ok) then . else fail("invalid meta") end
| if ((.items // []) | is_arr) then . else fail("items must be an array") end
| if ((.subcommands // []) | subcommands_ok) then . else fail("invalid subcommands") end
| if ((.source // {}) | is_obj) then . else fail("source must be an object") end
| if ((.notes // "") | is_str and no_nl) then . else fail("notes must be a single-line string") end
| if ((.items // []) | all(to_entries[]; .key as $i | .value | item_ok($i))) then true else fail("invalid items") end
