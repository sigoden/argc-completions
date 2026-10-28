# Add-choice-fns workflow

Add dynamic completion candidates to an existing generated script: ownership, preconditions, inventory, binding decisions, placement, and the assemble/test loop. The protocol, context variables, helpers, recipes, and debugging are in `<SKILL_ROOT>/references/compgen.md`; tool policy and portability are in `<SKILL_ROOT>/references/setup.md`. Read §1–4 before editing and §5 when assembling; failures go to `<SKILL_ROOT>/references/troubleshooting.md`.

## Ownership

Edit only the `choice-fns` block and the matching fragment item's `choice_fn` (empty `choices` when a binding replaces a static list). When the binding is command-valued, also set `terminated: true` on that item when its `repeatable`, `prefixed`, and `delimiter` fields allow it; never clear an existing `terminated`. The block contract and write limits are in `<SKILL_ROOT>/SKILL.md` §Pipeline contract and §Hard rules; never change command names, flags, options, args, aliases, notations, or descriptions.

## 1. Preconditions

`<SKILL_ROOT>/scripts/verify-completion.sh <completion.sh> --cache-dir <REPO_ROOT>/cache/compile/<root>` must PASS. Run `all` if the script has no blocks, or finish generate-structure if the cache is incomplete or has `todo` nodes. A run reporting `next=add-choice-fns` (`<SKILL_ROOT>/references/generate-structure.md` §8) is the normal entry point; a new command reaches this workflow through `all`. If verify fails only on `choice-fns format`, run `<SKILL_ROOT>/scripts/format-choice-fns.sh <completion.sh>` and re-run.

A regenerate resets cache entries but keeps the dynamic layer: preserve every existing `choice-fns` function, source line, and `choice_fn` binding, and add only missing bindings (`<SKILL_ROOT>/references/generate-structure.md` §2).

## 2. Inventory

```sh
argc --argc-export <completion.sh> >/tmp/<root>.export.json
jq -r -f <SKILL_ROOT>/scripts/inspect-script-params.jq /tmp/<root>.export.json
# One subtree: the root name is optional and aliases work
jq -r -f <SKILL_ROOT>/scripts/inspect-script-params.jq --arg cmd '<root> <sub>' /tmp/<root>.export.json
```

It prints `# command <path>`, then value-taking options and positionals (flags skipped); without `--arg cmd` it lists the root. Option rows end with `prefixed`, `delimiter`, and `terminated`; positional rows include `required`, `multiple`, `delimiter`, and `terminated`; both show the existing `choice`.

The export holds one object per command: `name`, `flag_options`, `positionals`, `subcommands`. A `flag_options` entry has `id`, `short_name`, `long_name`, `notations`, `choice`, `describe`, `flag`, `prefixed`, `assigned`, `delimiter`, `terminated`; a `positionals` entry has `id`, `notation`, `required`, `multiple`, `choice`, `delimiter`, `terminated`. There is no top-level `.options` array and no `.name` field on an entry; `flag_options` is an array, so iterate `.flag_options[]` (`.flag_options[0][0]` indexes an entry; `to_entries` yields rows). Names live in `short_name`/`long_name`; `id` suffixes `$argc_<id>`. Read one entry:

```sh
jq -c '.flag_options[] | select(.id == "<id>")' /tmp/<root>.export.json
```

The command tree: `jq -r '.. | objects | select(has("subcommands")) | .name' /tmp/<root>.export.json`.

Never merge streams; write stdout to a file and read stderr separately (`<SKILL_ROOT>/SKILL.md` §Inspection). The fragment summary shows the existing `choice_fn`/`choices`:

```sh
jq -r -f <SKILL_ROOT>/scripts/inspect-fragment-items.jq <REPO_ROOT>/cache/compile/<root>/<fragment>.json
```

Skip flags; values with a non-null `choice`; complete static enumerations; path notation (`<path>`, `<file>`, `<dir>`, `<folder>`); and free text (message, name, url, regex, number, plain description). A terminated value is not free text: its array holds a command line and has an enumerable source.

An option marked `prefixed` receives `ARGC_CWORD` after the prefix, and a `delimiter` option/arg is already split by argc; do not re-split either word (`<SKILL_ROOT>/references/compgen.md` §5), and emit candidates for the current part only.

### Helpers

Use the `_argc_util_*` helpers in `<REPO_ROOT>/utils/_argc_utils.sh` for splitting, paths, transforms, and delegation; source them from `choice-fns` with the guard (`<SKILL_ROOT>/references/compgen.md` §6). Read option values from `$argc_<id>` (§2); path notation and free text need no binding; tool-specific values (git refs, container images, HTTP methods/headers, ssh options) use a query.

Read generate-structure's warnings first: a mixed-enumeration or free-form warning means the fragment intentionally has `choices: []`; bind a `_choice_*` that prints the literals instead of restoring `choices`.

## 3. Choose a binding

1. Add or update the function in `choice-fns` before the final eval: `_choice_*` for a tag-bound entry point, `_helper_*` for an internal helper. If it calls `_argc_util_*`, add the single `<REPO_ROOT>/utils/_argc_utils.sh` source guard.
2. Set the matching fragment item's `choice_fn` to the plain function name (no backticks). If the binding replaces a static list, set `choices` to `[]`.
3. Assemble and test (§5).

Fragment lookup: one fragment per node under `<REPO_ROOT>/cache/compile/<root>/` (`<SKILL_ROOT>/references/fragment-schema.md`). Set the item for exactly one parameter; stop and report if no item matches and never add or rename items.

When one option is split across items (one name each), set `choice_fn` on **every** item of that option. The ids differ, so a function reading `$argc_<id>` must switch to `argc__option` (`<SKILL_ROOT>/references/compgen.md` §2) or use an id-independent source.

**Command-valued binding.** When the item's name or notation is a command-family token (`COMMAND`, `CMD`, `PROGRAM`, `PROG`, `EXEC`, `SCRIPT`, case-insensitive), or its description says it executes a command, and the completion needs the command plus its arguments, use the recipe in `<SKILL_ROOT>/references/compgen.md` §7 *Command-valued option*: `_choice_command` for the executable and `_choice_command_args` to copy the option array with a nameref and delegate with `_argc_util_comp_subcommand 0`. Set `terminated: true` on the same item when compile did not mark it and its `repeatable`, `prefixed`, and `delimiter` fields allow it; stop and report instead of overriding them. Then assemble and verify. Never fake the behavior with `repeatable` or a `delimiter`.

Update the fragment with the tested helper. It matches every name passed, rejects flags and missing items, empties `choices`, optionally sets `terminated`, and writes only after validation:

```sh
fragment="<REPO_ROOT>/cache/compile/<root>/<...>.json"
bash <SKILL_ROOT>/scripts/set-choice-fn.sh "$fragment" _choice_foo --foo
# Split option: pass every name.
bash <SKILL_ROOT>/scripts/set-choice-fn.sh "$fragment" _choice_value --eval-command -ex
# Command-valued binding:
bash <SKILL_ROOT>/scripts/set-choice-fn.sh --terminated "$fragment" _choice_command_args --command
```

## 4. Function placement and naming

- Put functions between `# >>> choice-fns` and `# <<< choice-fns`, before the final eval, with the single library source guard at the top of the block.
- Only top-level `_choice_*`/`_helper_*` may appear there; the formatter renames every other name to `_helper_<name>` (leading underscores stripped). Sort by final name with `LC_ALL=C` (`_choice_*` first); doc comments immediately above a function move with it, block-level comments are separated by a blank line, and top-level declarations precede the first function.
- Run `bash <SKILL_ROOT>/scripts/format-choice-fns.sh <completion.sh>` after adding or renaming functions; verify runs the same formatter in `--check` mode and fails a non-canonical block.
- The formatter aborts without writing on a rename collision, when the old name is also a shell variable, or when `llm-generate` still binds the old name by backticks; fix the binding or rename manually and re-run.
- Never define `_choice_*` in `llm-generate`. Name new functions `_choice_<param>`, or `_choice_<subcmd>_<param>` when the same param has different data or sources per subcommand. Reuse an existing function; duplicate definitions fail verify.
- When a wrapper calls `_argc_util_*`, source `<REPO_ROOT>/utils/_argc_utils.sh` with the guard and bind a local `_choice_<param>` wrapper; never copy a helper into the script. Put guards, caching, and context handling in the wrapper.
- Function bodies follow `<SKILL_ROOT>/references/compgen.md` §1–2 for output, context, and tool guards; use §5 for a custom split and §6 for helper mechanics.
- A choice function must be callable from the script's top level; do not rely on a command function having run.

## 5. Assemble and test

1. After every fragment or `choice-fns` change:

   ```sh
   bash <SKILL_ROOT>/scripts/format-choice-fns.sh <completion.sh>
   bash <SKILL_ROOT>/scripts/assemble.sh <root> --cache-dir <REPO_ROOT>/cache/compile/<root> \
     --output <completion.sh> --force
   bash <SKILL_ROOT>/scripts/verify-completion.sh <completion.sh> --cache-dir <REPO_ROOT>/cache/compile/<root>
   ```

   The exact `llm-generate` comparison in verify must pass.

2. Compgen the option's own word (not a value followed by an empty positional):

   ```sh
   argc --argc-compgen bash <completion.sh> <root> --foo ''
   argc --argc-compgen bash <completion.sh> <root> sub --foo ''
   ```

   Use `argc --argc-compgen generic` for nospace or control lines (`<SKILL_ROOT>/references/compgen.md` §8).

3. Candidate-level checks: give each source a unique target name so a wrong source is visible; do not test two sources with identical content; create the directory and default file for a `-C` option; define at least one variable for `VAR=`; assert one known candidate and a no-candidate case for a wrapper (do not only assert exit status); cover an empty directory and a prefix filter, both exiting 0.

4. Use the direct-call harness in `<SKILL_ROOT>/references/compgen.md` §8 when needed, and a timeout around network or external services.

## 6. Failure handling

Read `<SKILL_ROOT>/references/troubleshooting.md` §Choice functions, fix the `choice-fns` block or the fragment `choice_fn`, then re-run assembly and verification.
