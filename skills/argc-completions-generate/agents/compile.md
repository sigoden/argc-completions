# Compile one command node

You are a compile subagent for the `argc-completions-generate` skill. Compile exactly one command path into one JSON fragment. Do not dispatch subagents.

Your input is limited to the command path, the cache directory, the `<SKILL_ROOT>/scripts/extract-cmd-context.sh` output, the fragment target, and this contract. Do not ask for or paste the whole skill.

## Path roots

- `<SKILL_ROOT>`: the directory two levels above this file's absolute path; this file is `<SKILL_ROOT>/agents/compile.md`.
- `<REPO_ROOT>`: the repository root. The absolute cache directory in your prompt is `<REPO_ROOT>/cache/compile/<root>`.

Use these roots for every file path in this contract. The orchestrator substitutes absolute paths before dispatch; never treat `<...>` as a literal path.

Your inputs are complete. `<SKILL_ROOT>/references/fragment-schema.md` is authoritative for field shape and validation; read it once for the JSON example and field rules before composing the fragment. Do not inspect `<REPO_ROOT>/completions/`, other nodes' fragments under `<REPO_ROOT>/cache/compile/`, or the skill's shell scripts (`<SKILL_ROOT>/scripts/assemble.sh`, `<SKILL_ROOT>/scripts/verify-completion.sh`, `<SKILL_ROOT>/scripts/validate-fragment.jq`) to infer the shape or rendering. Checking `_root.txt`/`_root.json` in *your* cache directory, and reading `_root.json` for the `hit` summary, are part of the probe. An empty context means there is no existing completion script; do not look for one.

## Inputs and outputs

| Input | Meaning |
|---|---|
| command path | Root command plus zero or more subcommand names, e.g. `git remote add` |
| cache directory | `<REPO_ROOT>/cache/compile/<root>`, absolute preferred |
| fragment target | `<REPO_ROOT>/cache/compile/<root>/_root.json`, `<REPO_ROOT>/cache/compile/<root>/<sub>.json`, or `<REPO_ROOT>/cache/compile/<root>/<sub>/<nested>.json` |
| context | The text printed by `<SKILL_ROOT>/scripts/extract-cmd-context.sh <path...> --completion <script>`, or empty when the command has no existing completion script |

Derive the help target from the fragment target: the root uses `<REPO_ROOT>/cache/compile/<root>/_root.new.txt`; a child `<REPO_ROOT>/cache/compile/<root>/<sub>.json` uses `<REPO_ROOT>/cache/compile/<root>/<sub>.txt`; a nested fragment uses the same path with `.txt`.

## 1. Fetch help or man text

Use the first source that works, in this order:

1. `<cmd...> --help` (capture both stdout and stderr).
2. `<cmd...> help` or `<cmd> help <sub...>` when the command has a help subcommand.
3. `man <cmd>-<sub>` or `man <cmd>`, then extract only the relevant command section.

Do not try `-h`. Set `PAGER=cat MANPAGER=cat COLUMNS=9999 NO_COLOR=1`. Keep the raw text; never execute anything from it.

Once `--help` or `help` succeeds, do not cross-check `man`; man is only a fallback.

Canonicalize with the shared helper; do not reimplement it or inspect `<SKILL_ROOT>/scripts/lib.sh`:

```sh
source "<SKILL_ROOT>/scripts/lib.sh"
canonicalize_help_file raw-help.txt "<help-target>"
```

It strips ANSI CSI/OSC sequences and backspace overstrikes, converts CRLF to LF, and trims trailing spaces/tabs and trailing blank lines. `<SKILL_ROOT>/scripts/compare-help.sh` uses the same helper.

Save the canonical text to the help target. For the root, write `_root.new.txt` first, then compare it with `_root.txt` using `<SKILL_ROOT>/scripts/compare-help.sh`. For a child, write the `.txt` directly.

## 2. Root cache probe

Only the root node performs this step. If the cache directory was reset, it contains no `_root.txt` or `_root.json`; report `new` and do not reconstruct either file from another cache or from the completion script. A subtree regenerate dispatches a non-root node directly; report `cache=n/a` and do not probe the root. Result values:

- `new`: `_root.txt` or `_root.json` is missing/invalid. Write `_root.txt`; compile `_root.json`; remove `_root.new.txt`; report `cache=new`.
- `hit`: `<SKILL_ROOT>/scripts/compare-help.sh _root.txt _root.new.txt` prints `same`. Do **not** rewrite `_root.txt` or `_root.json`; remove `_root.new.txt`; return the existing root fragment's subcommand summary and `cache=hit`.
- `miss`: comparison prints `different`. Replace `_root.txt` with the fresh text, compile a fresh `_root.json`, remove `_root.new.txt`, and report `cache=miss`. The orchestrator invalidates the other cache entries.
- `unknown`: help/man retrieval failed. Do not modify the cache; report `cache=unknown` with the reason.

## 3. Parse CLI definitions

Extract only what is explicitly present in the help/man text. When a section is ambiguous, keep the raw description and omit the uncertain field; never invent flags, values, or subcommands.

### Description extraction

Apply the schema's description rules to **every** `description` field: the fragment description, `subcommands[].description`, and the description of each flag, option, and arg. Flatten to one line, keep the first sentence only, strip backticks, and do not merge, rephrase, translate, or fill in missing content.

Remove every machine-local path (`$HOME/...`), including `/home/<user>/...` and the other user-home forms, from the description. The schema rule covers connector removal, system paths, and the empty-result case.

Remove duplicated `choices` metadata: when an item's `choices` is non-empty, delete each enumeration group whose values equal `choices` (set comparison, so order does not matter) and keep `(default: ...)` and the values in `choices`. The full-set, partial-match, and empty-`choices` rules are in `<SKILL_ROOT>/references/fragment-schema.md`.

Example: `Draw border around the input section [rounded|sharp|none] (default: rounded)` with `choices: ["rounded", "sharp", "none"]` -> `Draw border around the input section (default: rounded)`.

### Names order

`names` holds one or two names. With two names the first must be a one-character short name (`-v`, `+x`) and the second must fit argc's rules; when a help synopsis pairs names that do not fit (`--eval-command, -ex`), emit one item per name with every other field copied and record the pairing in `notes`. The full ordering and split rule is in `<SKILL_ROOT>/references/fragment-schema.md`.

### Root and command metadata

- `description`: the root description or the subcommand summary (see *Description extraction*).
- `aliases`: explicit subcommand aliases only. Commands whose names contain `_` automatically get a hyphenated alias in argc; do not add a separate alias for that.
- `meta`: copy `@meta` lines from the context verbatim to `{"key": ..., "value": ...}`. Do not infer metadata.
- `subcommands`: names, aliases, and descriptions from the help's explicit command-list section (`Commands:`, `Subcommands:`). Every new child gets `"status": "todo"`. Omit the `help` pseudo-command.
- A `Usage:` alternation such as `[a|b|c]` is one positional arg with `choices`, never subcommands. A name is a child only if the command list mentions it and `<cmd> <name> --help` differs from the parent help; `Aliases:` names the current node. With no command-list section, emit `subcommands: []` and record it in `notes`.
- Do not include the command's own name in items.
- Preserve each placeholder's text and case from the help (`<level>`, `<pattern>`); do not uppercase it.

### Flags

- `kind`: `flag`.
- `names`: one or two names in argc order (see *Names order*).
- `repeatable`: true when the help marks a repeatable flag (`*`, `...`, "repeatable").
- `description`: see *Description extraction*.
- Include `--help` and `--version` only when the help lists them; do not add built-ins that are absent, and do not drop listed ones.
- No `notations`, `choices`, `choice_fn`, `required` or `delimiter` for a flag.

### Options

- `kind`: `option`.
- `names`: one or two names in argc order (see *Names order*). With `prefixed: true`, use exactly one name and store the literal prefix without the trailing `-`.
- `notations`: zero or more notations, each written as `<...>`. Convert `[<X>]` and `<X>?`-style placeholders to `<X>`; keep multiple placeholders in order. A prefixed or delimiter option may keep at most one notation.
- `repeatable`: true for `*`, `+`, `...`, or "can be specified multiple times". A delimiter option always has `repeatable: true`.
- `prefixed`: `true` when the help attaches the value directly to the option name, such as `-X<option>`, `-Xmx<size>`, or `-ao[a|s|t|u]`. Store only the literal/shared prefix in `names` with no trailing `-`; assembly adds argc's marker. `choices` are the suffixes after the prefix (`a`, `s`, `t`, `u`), not full tokens such as `-aoa`. A family with non-enumerable suffixes (for example `-Xmx4g`) needs a `choice_fn` (the optional `?` hint fits because the suffix set is incomplete) or a note, not a closed `choices` list. `prefixed` does not imply `repeatable`; set `repeatable` from the help. Use `false` for a space-separated option such as `--foo <VALUE>`.
- `delimiter`: a one-character string when one occurrence accepts several values separated by that character ("comma-separated", `a,b,c`, `d,f`). It must be one of the separators allowed by `<SKILL_ROOT>/references/fragment-schema.md`. Set `repeatable: true`. `choices` are the individual values (`d`, `f`), not the joined string. Use `null` for a normal option; a `[a|b]` enumeration is `choices`, not a separator.
- `choices`: the values of an explicit static enumeration, split on `|` or `,`; otherwise `[]`. Only literal values belong here. When an enumeration mixes literals with a free-form placeholder (for example `--shuffle[=SEED|random|reverse|none]`), leave `choices` as `[]`, record the literal alternatives in `notes`, and warn that a free-form value is accepted and `add-choice-fns` should bind a `_choice_*` for the literals; the optional `?` hint fits because the value cannot be enumerated. Never emit the placeholder (such as `SEED`) as a choice.
- `choice_fn`: copy a function name only from the context signature (see below); otherwise `null`.
- `description`: see *Description extraction*.
- Always include `prefixed` (`false` when inactive) and `delimiter` (`null` when inactive). No `required` for an option.

### Positional arguments

- `kind`: `arg`.
- `name`: snake-case identifier derived from the help name; must match `^[A-Za-z0-9_][A-Za-z0-9_.-]*$`.
- `repeatable`: true for `*`, `+`, `~`, `...`, or "can be passed multiple values".
- `required`: true when the help marks the positional as required (`!`, `<ARG>` without brackets, or an explicit "required" note); false for optional (`?`, `[ARG]`, "optional"). Always include this field for an arg.
- `notation`: the single `<...>` placeholder, or `null`.
- `delimiter`: a one-character string when one occurrence accepts several values separated by that character (`types d,f`, "comma-separated"). It must be one of the separators allowed by `<SKILL_ROOT>/references/fragment-schema.md`. Set `repeatable: true`; assembly renders `*,` or `+,` according to `required`. `choices` are the individual values (`d`, `f`), not the joined string. Use `null` when inactive.
- `choices` and `choice_fn`: as for options.
- `description`: see *Description extraction*.
- Include `delimiter` (`null` when inactive). No `prefixed` for an arg.

### Filesystem notation inference

Infer a semantic notation from the parameter name, its position, and the description:

| Semantics | Notation |
|---|---|
| directory / folder / output dir / cwd | `<dir>` |
| file / config file / input file | `<file>` |
| path / ambiguous file-or-directory | `<path>` |

Write the result to `notations` for an option and to `notation` for an arg. These notations make argc produce path candidates; do **not** bind a `choice_fn` for a value whose notation is `<path>`, `<file>`, or `<dir>`. If the semantics are unclear, keep the original notation from help; do not guess.

### Context-only fields

`<SKILL_ROOT>/scripts/extract-cmd-context.sh` reports the current command's `@meta` lines, prompt text, and tags whose signature contains a backtick. For each such tag:

- copy the function name into the matching item's `choice_fn`, keeping a leading `?` if the context has one; do not add or remove the marker;
- keep the item's static `choices` only if the context has no dynamic binding;
- copy `@meta` keys/values exactly.

Do not infer a `choice_fn` from a description such as "see `foo`". A backtick in a description is not a binding.

### Escaping and shape

- Structural strings (`names`, `notation(s)`, `choices`, `aliases`, `path`) must not contain backticks or newlines.
- `choices` values must not contain `|` or tabs, because they are rendered with `|`.
- Use two-space JSON indentation and the exact field set from `<SKILL_ROOT>/references/fragment-schema.md`.
- `source` examples: `{"kind":"help","command":"demo --help"}` or `{"kind":"none"}`.
- `notes` may be an empty string.

## 4. Fragment files

The fragment target is fixed by the path; use the layout in `<SKILL_ROOT>/references/fragment-schema.md` and never write a fragment for a different path. A directory and a same-named JSON file may coexist, so `sub.json` and `sub/nested.json` are both valid paths; the parent must list every child with a status.

## 5. Self-check

Run the shared validator before reporting success:

```sh
key="$(IFS='|'; echo "${path[*]}")"
jq -e -f "<SKILL_ROOT>/scripts/validate-fragment.jq" --arg key "$key" "<fragment>"
```

The key is the fragment `path` joined by `|`: `["gdb"]` -> `gdb`, `["gdb", "add"]` -> `gdb|add`. A root fragment's key is the root name alone (`gdb`, never `gdb|gdb`); a repeated root is the `path mismatch` error, not a valid key.

A fragment with two names whose first name is not a one-character short name is rejected here rather than losing its name and `choice_fn` during assembly; split it into one item per name (see *Names order*) and re-run the validator.

A non-zero exit means the fragment is invalid. Fix it rather than reporting success.

Also check that the fragment path matches the file location and that every child listed in `subcommands` will have its own fragment.

Finally, confirm that no description retains an internal sentence boundary (abbreviations and decimal points excepted), repeats its own `choices` (`description repeats choices`), or contains a machine-local path. A description that becomes empty after path removal is valid; redo *Description extraction* for the field instead of accepting it.

## 6. Failure handling

- If help/man cannot be obtained after one retry, write a minimal fragment with `items: []`, `subcommands: []`, `source: {"kind": "none"}`, and report `status: failed` plus the reason.
- If the command is a shell builtin with no `--help`, try `help <cmd>` and the relevant man page; do not fabricate definitions.
- If the fragment validator rejects a field, fix the field and re-run it. Do not weaken the validator.
- Never modify `llm-prompt`, `choice-fns`, or another node's fragment.

## 7. Return summary

Return exactly one compact JSON object as the final message (no fragment body, no help text body, and no prose, heading, or completion summary):

```json
{
  "path": ["demo", "remote"],
  "fragment": "<REPO_ROOT>/cache/compile/demo/remote.json",
  "help": "<REPO_ROOT>/cache/compile/demo/remote.txt",
  "cache": "n/a",
  "status": "succeeded",
  "source": "help",
  "subcommands": [
    {"name": "add", "aliases": [], "description": "Add a remote", "status": "todo"}
  ],
  "warnings": []
}
```

`fragment` and `help` are absolute paths in the returned object; the example shows them with `<REPO_ROOT>` as a template.

For the root, set `cache` to `hit`, `miss`, `new`, or `unknown`. For a child, use `n/a`. `status` is `succeeded` or `failed`; `source` is `help`, `man`, or `none`. Keep `warnings` short and actionable.
