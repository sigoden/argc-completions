# Fragment schema

Read this file only when validating a fragment, writing a minimal `failed` fragment, or repairing a schema error. Normal generation validates with `<SKILL_ROOT>/scripts/validate-fragment.jq` and does not need the field table, but compile subagents read this file for the JSON example and field rules. This file is the authority for fragment layout and field rules; other skill files link here.

One command node = one fragment:

```text
<REPO_ROOT>/cache/compile/<root>/_root.json           path = [root]
<REPO_ROOT>/cache/compile/<root>/<sub>.json           path = [root, sub]
<REPO_ROOT>/cache/compile/<root>/<sub>/<nested>.json  path = [root, sub, nested]
```

```json
{
  "schemaVersion": 1,
  "path": ["demo", "remote"],
  "description": "Manage remotes",
  "aliases": [],
  "meta": [{"key": "inherit-flag-options", "value": ""}],
  "items": [
    {
      "kind": "option",
      "names": ["--foo"],
      "notations": ["<VALUE>"],
      "choices": [],
      "choice_fn": "_choice_foo",
      "repeatable": false,
      "prefixed": false,
      "delimiter": null,
      "description": "Foo value"
    },
    {
      "kind": "option",
      "names": ["--bar"],
      "notations": ["<VALUE>"],
      "choices": ["a", "b"],
      "choice_fn": null,
      "repeatable": false,
      "prefixed": false,
      "delimiter": null,
      "description": "Bar value"
    },
    {
      "kind": "arg",
      "name": "name",
      "repeatable": false,
      "required": true,
      "notation": "<NAME>",
      "choices": [],
      "choice_fn": null,
      "delimiter": null,
      "description": "Remote name"
    }
  ],
  "subcommands": [
    {"name": "add", "aliases": [], "description": "Add a remote", "status": "todo"}
  ],
  "source": {"kind": "help", "command": "demo remote --help"},
  "notes": ""
}
```

Examples for the fields (inactive values are shown where the field applies):

```json
{"kind": "option", "names": ["-ao"], "notations": [], "choices": ["a", "s", "t", "u"], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": null, "description": "Set overwrite mode"}
{"kind": "option", "names": ["--type"], "notations": ["<TYPE>"], "choices": ["d", "f"], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": ",", "description": "Filter by entry type"}
{"kind": "arg", "name": "types", "repeatable": true, "required": false, "notation": "<TYPE>", "choices": ["d", "f"], "choice_fn": null, "delimiter": ",", "description": "Entry types"}
{"kind": "option", "names": ["--eval-command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": "_choice_gdb_command", "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single GDB command"}
{"kind": "option", "names": ["-ex"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": "_choice_gdb_command", "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single GDB command"}
```

The last two items are one split option: `--eval-command, -ex` cannot be a single item, so every field is copied and each item keeps one name.

| Field | Rule |
|---|---|
| `schemaVersion` | Always `1`. |
| `path` | Matches the fragment location; each segment is a valid command name. |
| `description` | Single line, first sentence only. Root renders as `@describe`; a child renders as `@cmd`. |
| `aliases` | Subcommand aliases; no collision with sibling names/aliases. |
| `meta` | `{key, value}` string array. Copy from context; do not invent keys. |
| `items[].kind` | `flag`, `option`, or `arg`. |
| `names` | 1-2 names for a flag/option; exactly one when the option is prefixed. The two-name order and the split rule are below. |
| `repeatable` | Flag/option can occur multiple times; an arg accepts multiple values. For an option or arg, a delimiter requires `repeatable: true`. |
| `prefixed` | Option only, optional boolean (default `false`). `true` marks a prefix option whose value is attached to the name, such as `-Xfoo` or `-aos`. `names` must hold exactly one literal prefix without the trailing `-`; assembly adds the `-` that argc expects. `prefixed` does not imply `repeatable`. |
| `delimiter` | Option/arg only, optional one-character string or `null` (default `null`). Splits multiple values in one occurrence, such as `--type d,f` or `types d,f`. Allowed characters: `,` `:` `;` `@` `|` `/`. Requires `repeatable: true`; an option renders `*` plus this character, and an arg renders `*`/`+` plus this character. |
| `notations` | 0-n `<...>` placeholders for an option. |
| `notation` | One `<...>` placeholder for an arg. |
| `terminated` | Option/arg only, optional boolean (default `false`). `true` renders `~` after the name and makes the option capture every following argument as its value, as in `@option -exec~ <COMMAND>`. Cannot combine with `repeatable`, `prefixed`, or `delimiter`. |
| `required` | Arg only: boolean, present for every arg; `true` for a required positional, `false` for an optional one. Flags/options must omit it. |
| `choices` | Literal candidate values only. Never put a placeholder from a mixed enumeration (for example `SEED` in `--shuffle[=SEED|random|reverse|none]`) here; leave `choices` empty and record the literals in `notes` plus a warning. |
| `choice_fn` | String or `null`; an optional leading `?` is an advisory hint that the function may not list every valid value. Completion does not validate, so the marker has no runtime effect and is omitted by default. A dynamic binding wins over static `choices`. |
| `subcommands[].status` | `todo`, `succeeded`, or `failed`. |
| `source` | Optional origin information. |
| `notes` | Optional note. |

Rules:

- All descriptions (fragment, `subcommands[]`, and item descriptions) keep only the first sentence of the source help/man text. Flatten first (collapse CR/LF/TAB runs into one space, then trim), then truncate at `.` `!` `?` `。` `！` `？` followed by whitespace or end of text. A terminator inside a token (`3.5`, `v1.2`, `foo.txt`) is not a boundary. Exempt abbreviations `e.g.`, `i.e.`, `etc.`, `vs.`, `cf.`, `approx.`, and a single letter before the period (`a.`, `J.`); keep scanning past them. If no boundary exists, keep the whole text. Drop the terminator that ends the kept sentence (`Manage remotes.` -> `Manage remotes`). Strip backticks; never rephrase text to fit the limit.
- Descriptions must not contain a machine-local path, usually an expanded `$HOME` value: a path under the current home (`$HOME/...`) or any user's home (`/home/<user>/...`, `/Users/<user>/...`, `C:\Users\<user>\...`). Delete the token; when it is one alternative of an `or`/`and` list, delete the connector with it. Collapse the remaining whitespace and trim; if nothing remains, use an empty string. Keep system paths such as `/etc/foo.conf` and portable `~/.config/foo`; never substitute a placeholder. Example: `use /home/you/.local/bin/browser.sh or BROWSER` -> `use BROWSER`.
- An item description must not repeat data that is already stored in `choices`. When `choices` is non-empty, delete every enumeration in the description — a group wrapped in `[...]`, `(...)`, or `{...}` — whose values, split on `|` or `,`, trimmed, with one pair of optional surrounding quotes, are the same set as `choices` (order does not matter); an optional leading `=` on the first value is allowed. Delete only on a full-set match; keep partial matches, prose groups, non-enumeration groups, and all `(default: ...)` text. When `choices` is empty, keep every group. Keep the values in `choices`; never empty `choices` to silence this rule. If the description is only the matching enumeration, set it to an empty string; otherwise collapse the whitespace left by the deletion and trim. `<SKILL_ROOT>/scripts/validate-fragment.jq` rejects a fragment that still contains a matching group.
- `prefixed` is option-only. A flag or arg fragment that contains it is invalid.
- `terminated` is option/arg only. A flag fragment that contains it is invalid, and a terminated option or arg must not be `repeatable`, `prefixed`, or carry a `delimiter`.
- `delimiter` is allowed on options and args. A flag fragment that contains it is invalid.
- A `prefixed` option has exactly one name. Store the literal prefix without the trailing `-` (`["-X"]`, `["-ao"]`); a name ending in `-` is invalid. Its `choices` are the suffixes after the prefix (`a`, `s`, `t`, `u` for `-ao-*[a|s|t|u]`), not full tokens such as `-aoa`.
- A `delimiter` option or arg has `repeatable: true`. Its `choices` are the individual split values (`d`, `f` for `--type*,[d|f]` or `types*,[d|f]`), not the joined string. A static `[a|b]` enumeration is not a delimiter.
- A `prefixed` or `delimiter` option may have at most one notation; argc does not allow them to combine with multiple notations. A delimiter arg keeps its normal single notation.
- A non-prefixed flag or option name must not end in `-`; argc would otherwise read it as a prefix flag/option. Use `prefixed: true` for that behavior.
- `names` order is an argc requirement, not a style rule. With two names the first must be a one-character short name and the second may be another one-character short, a `--long` name, or a multi-character single-dash alias. When the source help pairs two names that do not fit (for example `--eval-command, -ex`, or `--long, -x` in help order), emit one item per name with the same `kind`, `notations`/`notation`, `choices`, `choice_fn`, `repeatable`, `prefixed`, `delimiter`, and `description`, and record the pairing in `notes`. A single-name item may use any name, including a multi-character single-dash alias such as `-ex`. <SKILL_ROOT>/scripts/validate-fragment.jq rejects the lossy shapes, so assembly fails instead of dropping the binding. A short name that argc cannot represent (`-"`, `-#`, or a name containing a quote or comment character) cannot be emitted; keep the long name only and record a warning instead of splitting it into its own item.
- Every subcommand has its own fragment. `todo` nodes are not assembled. A `succeeded` node must have a fragment. A `failed` node must have a minimal fragment and is reported as a warning.
- The set of fragments must equal the set declared by parents. An undeclared fragment is stale and fails assembly.
- `choice_fn` is copied only from `<SKILL_ROOT>/scripts/extract-cmd-context.sh` in generate-structure. Never infer it. The add-choice-fns workflow is the only place that may set a new binding.
- Filesystem notation: use `<dir>`, `<file>`, or `<path>` when the name, position, and description make the semantics clear. Do not bind a `choice_fn` to those values; argc generates path candidates.
- Structural fields must not contain backticks. Put function names in `choice_fn`, not in `` `...` `` form.
- Arg suffixes are derived from the two booleans: `repeatable` + `required` -> `+`, `repeatable` only -> `*`, `required` only -> `!`, neither -> no suffix. A delimiter is appended to the suffix: `files*,` or `files+,`.
- The old `modifier` field is removed. A fragment that still contains it is invalid and must be regenerated.

Assembly validates every fragment with `<SKILL_ROOT>/scripts/validate-fragment.jq`. The key is the fragment `path` joined by `|`: `["gdb"]` -> `gdb`, `["gdb", "add"]` -> `gdb|add`. A `path mismatch` error usually means the root name was repeated (`gdb|gdb`) or the wrong root was used.
