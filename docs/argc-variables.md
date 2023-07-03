# Argc variables

## options/flags/positional argument variables

Argc automaticlly generate variables for related option/flag/arg.

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

## extra variables

- `argc__args`:  command line args
- `argc__index`: The index of the current command word in the args
- `argc__positionals`: The positional args

```
argc__args=([0]="git" [1]="reset" [2]="--hard" [3]="")
argc__index=1
argc__positionals=([0]="")
```

## environment variables

- ARGC_DESCRIBE: Whether the shell use the completion descripiton.
- ARGC_OS: OS kind, one of windows, linux, macos
- ARGC_PATH_SEP: Path seperator, `/` on linux/macos, `\` on windows.
- ARGC_LAST_ARG: The raw last arg. 
- ARGC_FILTER: The word to filter the completion value.

If the last world is `--oa='abc`, then the ARGC_LAST_ARG will be `--oa='abc`, but ARGC_FILTER will be `abc`.

## tips

You can use following code to dump the argc variables and environment variables:

```sh
(set -o posix; set) | command grep argc_
printenv | command grep ARGC_
```