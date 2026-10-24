# Add-choice-fns workflow

Add dynamic completion candidates to an existing generated script. This file is the procedure: ownership, preconditions, inventory, binding decisions, function placement, and the assemble/test loop. The candidate protocol, context variables, helper index, recipes, and debugging techniques are in `<SKILL_ROOT>/references/compgen.md`; tool policy and shell portability are in `<SKILL_ROOT>/references/setup.md`. Link to them instead of restating them.

Read §1–4 before editing; §5 when assembling or testing. Failures go to `<SKILL_ROOT>/references/troubleshooting.md`.

## Ownership

This workflow edits only the `choice-fns` block and a matching fragment item's `choice_fn` (and empties `choices` when a binding replaces a static list). The block contract and write restrictions are in `<SKILL_ROOT>/SKILL.md` §Pipeline contract and §Hard rules. Do not change command names, flags, options, args, aliases, or descriptions.

## 1. Preconditions

Run `<SKILL_ROOT>/scripts/verify-completion.sh` (see `<SKILL_ROOT>/references/verify.md`) with `--cache-dir <REPO_ROOT>/cache/compile/<root>` and require a PASS. If the script has no blocks, run `all` first. If `<REPO_ROOT>/cache/compile/<root>` is incomplete or has `todo` nodes, finish generate-structure first. A `generate-structure` or `regenerate` run that reports `next=add-choice-fns` (`<SKILL_ROOT>/references/generate-structure.md` §8) is the normal entry point for an existing script; for a brand-new command, `all` enters this workflow directly after the structure verify. If verify fails only on `choice-fns format`, run `<SKILL_ROOT>/scripts/format-choice-fns.sh <completion.sh>` and re-run verify.

A full or subtree regenerate resets cache entries but keeps the script's dynamic layer: preserve every existing `choice-fns` function, source line, and `choice_fn` binding (including any leading `?`), and add only genuinely missing bindings. See `<SKILL_ROOT>/references/generate-structure.md` §2 for what a reset preserves.

## 2. Inventory

```sh
argc --argc-export <completion.sh> >/tmp/<root>.export.json
jq -r -f <SKILL_ROOT>/scripts/inspect-script-params.jq /tmp/<root>.export.json
# One command subtree: the leading root name is optional and aliases work
jq -r -f <SKILL_ROOT>/scripts/inspect-script-params.jq --arg cmd '<root> <sub>' /tmp/<root>.export.json
```

That prints the resolved command in a `# command <path>` header, then value-taking options and positionals, and skips flags. Without `--arg cmd` the root command is listed. Option rows end with `prefixed` and `delimiter`; positional rows include `required`, `multiple`, and `delimiter`; both show the existing `choice`.

The export is one object per command: `name`, `flag_options`, `positionals`, `subcommands`, and each subcommand repeats the same shape. A `flag_options` entry has `id`, `short_name`, `long_name`, `notations`, `choice`, `describe`, `flag`, `prefixed`, `assigned`, and `delimiter`; a `positionals` entry has `id`, `notation`, `required`, `multiple`, `choice`, and `delimiter`. There is no top-level `.options` array and no `.name` field on an entry, and `flag_options` is an array, so iterate it with `.flag_options[]`; `.flag_options[0][0]` indexes an entry object and `to_entries` turns it into index/value rows instead of option entries. Names live in `short_name` and `long_name`; `id` is the suffix of the generated `$argc_<id>` variable. Read one entry from that export:

```sh
jq -c '.flag_options[] | select(.id == "<id>")' /tmp/<root>.export.json
```

For the command tree:

```sh
jq -r '.. | objects | select(has("subcommands")) | .name' /tmp/<root>.export.json
```

Never merge streams while probing: write stdout to a file and read stderr separately. `<SKILL_ROOT>/SKILL.md` §Inspection applies this to both `argc` commands.

The fragment item summary shows the existing `choice_fn` and `choices` for the matching node:

```sh
jq -r -f <SKILL_ROOT>/scripts/inspect-fragment-items.jq <REPO_ROOT>/cache/compile/<root>/<fragment>.json
```

Skip:

- flags;
- values that already have a non-null `choice`;
- complete static enumerations;
- values whose notation is `<path>`, `<file>`, `<dir>`, or `<folder>` (argc generates path candidates);
- free-text values such as message, name, url, regex, number, or a plain description.

An option marked `prefixed` already receives `ARGC_CWORD` after the prefix, and an option or arg with a `delimiter` is already split at its separator by argc. Do not re-split either word inside the choice function; follow the split rules in `<SKILL_ROOT>/references/compgen.md` §5 and emit candidates for the current part only.


### Helpers

Use the shared `_argc_util_*` helpers in `<REPO_ROOT>/utils/_argc_utils.sh` for word splitting, path completion, transforms, and command delegation. Source the library from `choice-fns` with the guard; `<SKILL_ROOT>/references/compgen.md` §6 indexes the helpers and their arguments.

- Read option values from `$argc_<id>`; the naming rule and the other context variables are in `<SKILL_ROOT>/references/compgen.md` §2.
- Path notation and free text need no extra binding; tool-specific values (git refs, container images, HTTP methods/headers, ssh options) use a tool query.

If generate-structure ran in this session, read its warnings first. A warning about a mixed enumeration or a free-form value means the fragment intentionally has `choices: []`; bind a `_choice_*` that prints the literal alternatives instead of restoring static `choices`. The free-form value cannot be enumerated, so the optional `?` hint fits this binding.

## 3. Choose a binding

For each option/arg that needs candidates:

1. Add or update the function in `choice-fns`, before the final eval. Use `_choice_*` for a bound entry point; an internal helper not referenced by a tag may be `_helper_*`. If it calls an `_argc_util_*` helper, add the single `<REPO_ROOT>/utils/_argc_utils.sh` source guard.
2. Set the matching fragment item's `choice_fn` to the function name (without backticks; add the optional `?` hint only as described below). If the dynamic binding replaces a static list, set `choices` to `[]`.
3. Assemble and test (§5).

Binding marker (`?`):

- Default: `choice_fn = "_choice_foo"`. Completion reads the tags through `argc --argc-compgen` and never validates the completed word; `?` would only matter if the script were evaluated with arguments. Omit it when the function can list every valid value, and do not add it for consistency.
- Add `?` (`choice_fn = "?_choice_foo"`) only when the function cannot list every valid value: remote refs, package names, arbitrary hostnames, or a mixed literal/free-form enumeration. There it is an optional hint for readers that a value outside the candidate list may still be valid. Do not audit, normalize, or synchronize the marker; a missing or extra `?` is not a defect.

Fragment lookup: one fragment per command node under `<REPO_ROOT>/cache/compile/<root>/`; the layout is in `<SKILL_ROOT>/references/fragment-schema.md`.

Set the item for exactly one parameter. Stop and report if no item matches; never add or rename items.

When one option is split across items (one name each, because the help pairs names argc cannot accept together), set `choice_fn` on **every** item of that option. The items have different ids, so a function that reads `$argc_<id>` must switch to `argc__option` (`<SKILL_ROOT>/references/compgen.md` §2) or use a source that does not depend on the option id.

```sh
fragment="<REPO_ROOT>/cache/compile/<root>/<...>.json"
tmp="$(mktemp)"
jq --arg name '--foo' --arg fn '_choice_foo' '
  .items |= map(
    if ((.kind == "flag" or .kind == "option")
        and ((.names // []) | index($name)))
       or (.kind == "arg" and .name == $name)
    then .choice_fn = $fn | .choices = []
    else . end
  )
' "$fragment" >"$tmp" && mv "$tmp" "$fragment"
```

## 4. Function placement and naming

- Put functions between `# >>> choice-fns` and `# <<< choice-fns`, before the final eval; put the single library source guard at the top of the block.
- Only top-level `_choice_*` and `_helper_*` functions may appear in `choice-fns`. Every other name is renamed to `_helper_<name>` by the formatter (leading underscores are stripped).
- Definitions are sorted by final name with `LC_ALL=C`; `_choice_*` therefore precedes `_helper_*`. Doc comments immediately above a function (no blank line) move with it; separate block-level comments from the first function with a blank line, and keep top-level declarations before the first function.
- Run `bash <SKILL_ROOT>/scripts/format-choice-fns.sh <completion.sh>` after adding or renaming functions. `<SKILL_ROOT>/scripts/verify-completion.sh` runs the same formatter in `--check` mode and fails a non-canonical block.
- The formatter aborts without writing if a rename would collide, if the old name is also used as a shell variable, or if the old name is still bound by backticks in `llm-generate`. Fix the binding or rename manually, then re-run it.
- Never define a `_choice_*` function in `llm-generate`.
- Name new command-specific functions `_choice_<param>`; if the same param name appears in several subcommands with different data, or with different sources, use `_choice_<subcmd>_<param>` so each wrapper calls its own completer.
- Reuse an existing function instead of redefining it. Duplicate definitions are a verify failure.
- When a wrapper calls an `_argc_util_*` helper, source `<REPO_ROOT>/utils/_argc_utils.sh` with the guard and bind a local `_choice_<param>` wrapper. Never copy an `_argc_util_*` helper into the script; put guards, caching, or context handling in the wrapper.
- Function bodies follow `<SKILL_ROOT>/references/compgen.md` §1–2 for output, context, and tool guards; use §5 only when a value needs a custom split, and §6 for helper mechanics.
- A choice function must be callable from the script's top level; do not rely on a specific command function having run.

## 5. Assemble and test

1. Format, assemble, and verify after every fragment or `choice-fns` change:

   ```sh
   bash <SKILL_ROOT>/scripts/format-choice-fns.sh <completion.sh>
   bash <SKILL_ROOT>/scripts/assemble.sh <root> --cache-dir <REPO_ROOT>/cache/compile/<root> \
     --output <completion.sh> --force
   bash <SKILL_ROOT>/scripts/verify-completion.sh <completion.sh> --cache-dir <REPO_ROOT>/cache/compile/<root>
   ```

   The exact `llm-generate` comparison in verify must pass.

2. Compgen through the completion engine, completing the option's own word (not a value followed by an empty positional):

   ```sh
   argc --argc-compgen bash <completion.sh> <root> --foo ''
   argc --argc-compgen bash <completion.sh> <root> sub --foo ''
   ```

   Use `argc --argc-compgen generic` for nospace or control lines (`<SKILL_ROOT>/references/compgen.md` §8).

3. Candidate-level checks and fixtures:

   - Give each source a unique target name, so a wrong source is visible; do not test two sources that contain identical content.
   - For a `-C`/directory option, create the target directory and its default file before testing.
   - For `VAR=` completion, the config file must define at least one variable.
   - For a wrapper, assert one known candidate and a no-candidate case; do not only assert exit status.
   - Cover a no-candidate case (empty directory) and a prefix filter; both must exit 0.

4. Run the function directly with the harness in `<SKILL_ROOT>/references/compgen.md` §8 when the engine call is not enough. Use a timeout around commands that touch the network or external services.

## 6. Failure handling

On failure, read `<SKILL_ROOT>/references/troubleshooting.md` §Choice functions first. Fix the `choice-fns` block or the fragment `choice_fn`, then re-run assembly and verification.
