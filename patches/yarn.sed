s/@option --prod <prod>/@flag --prod/
s/@arg cmd/@arg cmd[`_choice_cmd`]/
/{ yarn run/, /} yarn run/ s/@arg script/@arg script[`_choice_script`]/
/{ yarn global/, /} yarn global/ s/@arg packages\*/@arg packages*[`_choice_global_dependency`]/
/{ yarn config/, /} yarn config/ s/@arg key/@arg key[`_choice_config_key`]/
/{ yarn remove/, /} yarn remove/ s/@arg packages\*/@arg packages*[`_choice_dependency`]/
/{ yarn upgrade/, /} yarn upgrade/ s/@arg packages\*/@arg packages*[`_choice_dependency`]/
/{ yarn workspace\b/, /} yarn workspace\b/ s/@arg workspace_name/@arg workspace_name[`_choice_workspace`]/
/{ yarn workspace\b/, /} yarn workspace\b/ s/@arg workspace_args\*/@arg workspace_args*[`_choice_workspace_args`]/