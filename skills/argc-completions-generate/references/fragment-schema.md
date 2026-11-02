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
  "hash": "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
  "notes": ""
}
```

| Field | Rule |
|---|---|
| `schemaVersion` | Always `1`. |
| `path` | Matches the fragment location; each segment is a valid command name. |
| `description` | Single line, first sentence only. Root renders as `@describe`; a child renders as `@cmd`. |
| `aliases` | Subcommand aliases; no collision with sibling names/aliases. |
| `meta` | `{key, value}` string array. Copy from context; do not invent keys, except the probed root-only `combine-shorts` in `<SKILL_ROOT>/agents/compile.md` §3.1 Node fields. `combine-shorts` and `inherit-flag-options` are rendered on the root fragment only. |
| `items[].kind` | `flag`, `option`, or `arg`. |
| `names` | 1-2 names for a flag/option; exactly one for a prefixed option. Order and split rule are in Rules. |
| `name` | Arg only: snake-case identifier matching `^[A-Za-z0-9_][A-Za-z0-9_.-]*$`. Flags and options use `names` and must omit `name`. |
| `repeatable` | Flag/option can occur multiple times; an arg accepts multiple values. A delimiter requires `true`. |
| `prefixed` | Option only, default `false`. `true` means the value is attached to the name (`-Xfoo`, `-aos`): exactly one literal prefix without the trailing `-` (assembly adds it); it does not imply `repeatable`. |
| `delimiter` | Option/arg only, one character or `null` (default). Splits values in one occurrence (`--type d,f`); allowed `,` `:` `;` `@` `|` `/`. Requires `repeatable: true`; renders `*` plus the character (an arg also uses `+`). |
| `notations` / `notation` | Option: one `notations` entry per value it consumes, in help order, whatever spelling the help uses, normalized to `<...>` (0 entries when it consumes no value); only the final entry may carry one notation modifier (`<VALUE*>`, `<VALUE+>`, `<VALUE?>`); arg: one `<...>` with no modifier. |
| `terminated` | Option/arg only, default `false`. `true` renders `~` after the name and captures every following argument as its value (`@option <name>~ <VALUE>`); it can coexist with a final notation modifier (`@option <name>~ <VALUE> <ARGS*>`); incompatible with `repeatable`, `prefixed`, and `delimiter`. An option keeps 0-n notations and an arg one; a name must not end in `~` (except `-~`/`+~` as the first of two names). A terminated arg renders as `<name>~` alone: `required` is recorded but never rendered, so the same tag comes out for a required and an optional terminated arg. |
| `required` | Arg only, present for every arg: `true` for required, `false` for optional. Flags/options must omit it. |
| `choices` | Array of `{"value": "...", "description": "..."}` objects (both keys required, `description` may be empty). Literal values only. Put no placeholder from a mixed enumeration (for example `SEED` in `--shuffle[=SEED|random|reverse|none]`) here; leave `choices` empty, record the literals in `notes`, and emit the `mixed-enumeration` warning. |
| `choice_fn` | String or `null`; a local `_choice_*` function name without backticks. A binding wins over static `choices`. |
| `subcommands[].status` | `todo`, `succeeded`, or `failed`. |
| `source`, `notes` | Origin information and note. `source.kind` is exactly `help`, `man`, or `none`. For `help`/`man`, `source.command` is required and records the actual command that produced the canonical page; a shared-help fragment adds `"section": "<name>"` (`{"kind":"help","command":"bundle plugin --help","section":"install"}`). For `none`, `source.command` is absent. `notes` is a single-line string. |
| `hash` | Required top-level string. With `source.kind` `help`/`man` it is 64 lowercase hex characters; with `none` it is `""`. Computed only by `<SKILL_ROOT>/scripts/fragment-hash.sh`; assembly ignores it. |

Rules:

- `source.command` is a space-separated safe token string: only `[A-Za-z0-9_.+:@/-]`, no pipes, redirects, quotes, `;`, `$`, backticks, globs, or newlines. `help <builtin>` is the only builtin form and must have exactly one argument. The command must be reproducible under `PAGER=cat MANPAGER=cat COLUMNS=9999 NO_COLOR=1`, stdin `/dev/null`, a 10-second timeout, and merged stdout/stderr canonicalization. It records the actual successful source, never a fallback or a section extraction pipeline; `man` records the full page, and a shared-help node records the parent command.
- Cache hash: the input is `"argc-completions-generate" NUL SKILL_CACHE_VERSION NUL context_body NUL canonical_help_bytes`, where `context_body` is `<SKILL_ROOT>/scripts/extract-cmd-context.sh --no-meta` output (`HINTS` + `DIFF`, no `META`) and `canonical_help_bytes` is the full canonical help of `source.command`. The output is SHA-256 lowercase hex. `choice_fn`, notation, and `terminated` reach the hash only through the `DIFF`; `meta`, `description`, `aliases`, the node path, and `source.section` are excluded. `SKILL_CACHE_VERSION` lives in `<SKILL_ROOT>/scripts/lib.sh`; bump it when the fragment schema, compile semantics, hash framing, or help canonicalization changes, which intentionally invalidates every cache entry.
- Minimal failed fragment (help unavailable; reuse it and warn instead of retrying automatically):

  ```json
  {"schemaVersion": 1, "path": ["demo", "remote", "add"], "description": "", "aliases": [], "meta": [], "items": [], "subcommands": [], "source": {"kind": "none"}, "hash": "", "notes": "help unavailable"}
  ```

- Descriptions: every fragment, subcommand, flag, option, arg, and choice description keeps only the first sentence of the source help/man text, and `<SKILL_ROOT>/scripts/normalize-description.sh` is the reference implementation of these rules. Order: flatten (CR/LF/TAB runs become one space, then trim), strip backticks, drop machine-local paths, drop enumerations that repeat `choices`, then keep the first sentence. A terminator (`.` `!` `?`) ends a sentence only when it is followed by whitespace or the end and is not preceded by whitespace, `.`, `-`, `/`, or an opening bracket; so `3.5`, `foo.txt`, `PREFIX/..`, `-?`, and a standalone `?` are not boundaries. Skip `e.g.`, `i.e.`, `etc.`, `vs.`, `cf.`, `approx.`, and a single letter before the period (`J.`). CJK terminators (`。` `！` `？`) always end a sentence. If no boundary exists, keep the whole text. Drop the terminator that ends the kept sentence (`Manage remotes.` -> `Manage remotes`); never rephrase. `<SKILL_ROOT>/scripts/validate-fragment.jq` rejects any description that still has a boundary, a trailing terminator, a backtick, or a machine-local path.
- Machine-local paths: remove each one from a description; usually it is an expanded `$HOME`: a path under the current home (`$HOME/...`) or any user's home (`/home/<user>/...`, `/Users/<user>/...`, `C:\Users\<user>\...`). Delete the token (and the `or`/`and` connector when it is one alternative); collapse whitespace and trim, or use an empty string. Keep system paths such as `/etc/foo.conf` and portable `~/.config/foo`; substitute no placeholder. Example: `use /home/you/.local/bin/browser.sh or BROWSER` -> `use BROWSER`.
- `choices` entries are objects. `value` is a non-empty, trimmed literal; it must not contain `|`, `]`, TAB, CR/LF, a backtick, or another control character, and must be unique within the item (case-sensitive). `description` is a single line without TAB, CR/LF, or a backtick; it follows the description rules above (first sentence, no machine-local paths, no rephrasing) and may be empty. A string entry fails validation with `choices entries must be objects {value, description}`.
- Rendering: `choices` whose descriptions are all empty render as the static argc list `[a|b]`; as soon as one description is non-empty, assembly renders `[?`_static_*`]` and emits the generated function in `STATIC` (see `<SKILL_ROOT>/references/generate-structure.md` §8).
- An item description must not repeat `choices`. When non-empty, delete every enumeration in the description — a `[...]`, `(...)`, or `{...}` group, or a colon-introduced comma list such as `Select sort: name,version,...` — whose values (split on `|` or `,`, trimmed, optional surrounding quotes) are the same set as the `choices` values (order does not matter; an optional leading `=` on the first value is allowed). Delete only on a full-set match; keep partial matches, prose groups, non-enumeration groups, and all `(default: ...)` text. For a colon list, keep the lead-in (`Select sort: ...` -> `Select sort`). With empty `choices`, keep every group and colon list. Leave `choices` intact to satisfy this rule. If the description is only the matching enumeration, set it to an empty string; otherwise collapse and trim. `<SKILL_ROOT>/scripts/validate-fragment.jq` rejects a still-matching group or colon list (`description repeats choices`); `<SKILL_ROOT>/scripts/normalize-description.sh --choice ...` removes them.
- Field interactions: `prefixed` is option-only (a flag or arg containing it is invalid); `terminated` and `delimiter` are option/arg only (a flag containing them is invalid). A non-prefixed flag or option name must not end in `-`; use `prefixed: true`. A prefixed or delimiter option has at most one notation; a delimiter arg keeps its single notation.
- Notation modifiers: only an option may use them, only on its final notation, and only one of `*` (zero or more values), `+` (one or more values), or `?` (zero or one value), inside the angle brackets. Earlier notations stay bare; an arg `notation` never carries one (use `required`/`repeatable`). A notation modifier is not `repeatable`: `repeatable` describes how often the option itself may occur. `terminated` may coexist with a final modifier, and a command-valued option keeps its trailing args notation (`["<script>", "<args*>"]`).
- Values in `choices` for these fields are suffixes or parts, not full tokens: `a`, `s`, `t`, `u` for `-ao-*[a|s|t|u]` (not `-aoa`), and individual split values (`d`, `f` for `--type*,[d|f]`, not the joined string). A static `[a|b]` enumeration is not a delimiter.
- `names` order is an argc requirement. With two names the first must be a one-character short name; the second may be another one-character short, a `--long` name, or a multi-character single-dash alias. When the help pairs names that do not fit (`--eval-command, -ex`), emit one item per name with every other field copied and record the pairing in `notes`; a single-name item may use any name (`-ex`). `<SKILL_ROOT>/scripts/validate-fragment.jq` rejects lossy shapes, so assembly fails instead of dropping the binding. A short name argc cannot represent (`-"`, `-#`, or one containing a quote or comment character) cannot be emitted: keep the long name only and record a warning.
- Subcommand lifecycle: every subcommand has its own fragment. A `todo` node is not assembled; a `succeeded` node must have a fragment; a `failed` node must have a minimal fragment and is reported as a warning. The set of fragments must equal the set declared by parents; `<SKILL_ROOT>/scripts/finalize-cache.sh` removes undeclared fragments, and assembly fails if a stale fragment remains.
- `choice_fn` is copied only from the `<SKILL_ROOT>/scripts/extract-cmd-context.sh` `DIFF` in generate-structure; it is never inferred. A new binding belongs to the later binding step, not to compile. The same `DIFF` may override an item's `notations`/`notation` and `terminated`; descriptions, names, and `choices` always come from the new help.
- Filesystem notation: use `<dir>`, `<file>`, or `<path>` when the name, position, and description make the semantics clear; bind no `choice_fn` to those values, because argc generates path candidates.
- Structural fields (`names`, `notations`/`notation`, `choices`, `aliases`, `path`) must not contain backticks or newlines; `choices` values must not contain `|` or `]` and no choice field may contain TAB because assembly renders or splits on them. Put function names in `choice_fn`, not in `` `...` `` form.
- A non-null `choice_fn` wins over `choices`: the binding is rendered and no static function is generated. `<SKILL_ROOT>/scripts/set-choice-fns.sh` empties `choices` when it binds an item.
- Arg suffixes derive from the two booleans: `repeatable` + `required` -> `+`, `repeatable` only -> `*`, `required` only -> `!`, neither -> no suffix. A delimiter appends to the suffix: `files*,` or `files+,`. A terminated arg skips all of them and renders `<name>~` alone, because argc takes `~` as the whole suffix: `required` is kept for provenance and never rendered, so `!~`, `+~`, and `*~` cannot come out of a fragment.
- The old `modifier` field is removed; a fragment containing it is invalid and must be regenerated.
- Assembly validates every fragment with `<SKILL_ROOT>/scripts/validate-fragment.jq`; the key is the fragment `path` joined by `|` (`["gdb"]` -> `gdb`, `["gdb", "add"]` -> `gdb|add`).
