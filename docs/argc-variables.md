# Argc variables

## options/flags/positional variables

Argc automatically generates variables for each option/flag/arg.

Here is a simple script:
```sh
# @option --oa
# @option --ob*
# @flag   --fa
# @arg va
# @arg vb*

eval "$(argc --argc-eval "$0" "$@")"

echo '--oa:' $argc_oa
echo '--ob:' ${argc_ob[@]}
echo '--fa:' $argc_fa
echo '  va:' $argc_va
echo '  va:' ${argc_vb[@]}
```

If we run the script:
```
./script.sh --oa a --ob=b1 --ob=b2 --fa foo bar baz
```
It will print:
```
--oa: a
--ob: b1 b2
--fa: 1
  va: foo
  va: bar baz
```

## builtin variables

- `argc__args`:  command line args
- `argc__index`: The index of the current command word in the args
- `argc__positionals`: The positional args

Run command
```
git reset --hard <tab>
```

Argc will set the variable value
```
argc__args=([0]="git" [1]="reset" [2]="--hard" [3]="")
argc__index=1
argc__positionals=([0]="")
```

## environment variables

- ARGC_DESCRIBE: Whether the shell completion has a descripiton.
- ARGC_OS: OS kind, such as  `windows`, `linux`, `macos`
- ARGC_PATH_SEP: Path seperator, `/` on linux/macos, `\` on windows.
- ARGC_LAST_ARG: The raw last arg. 
- ARGC_FILTER: The processed last arg, every completion value should `startsWith` this.

Run command on linux zsh
```
prog --oa='ab<tab>
```

Argc will set variable value
```
ARGC_DESCRIBE=true
ARGC_OS=linux
ARGC_PATH_SEP=/
ARGC_LAST_ARG=--oa='ab
ARGC_FILTER=ab
```

## tips

You can use following code to inspect the argc variables and environment variables:

```sh
(set -o posix; set) | command grep argc_
printenv | command grep ARGC_
```