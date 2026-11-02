# Description rules shared by scripts/validate-fragment.jq (acceptance) and
# scripts/normalize-description.sh (production, which inlines the include).
#
# The production pipeline is
#   flatten -> strip backticks -> trim -> drop machine-local paths
#   -> drop echoed enumerations -> first sentence -> drop echoed colon list
#   -> trim
# and the acceptance predicates test the properties that pipeline enforces.
# Both live here so a rule change cannot drift between the two.

def is_str: type == "string";
def no_nl: is_str and (test("[\\r\\n]") | not);
def no_tick: is_str and (test("`") | not);
def no_tab: is_str and (test("\\t") | not);
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
# Optional label that introduces an enumeration, such as "possible values:" or
# "one of:". A "default:" label never matches, so default text is kept.
def enumeration_label:
  "(?i)^(possible values?|values?|choices?|one of)[[:space:]]*:[[:space:]]*";
# Values of a candidate enumeration group or tail, with its label removed when
# one is present, so a labeled echo still compares equal to the choice set.
def echo_values:
  (if test(enumeration_label) then sub(enumeration_label; "") else . end)
  | choice_values;

# Machine-local paths: $HOME/..., /home/<user>/..., /Users/<user>/..., and
# C:\Users\<user>\..., plus the current home directory.
def home_path_ok:
  (env.HOME // "") as $home
  | (test("(^|[[:space:](\"'])(\\$HOME(/|$)|/home/[^/[:space:]]+/|/Users/[^/[:space:]]+/|C:\\\\Users\\\\)") | not)
    and (($home == "") or (contains($home + "/") | not));

def sentence_abbreviations: ["e.g", "i.e", "etc", "vs", "cf", "approx"];
# Codepoint offset of the first sentence boundary, or null. A boundary is a
# terminator after a word character or closing bracket, followed by a space or
# the end; CJK terminators need no space. Abbreviations and single letters
# before a period do not count.
def sentence_boundary:
  . as $s
  | [ match("(\\.|!|\\?)( |$)|。|！|？"; "g")
      | . as $m
      | ($m.string[0:1]) as $t
      | if ($t == "。" or $t == "！" or $t == "？") then $m.offset
        elif $m.offset == 0 then empty
        elif ($s[($m.offset - 1):$m.offset] | test("[[:space:].\\/(\\[{-]")) then empty
        else
          ($s[0:$m.offset] | split(" ") | map(select(length > 0)) | last // ""
           | sub("^[(\"'\\[{]+"; "")) as $word
          | if (($word | ascii_downcase) as $l | sentence_abbreviations | any(. == $l)) then empty
            elif (($word | length) == 1 and ($word | test("^[A-Za-z]$"))) then empty
            else $m.offset
            end
        end
    ]
  | .[0];
def single_sentence: sentence_boundary == null;

def choice_text_ok: is_str and no_nl and no_tick and no_tab and (test("[[:cntrl:]]") | not) and home_path_ok and single_sentence;
def description_ok: no_nl and no_tick and home_path_ok and single_sentence;

# Every non-nested (...) [...] {...} group in a description.
def grouped_texts:
  [ (. // "") | match("\\(([^()]*)\\)"; "g") | .captures[0].string ]
  + [ (. // "") | match("\\[([^\\[\\]]*)\\]"; "g") | .captures[0].string ]
  + [ (. // "") | match("\\{([^{}]*)\\}"; "g") | .captures[0].string ];
# Groups whose values are exactly the item's choice set.
def choice_echoes:
  if ((.choices // []) | length) == 0 then []
  else
    ((.choices // []) | map(.value) | map(choice_value) | sort) as $want
    | [ (.description | grouped_texts)[] | select(echo_values == $want) ]
  end;
# A trailing ":list" whose values equal the choice set, such as
# "Select sort: name,version"; the lead-in is what normalization keeps.
def colon_echo:
  if ((.choices // []) | length) == 0 then false
  else
    ((.choices // []) | map(.value) | map(choice_value) | sort) as $want
    | [ (.description // "") | match(":([^:]*)$") | .captures[0].string ] as $tails
    | ($tails | length > 0) and ($tails[0] | test("[,|]")) and (($tails[0] | echo_values) == $want)
  end;

# --- Production -------------------------------------------------------------

# the leading quote/bracket of a token is not part of the path test
def d_is_home_token:
  (sub("^[(\"']+"; "")) as $t
  | ($t | test("^\\$HOME(/|$)"))
    or ($t | test("^/home/[^/]+/"))
    or ($t | test("^/Users/[^/]+/"))
    or ($t | test("^C:\\\\Users\\\\"))
    or (((env.HOME // "") as $home | $home != "" and ($t | startswith($home + "/"))));

def d_is_connector: . == "or" or . == "and";

# Drop machine-local path tokens and the connector they share with the text.
def d_strip_home_paths:
  . as $s
  | split(" ") as $tok
  | ($tok | length) as $n
  | [ range(0; $n) as $i | $tok[$i] | d_is_home_token ] as $path
  | if ($path | any) | not then $s
    else
      (reduce range(0; $n) as $i ($path;
          if .[$i] then
            (if $i > 0 and (.[$i - 1] | not) and ($tok[$i - 1] | d_is_connector) then .[$i - 1] = true
             elif $i + 1 < $n and ($tok[$i + 1] | d_is_connector) then .[$i + 1] = true
             else . end)
          else . end)) as $rem
      | [ range(0; $n) as $i | select($rem[$i] | not) | $tok[$i] ]
      | join(" ")
    end;

# Drop each non-nested (...), [...], {...} group whose values equal $want.
def d_strip_echo_groups($want):
  if $want == null then .
  else
    . as $s
    | ($s | length) as $len
    | { i: 0, out: "" }
    | until(.i >= $len;
        ($s[.i:.i + 1]) as $ch
        | (if $ch == "(" then ")"
           elif $ch == "[" then "]"
           elif $ch == "{" then "}"
           else "" end) as $close
        | if $close == "" then .out += $ch | .i += 1
          else
            ([ $s[(.i + 1):] | index($close) ]) as $found
            | if ($found | length) == 0 then .out += $ch | .i += 1
              else
                ($found[0]) as $j
                | ($s[(.i + 1):(.i + 1 + $j)]) as $inner
                | if (($inner | test("[([{]")) | not) and (($inner | echo_values) == $want)
                  then
                    .out = (.out | sub(" +$"; ""))
                    | .i = (.i + 1 + $j + 1)
                    | until(.i >= $len or ($s[.i:.i + 1]) != " "; .i += 1)
                    | (if .out != "" and .i < $len then .out += " " else . end)
                  else .out += $ch | .i += 1
                  end
              end
          end
      )
    | .out
  end;

# Cut at the first sentence boundary and drop the terminator.
def d_first_sentence:
  (sentence_boundary) as $off
  | if $off == null then . else (.[0:$off] | trim_space) end;

# A trailing ":list" whose values equal $want: keep the lead-in only.
def d_strip_colon_list($want):
  if $want == null then .
  else
    . as $s
    | [ $s | match(":[^:]*$") ] as $ms
    | if ($ms | length) == 0 then $s
      else ($ms[0]) as $m
        | ($s[($m.offset + 1):]) as $tail
        | if (($tail | test("[,|]")) and (($tail | echo_values) == $want))
          then ($s[0:$m.offset] | trim_space)
          else $s end
      end
  end;

# Normalize one raw help description; $choices is the item's static choice
# value list, in no particular order.
def normalize_description($choices):
  (if ($choices | length) == 0 then null
   else [ $choices[] | choice_value | select(length > 0) ] | sort end) as $want
  | gsub("[ \\r\\n\\t]*[\\r\\n\\t][ \\r\\n\\t]*"; " ")
  | gsub("`"; "")
  | trim_space
  | d_strip_home_paths
  | d_strip_echo_groups($want)
  | d_first_sentence
  | d_strip_colon_list($want)
  | trim_space;
