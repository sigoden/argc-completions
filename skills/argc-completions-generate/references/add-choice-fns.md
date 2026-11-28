# Add-choice-fns workflow

Add dynamic completion candidates to an existing generated script: ownership, inventory, binding decisions, placement, and the assemble/test loop. Candidate protocol, context variables, split model, and debugging are in `<SKILL_ROOT>/references/compgen.md`; helper signatures are in `<REPO_ROOT>/utils/_argc_utils.sh`; composed recipes are in `<SKILL_ROOT>/references/compgen-recipes.md`; tool policy is in `<SKILL_ROOT>/references/setup.md`. Read §1–4 before editing and §5 when assembling; §2 *Helpers* is mandatory before the first function body; failures go to `<SKILL_ROOT>/references/troubleshooting.md`.

## Ownership

Edit only the `CHOICES` block and the matching fragment item's `choice_fn` (empty `choices` when a binding replaces a static list, including a described list that `STATIC` renders). A script with no dynamic functions has no `CHOICES` block, and a missing block is valid: create `# >>> CHOICES` / `# <<< CHOICES` before the final eval when adding the first function. The block contract is in `<SKILL_ROOT>/SKILL.md` §Pipeline contract; these write limits are authoritative. Run `<SKILL_ROOT>/scripts/assemble.sh` after edits; `SPEC` and `STATIC` change only through assembly, and command names, flags, options, args, aliases, notations, and descriptions stay as they are.

## 1. Preconditions

Resolve `<completion.sh>` and the cache directory from `<SKILL_ROOT>/scripts/preflight.sh <root>` (`completion_file`, `cache_dir`), never by listing the two growing directories. `<SKILL_ROOT>/scripts/verify-completion.sh <completion.sh> --cache-dir <REPO_ROOT>/cache/compile/<root>` must PASS. Run `all` if the script has no blocks, or finish generate-structure if the cache is incomplete or has `todo` nodes.

## 2. Inventory

Run the three `<SKILL_ROOT>/SKILL.md` §Inspection commands; the export lands in `/tmp/export.json`.

The summary prints `# command <path>`, then value-taking options and positionals (flags skipped); without `--arg cmd` it lists the root. An option row is `id`, space-joined `names`, `notations`, `choice`, `describe`, `prefixed`, `delimiter`, and `terminated`; positional rows include `required`, `multiple`, `delimiter`, and `terminated`; both show the existing `choice`.

The export holds one object per command: `name`, `flag_options`, `positionals`, `subcommands`. A `flag_options` entry has `id`, `names`, `notations`, `choice`, `describe`, `flag`, `prefixed`, `assigned`, `delimiter`, `terminated`; a `positionals` entry has `id`, `notation`, `required`, `multiple`, `choice`, `delimiter`, `terminated`. There is no top-level `.options` array and no `.name` on an entry; `flag_options` is an array, so iterate `.flag_options[]` (`.flag_options[0][0]` indexes an entry; `to_entries` yields rows). `names` is an array with every spelling. `id` is argc's canonical identifier, not necessarily the first name, and suffixes `$argc_<id>`. An older argc exports `short_name`/`long_name`; the skill scripts read either shape. Read one entry:

```sh
jq -c '.flag_options[] | select(.id == "<id>")' /tmp/export.json
```

The command tree: `jq -r '.. | objects | select(has("subcommands")) | .name' /tmp/export.json`.

The fragment summary shows the existing `choice_fn`/`choices` (`<SKILL_ROOT>/SKILL.md` §Inspection).

Skip flags; values with a non-null `choice`; complete static enumerations (described or not); path notation (`<path>`, `<file>`, `<dir>`, `<folder>`); and free text (message, name, url, regex, number, plain description). A terminated value is not free text: its array holds a command line and has an enumerable source. A `list` subcommand or a `--list*` option is the clearest sign that a `name`/`id`/`key` is enumerable, not free text: check for one before skipping, and bind what it prints wherever the same resource is consumed, including on the `list` subcommand itself.

### Helpers

Writing a `_choice_*`/`_helper_*` body has a mandatory lookup; it is not deferred and does not depend on whether you think you know a helper:

1. Read both section maps in full: `<REPO_ROOT>/utils/_argc_utils.sh` §*Section map* and `<SKILL_ROOT>/references/compgen-recipes.md` §*Section map*.
2. Read the section of each helper you call and of the recipe matching the value shape; each helper section is a `# ## _argc_util_* <signature>` heading followed by signature, sample, and constraints. Extract one section instead of the whole file:

   ```sh
   grep -n '^# ## ' <REPO_ROOT>/utils/_argc_utils.sh
   gawk '/^# ## _argc_util_comp_multi /, /^_argc_util_comp_multi\(\) \{/' <REPO_ROOT>/utils/_argc_utils.sh
   ```

3. Write the body from those samples. Do not assemble `__argc_prefix`, `__argc_filter`, `__argc_suffix`, `__argc_value`, or `__argc_cd` by hand, and do not hand-split a `prefixed`/`delimiter` word; `<SKILL_ROOT>/references/compgen.md` §5 describes those lines for reading and debugging, not as a construction kit.
4. If neither reference covers the shape, compose helpers in a local wrapper first. Hand-assembled control lines are the last resort: report the uncovered shape and the lines used so it can become a helper or recipe.

Use `_argc_util_*` for splitting, paths, transforms, and delegation; source them from `CHOICES` with `<REPO_ROOT>/utils/_argc_utils.sh` §*Source guard*. Read option values from `$argc_<id>` (`<SKILL_ROOT>/references/compgen.md` §2); path notation and free text need no binding; tool-specific values (git refs, container images, HTTP methods/headers, ssh options) use a query.

Read generate-structure's warnings first and match by tag: `mixed-enumeration` means the fragment intentionally has `choices: []` — bind a `_choice_*` that prints the literals instead of restoring `choices`; `no-args-binding` means a command-valued item may still need `terminated` (§3 *Command-valued binding*); `shared-help` is informational and binds like any other; `shared-help-missing` means no definition was available, so there is nothing to bind.

## 3. Choose a binding

1. Add or update the function in `CHOICES` before the final eval: `_choice_*` for a tag-bound entry point, `_helper_*` for an internal helper. Build its body from the helper or recipe selected under §2 *Helpers*; if it calls `_argc_util_*`, add the single `<REPO_ROOT>/utils/_argc_utils.sh` §*Source guard*.
2. Set the matching fragment item's `choice_fn` to the plain function name (no backticks). If the binding replaces a static list, set `choices` to `[]`; `<SKILL_ROOT>/scripts/set-choice-fns.sh` does this, including for a described list rendered as `[?`_static_*`]`.

Fragment lookup: one fragment per node under `<REPO_ROOT>/cache/compile/<root>/` (`<SKILL_ROOT>/references/fragment-schema.md`). Set the item for exactly one parameter; stop and report if no item matches; add or rename no items.

A multi-value option is still one item: keep every notation and bind the item once. Do not split the option into several items; branch on the slot inside the function (`<SKILL_ROOT>/references/compgen-recipes.md` §*Value slots of one option*).

### Multi-notation options

One binding serves every slot, so write a dispatcher, not one function per notation.

1. Inventory every notation in order before writing the body, and record a source or `none` for each:
   - `-D <chain> <rulenum?>`: slot 1 chains, slot 2 rule numbers of slot 1's chain, slot 3+ none.
   - `-P <chain> <target>`: slot 1 built-in chains, slot 2 the literals the help lists (`ACCEPT`, `DROP`).
   - `-E <old-chain> <new-chain>`: slot 1 user chains, slot 2 none (the new name is free text).
2. Read the slot from `${#argc_<id>[@]}`: it is 1-based and the current word is the array's last element. Read a stored earlier value with `${argc_<id>[0]}`; never use `${#...}` as an index into stored values.
3. `case` on the slot and return 0 with no output for a slot that has no source. A later slot must never repeat the previous slot's candidates.
4. argc applies a static `choices` list to every value of the item, so a list that belongs to one notation is wrong for the others. Binding empties `choices` for the whole item, so the function must reprint those literals in the slot that owns them.
5. A free-form remainder (`rule-specification`, `expression`, `args`) is a slot with no source: return 0 there; it may contain further options. How that notation is modeled belongs to compile (`<SKILL_ROOT>/agents/compile.md` §3.4).
6. If the item is `repeatable`, `${#argc_<id>[@]}` counts all occurrences; use the slot formula in `<SKILL_ROOT>/references/compgen-recipes.md` §*Value slots of one option* instead of the simple `case`.

With one helper per source, the dispatcher stays small:

```sh
# @option -D --delete[?`_choice_delete`] <chain> <rulenum?>
_choice_delete() {
    case "${#argc_delete[@]}" in
    1) _helper_chains ;;
    2) _helper_rulenum "${argc_delete[0]}" ;;
    esac
}
```

When one option is split across items (one name each), set `choice_fn` on **every** item. The ids differ, so a function reading `$argc_<id>` must switch to `argc__option` (`<SKILL_ROOT>/references/compgen.md` §2) or use an id-independent source.

**Command-valued binding.** When the item's name or notation is a command-family token (`COMMAND`, `CMD`, `PROGRAM`, `PROG`, `EXEC`, `SCRIPT`, case-insensitive), or its description says it executes a command, and the completion needs the command plus its arguments, use the command recipes in `<SKILL_ROOT>/references/compgen-recipes.md`: §*Command in a terminated option* (copies the option array with a nameref), §*Command plus terminated args* (separate args parameter), and §*Command in a terminated positional* (one positional holds both). `_choice_command` completes the executable and `_choice_command_args` delegates with `_argc_util_comp_subcommand 0`. Set `terminated: true` on the same item when compile did not mark it and its `repeatable`, `prefixed`, and `delimiter` allow it; stop and report instead of overriding them. Leave `required` alone: a terminated arg renders `~` alone, so a required command positional stays `required: true` (`<SKILL_ROOT>/references/fragment-schema.md`). Then queue it for the §5 gate. Never fake the behavior with `repeatable` or a `delimiter`.

Update the fragment with the tested helper. One call carries every binding for that fragment; the trailing `~` before the bracket sets `terminated: true`. The script resolves and validates the whole batch atomically, writes only when every binding succeeds, and empties `choices` for bound items:

```sh
fragment="<REPO_ROOT>/cache/compile/<root>/<...>.json"
bash <SKILL_ROOT>/scripts/set-choice-fns.sh "$fragment" '--foo[`_choice_foo`]'
bash <SKILL_ROOT>/scripts/set-choice-fns.sh "$fragment" '--command~[`_choice_command_args`]'
bash <SKILL_ROOT>/scripts/set-choice-fns.sh "$fragment" \
  '--output[`_choice_output`]' '--format[`_choice_format`]' \
  '--eval-command[`_choice_value`]' '-ex[`_choice_value`]' '--command~[`_choice_command_args`]'
```

Quote each binding with single quotes: inside double quotes the backticks run command substitution; the bare function name without backticks is also accepted. A name that ends in `~` cannot be written as a binding because its trailing `~` reads as the terminated marker; bind that item by its other name.

## 4. Function placement and naming

- Put functions between `# >>> CHOICES` and `# <<< CHOICES`, before the final eval, with the single library source guard at the top. An absent block means no dynamic functions: add the markers before writing the first function, because a definition outside the block fails `<SKILL_ROOT>/scripts/format-choices.sh`.
- Only top-level `_choice_*`/`_helper_*` may appear there; the formatter renames every other name to `_helper_<name>` and sorts the block. Define `_choice_*` only in `CHOICES`; the `_static_` prefix belongs to the `STATIC` block that assembly generates.
- Name new functions `_choice_<param>`, or `_choice_<subcmd>_<param>` when the same param has different sources per subcommand. Reuse an existing function; duplicate definitions fail verify.
- Bind a local `_choice_<param>` wrapper instead of copying a helper into the script; put early returns, caching, and context handling in the wrapper.
- Function bodies follow `<SKILL_ROOT>/references/compgen.md` §1–2 for output, context, and tool probes; the §2 *Helpers* lookup is mandatory before writing one.
- A choice function must be callable from the script's top level; do not rely on a command function having run.

## 5. Batch, assemble, test

Formatting, assembly, and verification each rewrite or re-read the whole script, so an edit between two gate runs is wasted. Do every edit for the batch first, then pass the gate once.

1. Edit phase — no `<SKILL_ROOT>/scripts/format-choices.sh` and no `<SKILL_ROOT>/scripts/assemble.sh` between edits:
   - add or update every `CHOICES` function the batch needs, each built from a helper or recipe read under §2 *Helpers*;
   - run `<SKILL_ROOT>/scripts/set-choice-fns.sh` once per fragment with every binding in that fragment (atomic and validated).

   Before leaving the edit phase, re-check each new body against §2: a documented helper or recipe was used, and every hand-assembled control line is reported. Keep a batch to one node or about ten bindings, so a failure is easy to localize.

2. Gate — once per batch:

   ```sh
   bash <SKILL_ROOT>/scripts/format-choices.sh <completion.sh>
   bash <SKILL_ROOT>/scripts/assemble.sh <root> --cache-dir <REPO_ROOT>/cache/compile/<root> \
     --output <completion.sh> --force
   bash <SKILL_ROOT>/scripts/verify-completion.sh <completion.sh> --cache-dir <REPO_ROOT>/cache/compile/<root>
   ```

   The exact `SPEC` comparison in verify must pass. The gate is cheap and idempotent: after fixing a failure, re-run all three instead of bisecting. It rewrites the script, so re-read it before the next edit. Exception: when one binding's candidate protocol is still uncertain (a new helper, an unknown split, an external service), gate that binding alone first.

3. Compgen the option's own word (not a value followed by an empty positional):

   ```sh
   argc --argc-compgen generic <completion.sh> <root> --foo ''
   argc --argc-compgen generic <completion.sh> <root> <sub> --foo ''
   ```

   A value followed by an empty positional (`--foo value ''`) completes the next word, not `--foo`; with a terminated command or positional that next word is the command or positional. Assert values with `<SKILL_ROOT>/scripts/test-compgen.sh` (`-x` exact, `-e` regex, `-a` absent regex, `-c` count, `-l` list) rather than a hand-written pipeline; shell-specific modes are integration smoke, not a candidate oracle.

   For a multi-notation option, test every slot: `--pair ''` (slot 1), `--pair left ''` (slot 2), and `--pair left right ''` (no candidates, arity exhausted). Assert that slot 1's candidates are absent from slot 2 with `-a '^<slot1-candidate>$'`.

4. Candidate-level checks: use `<SKILL_ROOT>/scripts/test-compgen.sh` for each assertion (details in `<SKILL_ROOT>/references/compgen.md` §6); give each source a unique target name so a wrong source is visible; give each source distinct content; create the directory and default file for a `-C` option; define at least one variable for `VAR=`; assert one known candidate and a no-candidate case for a wrapper; cover an empty directory and a prefix filter, both exiting 0.

5. Use the direct-call harness in `<SKILL_ROOT>/references/compgen.md` §6 when needed; do not wrap an external service in `timeout` (`<SKILL_ROOT>/references/compgen.md` §1).

## 6. Failure handling

Read `<SKILL_ROOT>/references/troubleshooting.md` §Choice functions, fix the `CHOICES` block or the fragment `choice_fn`, then re-run the §5 gate.
