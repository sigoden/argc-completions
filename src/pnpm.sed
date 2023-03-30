s/@arg cmd/@arg cmd[`_choice_cmd`]/
s/@option --filter\* /@option --filter\*[`_choice_workspace`] /
/{ pnpm run/, /} pnpm run/ s/@arg script!/@arg script![`_choice_script`]/
/{ pnpm exec/, /} pnpm exec/ s/@arg exe!/@arg exe![`_choice_exe`]/
/{ pnpm config/, /} pnpm config/ s/@arg key/@arg key[`_choice_config_key`]/
/{ pnpm remove/, /} pnpm remove/ s/@arg pkgs+/@arg pkgs+[`_choice_dependency`]/
/{ pnpm update/, /} pnpm update/ s/@arg pkgs+/@arg pkgs+[`_choice_dependency`]/