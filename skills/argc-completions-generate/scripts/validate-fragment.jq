# Read one argc JSON fragment: validate its schema, and (in the records modes)
# render every derived field it contributes to a completion script.
#
# Modes, selected with `--arg mode`:
#   (absent) / validate  the schema verdict the compile subagent runs: true on
#                        success, an error otherwise
#   records              validate and print the record stream in one invocation,
#                        which is what assembly, finalize-cache and
#                        check-fragment consume
#   extract              print the record stream without the verdict, for a
#                        caller that checks individual fields itself
#
# The caller passes --arg key "<path segments joined by |>" so the fragment path
# can be checked against its location in the cache directory; the key also names
# the generated static-choice functions. The record format lives in
# fragment-records-rules.jq, and the rules themselves stay in this program.
#
# Run it with `jq -L <this directory>` (scripts/lib.sh provides jq_skill) so the
# shared description rules resolve.
include "description-rules";
include "fragment-records-rules";

def fail($m): error($m);
def is_arr: type == "array";
def is_obj: type == "object";
def cmd_name: no_nl and test("^[-A-Za-z0-9_][A-Za-z0-9_.:+@-]*$");
def hex64: test("^[0-9a-f]{64}$");
def source_command_ok:
  is_str
  and length > 0
  and test("\\S")
  and (test("[[:cntrl:]]") | not);
def opt_name: no_nl and no_tick and test("^[-+][^[:space:]`|]+$");
def name_ok:
  if type == "string" then opt_name else false end;
# A positive spelling and its negated form are two parameters, so one item may
# not carry both: --foo and --no-foo must be separate items.
def negated_spellings($names):
  [ $names[] | select(type == "string" and test("^--no-.")) | .[5:] ] as $rests
  | [ $rests[]
      | . as $rest
      | select(any($names[]; . == "--" + $rest))
      | "--no-" + $rest ];
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
# Any number of names in any order is valid now, so the schema only rejects
# shapes argc cannot represent: an empty or non-array list, a malformed name,
# a duplicate spelling, or aliases on a prefixed option.
def names_shape($i):
  if (has("names") | not) then true
  elif (.names | type) != "array" then
    fail("items[\($i)]: names must be an array")
  elif (.names | length) < 1 then
    fail("items[\($i)]: names must contain at least one name")
  elif any(.names[]; (name_ok | not)) then
    fail("items[\($i)]: invalid name: \(.names | map(select(name_ok | not)) | .[0])")
  elif ((.names | unique | length) != (.names | length)) then
    fail("items[\($i)]: duplicate name: \(.names | group_by(.) | map(select(length > 1) | .[0]) | join(","))")
  elif ((negated_spellings(.names)) | length) > 0 then
    fail("items[\($i)]: negated and positive spellings must be separate items: \(negated_spellings(.names) | join(", "))")
  elif ((.prefixed // false) and ((.names | length) != 1)) then
    fail("items[\($i)]: a prefixed option must have exactly one name")
  else true end;
def item_base($i):
  only(["kind", "names", "repeatable", "notations", "choices", "choice_fn", "description", "name", "required", "notation", "prefixed", "delimiter", "terminated"]; "items[\($i)]") as $it
  | ($it | names_shape($i)) as $names_ok
  | ($it | (.choices // []) | choices_shape($i)) as $choices_shape
  | (if ($it | (.choices // []) | choices_valid) then true
     else fail("items[\($i)]: invalid choices: each entry must be {value, description} with a distinct non-empty value and no |, ], tab, newline, backtick, or control characters")
     end) as $choices_ok
  | ((($it.description // "") | is_str and description_ok)
     and (($it.choice_fn // null) | choice_fn_ok)
     and $names_ok) as $ok
  | if ($ok | not) then
      fail("items[\($i)]: invalid description or choice_fn (description: one line, one sentence, no backticks, no machine-local path; see scripts/normalize-description.sh)")
    else
      ($it | choice_echoes) as $echoes
      | if ($echoes | length) > 0 then
          fail("items[\($i)]: description repeats choices: \($echoes | join(", "))")
        elif ($it | colon_echo) then
          fail("items[\($i)]: description repeats choices in a colon list; keep only the lead-in")
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
# only when it is the literal "-~"/"+~".
def tilde_names_ok($i):
  ((.names // []) | map(select((type == "string") and endswith("~") and . != "-~" and . != "+~"))) as $bad
  | if ($bad | length) == 0 then true
    else fail("items[\($i)]: a name other than -~/+~ must not end in ~: \($bad | .[0])") end;
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
      (($it.names // null) | is_arr and length >= 1 and all(.[]; opt_name)) and
      (($it.repeatable // false) | type == "boolean") and
      (($it.choices // []) | length == 0) and
      (($it.choice_fn // null) == null) and
      (($it.notations // []) | length == 0) and
      (($it.name // null) == null) and
      (($it | has("required")) | not) and
      (($it.notation // null) == null) and
      ($it | flag_option_names_ok) and
      ($it | tilde_names_ok($i)) and
      (($it | has("prefixed")) | not) and
      (($it | has("delimiter")) | not) and
      (($it | has("terminated")) | not)
    elif $k == "option" then
      (($it.names // null) | is_arr and length >= 1 and all(.[]; opt_name)) and
      (($it.repeatable // false) | type == "boolean") and
      (($it.notations // []) | is_arr and all(.[]; notation_ok)) and
      ($it | option_notation_modifiers_ok($i)) and
      (($it.name // null) == null) and
      (($it | has("required")) | not) and
      (($it.notation // null) == null) and
      ($it | flag_option_names_ok) and
      ($it | tilde_names_ok($i)) and
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

# No `. as $x` binding here: a dead binding turns the rest of the program into a
# closure, and jq 1.8.2 then spends ~15ms compiling it on every invocation. Do
# not reintroduce it without re-measuring.
def validate($key):
  .
  | only(["schemaVersion", "path", "description", "aliases", "meta", "items", "subcommands", "source", "hash", "notes"]; "fragment")
  | if .schemaVersion != 1 then fail("schemaVersion must be 1") else . end
  | if (.path | is_arr and length > 0) then . else fail("path must be a non-empty array") end
  | if (.path | all(.[]; cmd_name and . != "_root")) then . else fail("invalid path") end
  | if ((.path | join("|")) == $key) then . else fail("path mismatch: expected \($key), got \(.path | join("|"))") end
  | if ((.description // "") | is_str and description_ok) then . else fail("description must be one line, one sentence, no backticks, no machine-local path") end
  | if ((.aliases // []) | is_arr and all(.[]; cmd_name)) then . else fail("invalid aliases") end
  | if ((.meta // []) | meta_ok) then . else fail("invalid meta") end
  | if (((.path | length) > 1) and ((.meta // []) | length > 0)) then fail("meta is root-only: a subcommand fragment must use meta: []") else . end
  | if ((.items // []) | is_arr) then . else fail("items must be an array") end
  | if ((.subcommands // []) | subcommands_ok) then . else fail("invalid subcommands") end
  | if ((.source // null) | is_obj) then . else fail("source must be an object") end
  | if ((.source.kind // null) | . == "help" or . == "man" or . == "none") then .
    else fail("source.kind must be help, man, or none") end
  | if (.hash | is_str) then . else fail("hash must be a string") end
  | if .source.kind == "none" then
      (if .hash == "" then . else fail("source.kind none requires an empty hash") end)
      | if (.source | has("command")) then fail("source.kind none must not have source.command") else . end
    else
      (if (.hash | hex64) then . else fail("hash must be 64 lowercase hex characters") end)
      | if (.source.command | source_command_ok) then . else fail("source.command must be a non-empty single-line shell expression") end
    end
  | if ((.notes // "") | is_str and no_nl) then . else fail("notes must be a single-line string") end
  | if ((.items // []) | all(to_entries[]; .key as $i | .value | item_ok($i))) then true else fail("invalid items") end
;

# records renders only after the verdict, so both modes reject exactly the same
# fragments with exactly the same message.
if ($ARGS.named.mode // "validate") == "records" then
    validate($key) as $verdict
    | if $verdict == true then fragment_records($key) else $verdict end
elif $ARGS.named.mode == "extract" then
    # Records without the schema verdict, for a caller that runs its own checks
    # over individual fields (verify-completion's provenance and cache hygiene).
    # The record stream is line-based and US-separated, so a control character
    # in source.command would corrupt every later record and could make a
    # truncated command look valid; reject it before rendering anything. A
    # `none` fragment must not carry a command at all.
    (if ((.source | type) == "object") then
         (if ((.source.kind // "") == "none") then
              (if (.source | has("command")) then
                   fail("source.kind none must not have source.command")
               else . end)
          elif ((.source.command // null) | source_command_ok) then .
          else fail("source.command must be a non-empty single-line shell expression") end)
     else . end)
    | fragment_records($key)
else
    validate($key)
end
