# Add-choice-fns workflow

Add dynamic completion candidates to an existing generated script: ownership, preconditions, inventory, binding decisions, placement, and the assemble/test loop. The candidate protocol, context variables, split model, and debugging are in `<SKILL_ROOT>/references/compgen.md`; helper signatures are in `<SKILL_ROOT>/references/compgen-helpers.md`; composed recipes are in `<SKILL_ROOT>/references/compgen-recipes.md`; tool policy and portability are in `<SKILL_ROOT>/references/setup.md`. Read this file's §1–4 before editing and §5 when assembling; failures go to `<SKILL_ROOT>/references/troubleshooting.md`.

## Ownership

Edit only the `CHOICES` block and the matching fragment item's `choice_fn` (empty `choices` when a binding replaces a static list, including a described list that `STATIC` renders). When the binding is command-valued, also set `terminated: true` on that item when its `repeatable`, `prefixed`, and `delimiter` fields allow it; never clear an existing `terminated`. A script with no dynamic functions has no `CHOICES` block, and a missing block is valid: create `# >>> CHOICES` / `# <<< CHOICES` before the final eval when you add the first function. The block contract is in `<SKILL_ROOT>/SKILL.md` §Pipeline contract; these write limits are authoritative. Run `<SKILL_ROOT>/scripts/assemble.sh` after edits; `SPEC` and `STATIC` change only through assembly, and command names, flags, options, args, aliases, notations, and descriptions stay as they are.

## 1. Preconditions

`<SKILL_ROOT>/scripts/verify-completion.sh <completion.sh> --cache-dir <REPO_ROOT>/cache/compile/<root>` must PASS. Run `all` if the script has no blocks, or finish generate-structure if the cache is incomplete or has `todo` nodes.

## 2. Inventory

Run the export, the parameter summary, and the fragment summary from `<SKILL_ROOT>/SKILL.md` §Inspection; the export writes `/tmp/export.json`, and the parameter summary also accepts one subtree.

The summary prints `# command <path>`, then value-taking options and positionals (flags skipped); without `--arg cmd` it lists the root. Option rows end with `prefixed`, `delimiter`, and `terminated`; positional rows include `required`, `multiple`, `delimiter`, and `terminated`; both show the existing `choice`.

The export holds one object per command: `name`, `flag_options`, `positionals`, `subcommands`. A `flag_options` entry has `id`, `short_name`, `long_name`, `notations`, `choice`, `describe`, `flag`, `prefixed`, `assigned`, `delimiter`, `terminated`; a `positionals` entry has `id`, `notation`, `required`, `multiple`, `choice`, `delimiter`, `terminated`. There is no top-level `.options` array and no `.name` field on an entry; `flag_options` is an array, so iterate `.flag_options[]` (`.flag_options[0][0]` indexes an entry; `to_entries` yields rows). Names live in `short_name`/`long_name`; `id` suffixes `$argc_<id>`. Read one entry:

```sh
jq -c '.flag_options[] | select(.id == "<id>")' /tmp/export.json
```

The command tree: `jq -r '.. | objects | select(has("subcommands")) | .name' /tmp/export.json`.

The fragment summary shows the existing `choice_fn`/`choices` (command: `<SKILL_ROOT>/SKILL.md` §Inspection).

Skip flags; values with a non-null `choice`; complete static enumerations (with or without descriptions); path notation (`<path>`, `<file>`, `<dir>`, `<folder>`); and free text (message, name, url, regex, number, plain description). A terminated value is not free text: its array holds a command line and has an enumerable source.

### Helpers

Use the `_argc_util_*` helpers in `<REPO_ROOT>/utils/_argc_utils.sh` for splitting, paths, transforms, and delegation; source them from `CHOICES` with the guard (`<SKILL_ROOT>/references/compgen-helpers.md` §1). Read option values from `$argc_<id>` (`<SKILL_ROOT>/references/compgen.md` §2); path notation and free text need no binding; tool-specific values (git refs, container images, HTTP methods/headers, ssh options) use a query.

Read generate-structure's warnings first and match them by tag: `mixed-enumeration` means the fragment intentionally has `choices: []` — bind a `_choice_*` that prints the literals instead of restoring `choices`; `no-args-binding` means a command-valued item may still need `terminated` (§3 *Command-valued binding*).

## 3. Choose a binding

1. Add or update the function in `CHOICES` before the final eval: `_choice_*` for a tag-bound entry point, `_helper_*` for an internal helper. If it calls `_argc_util_*`, add the single `<REPO_ROOT>/utils/_argc_utils.sh` source guard.
2. Set the matching fragment item's `choice_fn` to the plain function name (no backticks). If the binding replaces a static list, set `choices` to `[]`; `<SKILL_ROOT>/scripts/set-choice-fns.sh` does this, including for a described list that `STATIC` currently renders as `[?`_static_*`]`.

Fragment lookup: one fragment per node under `<REPO_ROOT>/cache/compile/<root>/` (`<SKILL_ROOT>/references/fragment-schema.md`). Set the item for exactly one parameter; stop and report if no item matches; add or rename no items.

When one option is split across items (one name each), set `choice_fn` on **every** item of that option. The ids differ, so a function reading `$argc_<id>` must switch to `argc__option` (`<SKILL_ROOT>/references/compgen.md` §2) or use an id-independent source.

**Command-valued binding.** When the item's name or notation is a command-family token (`COMMAND`, `CMD`, `PROGRAM`, `PROG`, `EXEC`, `SCRIPT`, case-insensitive), or its description says it executes a command, and the completion needs the command plus its arguments, use the recipe in `<SKILL_ROOT>/references/compgen-recipes.md` §*Command-valued option*: `_choice_command` (backed by `_argc_util_comp_command`) for the executable and `_choice_command_args` to copy the option array with a nameref and delegate with `_argc_util_comp_subcommand 0`. Set `terminated: true` on the same item when compile did not mark it and its `repeatable`, `prefixed`, and `delimiter` fields allow it; stop and report instead of overriding them. Then queue it for the §5 gate. Never fake the behavior with `repeatable` or a `delimiter`.

Update the fragment with the tested helper. One call carries every binding for that fragment; the trailing `~` before the bracket sets `terminated: true`. It rejects flags, missing items, duplicate or overlapping bindings, and terminated conflicts, empties `choices`, and writes only after the whole batch validates:

```sh
fragment="<REPO_ROOT>/cache/compile/<root>/<...>.json"
bash <SKILL_ROOT>/scripts/set-choice-fns.sh "$fragment" '--foo[`_choice_foo`]'
# Split option: one binding per item.
bash <SKILL_ROOT>/scripts/set-choice-fns.sh "$fragment" \
  '--eval-command[`_choice_value`]' '-ex[`_choice_value`]'
# Command-valued binding:
bash <SKILL_ROOT>/scripts/set-choice-fns.sh "$fragment" '--command~[`_choice_command_args`]'
# Whole batch in one call:
bash <SKILL_ROOT>/scripts/set-choice-fns.sh "$fragment" \
  '--output[`_choice_output`]' '--format[`_choice_format`]' '--command~[`_choice_command_args`]'
```

Quote each binding with single quotes: inside double quotes the backticks run command substitution, and the bare function name without backticks is also accepted. A name that ends in `~` (only the `-~`/`+~` first name of a two-name item) cannot be written as a binding, because its trailing `~` reads as the terminated marker; bind that item by its other name.

## 4. Function placement and naming

- Put functions between `# >>> CHOICES` and `# <<< CHOICES`, before the final eval, with the single library source guard at the top of the block. An absent block means no dynamic functions: add the markers before writing the first function, because a definition outside the block fails `<SKILL_ROOT>/scripts/format-choices.sh`.
- Only top-level `_choice_*`/`_helper_*` may appear there; the formatter renames every other name to `_helper_<name>` (leading underscores stripped). Sort by final name with `LC_ALL=C` (`_choice_*` first); doc comments immediately above a function move with it, block-level comments are separated by a blank line, and top-level declarations precede the first function.
- Define `_choice_*` only in `CHOICES`; the `_static_` prefix belongs to the `STATIC` block that assembly generates. Name new functions `_choice_<param>`, or `_choice_<subcmd>_<param>` when the same param has different data or sources per subcommand. Reuse an existing function; duplicate definitions fail verify.
- Bind a local `_choice_<param>` wrapper instead of copying a helper into the script; put guards, caching, and context handling in the wrapper.
- Function bodies follow `<SKILL_ROOT>/references/compgen.md` §1–2 for output, context, and tool guards; use `<SKILL_ROOT>/references/compgen.md` §5 for a custom split and `<SKILL_ROOT>/references/compgen-helpers.md` for helper mechanics.
- A choice function must be callable from the script's top level; do not rely on a command function having run.

## 5. Batch, assemble, test

Formatting, assembly, and verification each rewrite or re-read the whole script, so an edit made between two gate runs is wasted work. Do every edit for the batch first, then pass the gate once.

1. Edit phase — no `<SKILL_ROOT>/scripts/format-choices.sh` and no `<SKILL_ROOT>/scripts/assemble.sh` between edits:
   - add or update every `CHOICES` function the batch needs;
   - run `<SKILL_ROOT>/scripts/set-choice-fns.sh` once per fragment with every binding in that fragment (it applies the batch atomically and validates that fragment).

   Keep a batch to one node, or about ten bindings, so a gate failure is easy to localize.

2. Gate — once per batch:

   ```sh
   bash <SKILL_ROOT>/scripts/format-choices.sh <completion.sh>
   bash <SKILL_ROOT>/scripts/assemble.sh <root> --cache-dir <REPO_ROOT>/cache/compile/<root> \
     --output <completion.sh> --force
   bash <SKILL_ROOT>/scripts/verify-completion.sh <completion.sh> --cache-dir <REPO_ROOT>/cache/compile/<root>
   ```

   The exact `SPEC` comparison in verify must pass. The gate is cheap and idempotent: after fixing a failure, re-run all three instead of bisecting the batch. It rewrites the script, so re-read it before the next edit (editors that guard against stale reads reject the old snapshot).

   Exception: when one binding's candidate protocol is still uncertain (a new helper, an unknown split, an external service), gate that binding alone first and add the rest to the batch afterwards.

3. Compgen the option's own word (not a value followed by an empty positional):

   ```sh
   argc --argc-compgen generic <completion.sh> <root> --foo ''
   argc --argc-compgen generic <completion.sh> <root> <sub> --foo ''
   ```

   A value followed by an empty positional (`--foo value ''`) completes the next word, not `--foo`; with a terminated command or positional that next word is the command or positional, so command candidates there are expected. Assert values with `<SKILL_ROOT>/scripts/test-compgen.sh` (`-x` exact, `-e` regex, `-a` absent regex, `-c` count, `-l` list) rather than a hand-written `tr`/`cut`/`grep` pipeline; shell-specific modes are integration smoke, not a candidate oracle.

4. Candidate-level checks: use `<SKILL_ROOT>/scripts/test-compgen.sh` for each assertion (details in `<SKILL_ROOT>/references/compgen.md` §6); give each source a unique target name so a wrong source is visible; give each source distinct content; create the directory and default file for a `-C` option; define at least one variable for `VAR=`; assert one known candidate and a no-candidate case for a wrapper (do not only assert exit status); cover an empty directory and a prefix filter, both exiting 0.

5. Use the direct-call harness in `<SKILL_ROOT>/references/compgen.md` §6 when needed, and a timeout around network or external services.

## 6. Failure handling

Read `<SKILL_ROOT>/references/troubleshooting.md` §Choice functions, fix the `CHOICES` block or the fragment `choice_fn`, then re-run the §5 gate.
