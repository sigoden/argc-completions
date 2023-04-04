1,/# {{/ s/@arg cmd!/@arg cmd![`_choice_cmd`]/
/{ git add/, /} git add/ s/@arg pathspec+/@arg pathspec+[`_choice_unstaged_file`]/
/{ git branch/, /} git branch/ s/@option -d --delete/@option -d --delete[`_choice_branch`]/
/{ git branch/, /} git branch/ s/@option -D/@option -D[`_choice_branch`]/
/{ git branch/, /} git branch/ s/@option -m --move/@option -m --move[`_choice_branch`]/
/{ git branch/, /} git branch/ s/@option -M/@option -M[`_choice_branch`]/
/{ git branch/, /} git branch/ s/@option --edit-description/@option --edit-description[`_choice_branch`]/
/{ git branch/, /} git branch/ s/@option -u --set-upstream-to/@option -u --set-upstream-to[`_choice_branch`]/
/{ git branch/, /} git branch/ s/@option -u --set-upstream-to/@option -u --set-upstream-to[`_choice_branch`]/
/{ git branch/, /} git branch/ s/@option --unset-upstream/@option --unset-upstream[`_choice_branch`]/
/{ git checkout/, /} git checkout/ s/@arg branch-files+/@arg branch-files+[`_choice_checkout`]/
/{ git cherry-pick/, /} git cherry-pick/ s/@arg commit!/@arg commit![`_choice_range`]/
/{ git clean/, /} git clean/ s/@arg paths+/@arg paths+[`_choice_unstaged_file`]/
/{ git config/, /} git config/ s/@arg key!/@arg key![`_choice_config_key`]/
/{ git describe/, /} git describe/ s/@arg commit-ish!/@arg commit-ish![`_choice_ref`]/
/{ git diff/, /} git diff/ s/@arg commit-path\*/@arg commit-path*[`_choice_diff`]/
/{ git fetch/, /} git fetch/ s/@arg repository/@arg repository[`_choice_remote`]/
/{ git fetch/, /} git fetch/ s/@arg refspec\*/@arg refspec*[`_choice_branch`]/
/{ git log/, /} git log/ s/@arg commit-path\*/@arg commit-path*[`_choice_log`]/
/{ git switch/, /} git switch/ s/@arg branch!/@arg branch![`_choice_branch`]/
/{ git shortlog/, /} git shortlog/ s/@arg commit-path\*/@arg commit-path*[`_choice_log`]/
/{ git show/, /} git show/ s/@arg commit-path\*/@arg commit-path*[`_choice_show`]/
/{ git restore/, /} git restore/ s/@arg files+/@arg files+[`_choice_restore_file`]/
/{ git reset/, /} git reset/ s/@arg treeish-path!/@arg treeish-path![`_choice_reset`]/
/{ git tag/, /} git tag/ s/@arg tagname!/@arg tagname![`_choice_tag`]/
/{ git rebase/, /} git rebase/ s/@arg base/@arg base[`_choice_branch`]/
/{ git rebase/, /} git rebase/ s/@arg newbase/@arg newbase[`_choice_branch`]/
/{ git range-diff/, /} git range-diff/ s/@arg base/@arg base[`_choice_branch`]/
/{ git range-diff/, /} git range-diff/ s/@arg newbase/@arg newbase[`_choice_branch`]/
/{ git push/, /} git push/ s/@arg remote!/@arg remote![`_choice_remote`]/
/{ git push/, /} git push/ s/@arg refspec!/@arg refspec![`_choice_remote_branch`]/
/{ git pull/, /} git pull/ s/@arg remote!/@arg remote![`_choice_remote`]/
/{ git pull/, /} git pull/ s/@arg refspec/@arg refspec[`_choice_remote_branch`]/
/{ git stash/, /} git stash/ s/@arg stash/@arg stash[`_choice_stash`]/
/{ git remote/, /} git remote/ s/@arg name!/@arg name![`_choice_remote`]/
/{ git remote/, /} git remote/ s/@arg old!/@arg old![`_choice_remote`]/
/{ git remote/, /} git remote/ s/@arg new!/@arg new![`_choice_remote`]/