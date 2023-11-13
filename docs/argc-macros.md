# Argc Macros

Argc macros are used to change compgen behavior.

## __argc_filter=

Completions not starting with filter will be ignored

```sh
echo "__argc_filter=$ARGC_CWORD"
```

## __argc_prefix=

Add prefix to completeion

```sh
echo "__argc_prefix=--foo="
```

## __argc_suffix=

Add suffix to completeion

```sh
echo -e "__argc_prefix=:\0"
```

## __argc_value=path

Complete a path

```sh
echo __argc_value=path
echo __argc_value=path:.json,jsonc    # Accpet only json/jsonc file
```

If the path is obviously a file, use `__argc_value=file` in preference.

```sh
echo __argc_value=file 
echo __argc_value=file:.json,jsonc    # Accpet only json/jsonc file
```

## __argc_value=dir

Complete a dir

```sh
echo "__argc_value=dir"
```

## __argc_cd

Change current dir

```sh
echo "__argc_cd=$argc_cwd"
```