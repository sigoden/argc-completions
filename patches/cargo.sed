s/@arg cmd/@arg cmd[`_choice_cmd`]/
s/@option --bench /@option --bench[`_choice_bench`] /
s/@option --bin /@option --bin[`_choice_bin`] /
s/@option --example /@option --example[`_choice_example`] /
s/@option --target /@option --target[`_choice_target`] /
s/@option --test /@option --test[`_choice_test`] /
s/@option -p --package /@option -p --package[`_choice_package`] /
s/@arg TESTNAME/@arg TESTNAME[`_choice_testname`]/
/{ cargo remove/, /} cargo remove/ s/@arg DEP_ID\*/@arg DEP_ID*[`_choice_depid`]/