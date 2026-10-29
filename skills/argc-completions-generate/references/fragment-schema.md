# Fragment schema

Authority for fragment layout and field rules; other skill files link here. Read it when validating, writing a minimal `failed` fragment, or repairing a schema error; compile subagents read it for the example and field rules.

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
    {"kind": "option", "names": ["--foo"], "notations": ["<VALUE>"], "choices": [], "choice_fn": "_choice_foo", "repeatable": false, "prefixed": false, "delimiter": null, "description": "Foo value"},
    {"kind": "option", "names": ["--bar"], "notations": ["<VALUE>"], "choices": [{"value": "a", "description": "First"}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bar value"},
    {"kind": "arg", "name": "name", "repeatable": false, "required": true, "notation": "<NAME>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Remote name"}
  ],
  "subcommands": [
    {"name": "add", "aliases": [], "description": "Add a remote", "status": "todo"}
  ],
  "source": {"kind": "help", "command": "demo remote --help"},
  "notes": ""
}
```

| Field | Rule |
|---|---|
| `schemaVersion` | Always `1`. |
| `path` | Matches the fragment location; each segment is a valid command name. |
| `description` | Single line, first sentence only. Root renders as `@describe`; a child renders as `@cmd`. |
| `aliases` | Subcommand aliases; no collision with sibling names/aliases. |
| `meta` | `{key, value}` string array. Copy from context; do not invent keys, except the `combine-shorts` inference in `<SKILL_ROOT>/agents/compile.md` §Root and command metadata. |
| `items[].kind` | `flag`, `option`, or `arg`. |
| `names` | 1-2 names for a flag/option; exactly one for a prefixed option. Order and split rule are in Rules. |
| `repeatable` | Flag/option can occur multiple times; an arg accepts multiple values. A delimiter requires `true`. |
| `prefixed` | Option only, default `false`. `true` means the value is attached to the name (`-Xfoo`, `-aos`): exactly one literal prefix without the trailing `-` (assembly adds it); it does not imply `repeatable`. |
| `delimiter` | Option/arg only, one character or `null` (default). Splits values in one occurrence (`--type d,f`); allowed `,` `:` `;` `@` `|` `/`. Requires `repeatable: true`; renders `*` plus the character (an arg also uses `+`). |
| `notations` / `notation` | Option: 0-n `<...>` placeholders; arg: one `<...>`. |
| `terminated` | Option/arg only, default `false`. `true` renders `~` after the name and captures every following argument as its value (`@option <name>~ <VALUE>`); incompatible with `repeatable`, `prefixed`, and `delimiter`. An option keeps 0-n notations and an arg one; a name must not end in `~` (except `-~`/`+~` as the first of two names). |
| `required` | Arg only, present for every arg: `true` for required, `false` for optional. Flags/options must omit it. |
| `choices` | Array of `{"value": "...", "description": "..."}` objects (both keys required, `description` may be empty). Literal values only. Never put a placeholder from a mixed enumeration (for example `SEED` in `--shuffle[=SEED|random|reverse|none]`) here; leave `choices` empty, record the literals in `notes`, and emit the `mixed-enumeration` warning. |
| `choice_fn` | String or `null`; a local `_choice_*` function name without backticks. A binding wins over static `choices`. |
| `subcommands[].status` | `todo`, `succeeded`, or `failed`. |
| `source`, `notes` | Optional origin information and note. |

Rules:

- Descriptions: every fragment, subcommand, flag, option, and arg keeps only the first sentence of the source help/man text. Flatten (collapse CR/LF/TAB runs into one space, trim), then truncate at `.` `!` `?` `。` `！` `？` followed by whitespace or end of text; a terminator inside a token (`3.5`, `foo.txt`) is not a boundary. Skip `e.g.`, `i.e.`, `etc.`, `vs.`, `cf.`, `approx.`, and a single letter before the period (`a.`, `J.`). If no boundary exists, keep the whole text. Drop the terminator that ends the kept sentence (`Manage remotes.` -> `Manage remotes`), strip backticks, and never rephrase.
- Machine-local paths: never keep one in a description, usually an expanded `$HOME`: a path under the current home (`$HOME/...`) or any user's home (`/home/<user>/...`, `/Users/<user>/...`, `C:\Users\<user>\...`). Delete the token (and the `or`/`and` connector when it is one alternative); collapse whitespace and trim, or use an empty string. Keep system paths such as `/etc/foo.conf` and portable `~/.config/foo`; never substitute a placeholder. Example: `use /home/you/.local/bin/browser.sh or BROWSER` -> `use BROWSER`.
- `choices` entries are objects, never strings. `value` is a non-empty, trimmed literal; it must not contain `|`, `]`, TAB, CR/LF, a backtick, or another control character, and must be unique within the item (case-sensitive). `description` is a single line without TAB, CR/LF, or a backtick; it follows the description rules above (first sentence, no machine-local paths, no rephrasing) and may be empty. A string entry fails validation with `choices entries must be objects {value, description}`.
- Rendering: `choices` whose descriptions are all empty render as the static argc list `[a|b]`; as soon as one description is non-empty, assembly renders `[?`_static_*`]` and emits the generated function in `STATIC` (see `<SKILL_ROOT>/references/generate-structure.md` §7). An item without a described `choices` list produces no `_static_*` function, and an empty `STATIC` block is omitted from the script. That branch is completion-only, exactly like a `choice_fn` binding.
- An item description must not repeat `choices`. When non-empty, delete every enumeration in the description — a `[...]`, `(...)`, or `{...}` group, or a colon-introduced comma list such as `Select sort: name,version,...` — whose values (split on `|` or `,`, trimmed, optional surrounding quotes) are the same set as the `choices` values (order does not matter; an optional leading `=` on the first value is allowed). Delete only on a full-set match; keep partial matches, prose groups, non-enumeration groups, and all `(default: ...)` text. For a colon list, keep the lead-in (`Select sort: ...` -> `Select sort`). With empty `choices`, keep every group and colon list. Never empty `choices` to silence this rule. If the description is only the matching enumeration, set it to an empty string; otherwise collapse and trim. `<SKILL_ROOT>/scripts/validate-fragment.jq` rejects a still-matching group; it does not detect a colon list, so apply this rule yourself.
- Field interactions: `prefixed` is option-only (a flag or arg containing it is invalid); `terminated` and `delimiter` are option/arg only (a flag containing them is invalid). A terminated option/arg is not `repeatable`, not `prefixed`, and has no `delimiter`. A prefixed option has exactly one name, the literal prefix without the trailing `-` (`["-X"]`, `["-ao"]`). A non-prefixed flag or option name must not end in `-`; use `prefixed: true`. A prefixed or delimiter option has at most one notation; a delimiter arg keeps its single notation.
- Values in `choices` for these fields are suffixes or parts, never full tokens: `a`, `s`, `t`, `u` for `-ao-*[a|s|t|u]` (not `-aoa`), and individual split values (`d`, `f` for `--type*,[d|f]`, not the joined string). A static `[a|b]` enumeration is not a delimiter.
- `names` order is an argc requirement. With two names the first must be a one-character short name; the second may be another one-character short, a `--long` name, or a multi-character single-dash alias. When the help pairs names that do not fit (`--eval-command, -ex`), emit one item per name with every other field copied and record the pairing in `notes`; a single-name item may use any name (`-ex`). `<SKILL_ROOT>/scripts/validate-fragment.jq` rejects lossy shapes, so assembly fails instead of dropping the binding. A short name argc cannot represent (`-"`, `-#`, or one containing a quote or comment character) cannot be emitted: keep the long name only and record a warning.
- Subcommand lifecycle: every subcommand has its own fragment. A `todo` node is not assembled; a `succeeded` node must have a fragment; a `failed` node must have a minimal fragment and is reported as a warning. The set of fragments must equal the set declared by parents; an undeclared fragment is stale and fails assembly.
- `choice_fn` is copied only from `<SKILL_ROOT>/scripts/extract-cmd-context.sh` in generate-structure; never infer it. A new binding belongs to the later binding step, not to compile.
- Filesystem notation: use `<dir>`, `<file>`, or `<path>` when the name, position, and description make the semantics clear; never bind a `choice_fn` to those values because argc generates path candidates.
- Structural fields (`names`, `notations`/`notation`, `choices`, `aliases`, `path`) must not contain backticks or newlines; `choices` values must not contain `|` or `]` and no choice field may contain TAB because assembly renders or splits on them. Put function names in `choice_fn`, not in `` `...` `` form.
- A non-null `choice_fn` wins over `choices`: the binding is rendered and no static function is generated. `<SKILL_ROOT>/scripts/set-choice-fn.sh` empties `choices` when it binds an item.
- Arg suffixes derive from the two booleans: `repeatable` + `required` -> `+`, `repeatable` only -> `*`, `required` only -> `!`, neither -> no suffix. A delimiter appends to the suffix: `files*,` or `files+,`.
- The old `modifier` field is removed; a fragment containing it is invalid and must be regenerated.
- Assembly validates every fragment with `<SKILL_ROOT>/scripts/validate-fragment.jq`; the key is the fragment `path` joined by `|` (`["gdb"]` -> `gdb`, `["gdb", "add"]` -> `gdb|add`). A `path mismatch` usually means a repeated root (`gdb|gdb`) or the wrong root.
