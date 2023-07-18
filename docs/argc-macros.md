# Argc Macros

Argc macros are used to change compgen behaviour.

## __argc_filter=

Completions not starting with filter will be ignored

```sh
echo "__argc_filter=$ARGC_FILTER"
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

## __argc_value=file 

Complete a file/path

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