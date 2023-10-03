#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg cmd
# @arg opts
# @arg addoncmdopts*

# {{ hledger add
# @cmd add transactions using terminal prompts
# @flag --no-new-accounts         don't allow creating new accounts
# @option -f --file               use a different input file.
# @option --rules-file <RFILE>    CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>       rename accounts named OLD to NEW
# @flag --anon                    anonymize accounts and payees
# @option --pivot <TAGNAME>       use some other field/tag for account names
# @flag -I --ignore-assertions    ignore any balance assertions
# @flag -s --strict               do extra error checking (check that all posted accounts are declared)
# @flag -h --help                 show general help (or after CMD, command help)
# @flag --man                     show user manual with man
# @flag --info                    show info manual with info
# @option --debug <N>             show debug output (levels 1-9, default: 1)
# @flag --version                 show version information
# @arg date-description-account1-amount1-account2-etc <DATE [DESCRIPTION [ACCOUNT1 [AMOUNT1 [ACCOUNT2 [ETC...]]]]]>
add() {
    :;
}
# }} hledger add

# {{ hledger import
# @cmd add new transactions from other files, eg CSV files
# @flag --catchup                        just mark all transactions as already imported
# @flag --dry-run                        just show the transactions to be imported
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg file
import() {
    :;
}
# }} hledger import

# {{ hledger close
# @cmd generate balance-zeroing/restoring transactions
# @flag --close                          show a closing transaction (default)
# @flag --open                           show an opening transaction
# @flag --migrate                        show both closing and opening transactions
# @flag --retain                         show a retain earnings transaction (for RX accounts)
# @flag -x --explicit                    show all amounts explicitly
# @flag --show-costs                     show amounts with different costs separately
# @flag --interleaved                    show source and destination postings together
# @option --close-desc <DESC>            set closing transaction's description
# @option --close-acct <ACCT>            set closing transaction's destination account
# @option --open-desc <DESC>             set opening transaction's description
# @option --open-acct <ACCT>             set opening transaction's source account
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg acctquery
close() {
    :;
}
# }} hledger close

# {{ hledger rewrite
# @cmd generate auto postings, like print --auto
# @option --add-posting <'ACCT  AMTEXPR'>    add a posting to ACCT, which may be parenthesised.
# @flag --diff                               generate diff suitable as an input for patch tool
# @option -f --file                          use a different input file.
# @option --rules-file <RFILE>               CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>                  rename accounts named OLD to NEW
# @flag --anon                               anonymize accounts and payees
# @option --pivot <TAGNAME>                  use some other field/tag for account names
# @flag -I --ignore-assertions               ignore any balance assertions
# @flag -s --strict                          do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>                  include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                    include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                           multiperiod/multicolumn report by day
# @flag -W --weekly                          multiperiod/multicolumn report by week
# @flag -M --monthly                         multiperiod/multicolumn report by month
# @flag -Q --quarterly                       multiperiod/multicolumn report by quarter
# @flag -Y --yearly                          multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>            set start date, end date, and/or report interval all at once
# @flag --date2                              match the secondary date instead.
# @option --today <DATE>                     override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                        include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                         include only pending postings/txns
# @flag -C --cleared                         include only cleared postings/txns
# @flag -R --real                            include only non-virtual postings
# @option --depth <NUM>                      (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                           show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                            show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                          show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>               show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>              show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                       infer conversion equity postings from costs
# @flag --infer-costs                        infer costs from conversion equity postings
# @flag --infer-market-prices                use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>                Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                               Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                       Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>        Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                     Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                    Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                    Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                            show general help (or after CMD, command help)
# @flag --man                                show user manual with man
# @flag --info                               show info manual with info
# @option --debug <N>                        show debug output (levels 1-9, default: 1)
# @flag --version                            show version information
# @arg query
# @arg acct <"ACCT>
# @arg amtexpr* <AMTEXPR">
rewrite() {
    :;
}
# }} hledger rewrite

# {{ hledger check
# @cmd check for various kinds of error in the data
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg checks*
check() {
    :;
}
# }} hledger check

# {{ hledger diff
# @cmd compare account transactions in two journal files
# @option -f --file               use a different input file.
# @option --rules-file <RFILE>    CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>       rename accounts named OLD to NEW
# @flag --anon                    anonymize accounts and payees
# @option --pivot <TAGNAME>       use some other field/tag for account names
# @flag -I --ignore-assertions    ignore any balance assertions
# @flag -s --strict               do extra error checking (check that all posted accounts are declared)
# @flag -h --help                 show general help (or after CMD, command help)
# @flag --man                     show user manual with man
# @flag --info                    show info manual with info
# @option --debug <N>             show debug output (levels 1-9, default: 1)
# @flag --version                 show version information
# @arg file1
# @arg file2
# @arg fullaccounttname
diff() {
    :;
}
# }} hledger diff

# {{ hledger files
# @cmd show data files in use
# @option -f --file               use a different input file.
# @option --rules-file <RFILE>    CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>       rename accounts named OLD to NEW
# @flag --anon                    anonymize accounts and payees
# @option --pivot <TAGNAME>       use some other field/tag for account names
# @flag -I --ignore-assertions    ignore any balance assertions
# @flag -s --strict               do extra error checking (check that all posted accounts are declared)
# @flag -h --help                 show general help (or after CMD, command help)
# @flag --man                     show user manual with man
# @flag --info                    show info manual with info
# @option --debug <N>             show debug output (levels 1-9, default: 1)
# @flag --version                 show version information
# @arg regex
files() {
    :;
}
# }} hledger files

# {{ hledger aregister
# @cmd show transactions in a particular account
# @alias areg
# @flag --txn-dates                      filter strictly by transaction date, not posting date.
# @flag --no-elide                       don't show only 2 commodities per amount
# @option -w --width <N>                 set output width (default: terminal width or $COLUMNS).
# @flag --align-all                      guarantee alignment across all lines (slower)
# @option -O --output-format[txt|html|csv|json] <FMT>  select the output format.
# @option -o --output-file <FILE>        write output to FILE.
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg acctpat
# @arg query
aregister() {
    :;
}
# }} hledger aregister

# {{ hledger balancesheet
# @cmd show assets, liabilities and net worth
# @alias bs
# @flag --sum                            show sum of posting amounts (default)
# @flag --valuechange                    show total change of period-end historical balance value (caused by deposits, withdrawals, market price fluctuations)
# @flag --gain                           show unrealised capital gain/loss (historical balance value minus cost basis)
# @flag --budget                         show sum of posting amounts compared to budget goals defined by periodic transactions
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
balancesheet() {
    :;
}
# }} hledger balancesheet

# {{ hledger balancesheetequity
# @cmd show assets, liabilities and equity
# @flag --sum                            show sum of posting amounts (default)
# @flag --valuechange                    show total change of period-end historical balance value (caused by deposits, withdrawals, market price fluctuations)
# @flag --gain                           show unrealised capital gain/loss (historical balance value minus cost basis)
# @flag --budget                         show sum of posting amounts compared to budget goals defined by periodic transactions
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
balancesheetequity() {
    :;
}
# }} hledger balancesheetequity

# {{ hledger cashflow
# @cmd show changes in liquid assets
# @alias cf
# @flag --sum                            show sum of posting amounts (default)
# @flag --valuechange                    show total change of period-end historical balance value (caused by deposits, withdrawals, market price fluctuations)
# @flag --gain                           show unrealised capital gain/loss (historical balance value minus cost basis)
# @flag --budget                         show sum of posting amounts compared to budget goals defined by periodic transactions
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
cashflow() {
    :;
}
# }} hledger cashflow

# {{ hledger incomestatement
# @cmd show revenues and expenses
# @alias is
# @flag --sum                            show sum of posting amounts (default)
# @flag --valuechange                    show total change of period-end historical balance value (caused by deposits, withdrawals, market price fluctuations)
# @flag --gain                           show unrealised capital gain/loss (historical balance value minus cost basis)
# @flag --budget                         show sum of posting amounts compared to budget goals defined by periodic transactions
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
incomestatement() {
    :;
}
# }} hledger incomestatement

# {{ hledger activity
# @cmd show a simple bar chart of posting counts per period
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
activity() {
    :;
}
# }} hledger activity

# {{ hledger balance
# @cmd show balance changes, end balances, budgets, gains..
# @alias bal
# @flag --sum                            show sum of posting amounts (default)
# @option --budget <DESCPAT>             show sum of posting amounts together with budget goals defined by periodic transactions.
# @flag --valuechange                    show total change of value of period-end historical balances (caused by deposits, withdrawals, market price fluctuations)
# @flag --gain                           show unrealised capital gain/loss (historical balance value minus cost basis)
# @flag --count                          show the count of postings
# @flag --change                         accumulate amounts from column start to column end (in multicolumn reports, default)
# @flag --cumulative                     accumulate amounts from report start (specified by e.g. -b/--begin) to column end
# @flag -H --historical                  accumulate amounts from journal start to column end (includes postings before report start date)
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
balance() {
    :;
}
# }} hledger balance

# {{ hledger bar
# @cmd show a balance report as a simple bar chart
bar() {
    :;
}
# }} hledger bar

# {{ hledger print
# @cmd show transactions or export journal data
# @option -m --match <DESC>              fuzzy search for one recent transaction with description closest to DESC
# @flag -x --explicit                    show all amounts explicitly
# @flag --show-costs                     show transaction prices even with conversion postings
# @flag --new                            show only newer-dated transactions added in each file since last run
# @option -O --output-format[txt|csv|json|sql] <FMT>  select the output format.
# @option -o --output-file <FILE>        write output to FILE.
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
print() {
    :;
}
# }} hledger print

# {{ hledger register
# @cmd show postings in one or more accounts & running total
# @alias reg
# @flag --cumulative                     show running total from report start date (default)
# @flag -H --historical                  show historical running total/balance (includes postings before report start date)
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
register() {
    :;
}
# }} hledger register

# {{ hledger roi
# @cmd show return on investments
# @flag --cashflow                       show all amounts that were used to compute returns
# @option --investment <QUERY>           query to select your investment transactions
# @option --profit-loss <QUERY>          query to select profit-and-loss or appreciation/valuation transactions
# @option --pnl <QUERY>                  query to select profit-and-loss or appreciation/valuation transactions
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
roi() {
    :;
}
# }} hledger roi

# {{ hledger accounts
# @cmd show account names
# @flag -u --used                        show only accounts used by transactions
# @flag -d --declared                    show only accounts declared by account directive
# @flag --unused                         show only accounts declared but not used
# @flag --undeclared                     show only accounts used but not declared
# @flag --types                          also show account types when known
# @flag --positions                      also show where accounts were declared
# @flag --directives                     show as account directives, for use in journals
# @flag --find                           find the first account matched by the first argument (a case-insensitive infix regexp or account name)
# @flag -l --flat                        show accounts as a flat list (default)
# @flag -t --tree                        show accounts as a tree
# @option --drop <N>                     flat mode: omit N leading account name parts
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
accounts() {
    :;
}
# }} hledger accounts

# {{ hledger codes
# @cmd show transaction codes
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
codes() {
    :;
}
# }} hledger codes

# {{ hledger commodities
# @cmd show commodity/currency symbols
# @option -f --file               use a different input file.
# @option --rules-file <RFILE>    CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>       rename accounts named OLD to NEW
# @flag --anon                    anonymize accounts and payees
# @option --pivot <TAGNAME>       use some other field/tag for account names
# @flag -I --ignore-assertions    ignore any balance assertions
# @flag -s --strict               do extra error checking (check that all posted accounts are declared)
# @flag -h --help                 show general help (or after CMD, command help)
# @flag --man                     show user manual with man
# @flag --info                    show info manual with info
# @option --debug <N>             show debug output (levels 1-9, default: 1)
# @flag --version                 show version information
commodities() {
    :;
}
# }} hledger commodities

# {{ hledger descriptions
# @cmd show full transaction descriptions (payee and note)
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
descriptions() {
    :;
}
# }} hledger descriptions

# {{ hledger notes
# @cmd show note part of transaction descriptions
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
notes() {
    :;
}
# }} hledger notes

# {{ hledger payees
# @cmd show payee names
# @flag --declared                       show payees declared with payee directives
# @flag --used                           show payees referenced by transactions
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
payees() {
    :;
}
# }} hledger payees

# {{ hledger prices
# @cmd show historical market prices
# @flag --infer-reverse-prices           also show prices obtained by inverting transaction prices
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
prices() {
    :;
}
# }} hledger prices

# {{ hledger stats
# @cmd show journal statistics
# @option -o --output-file <FILE>        write output to FILE.
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg query
stats() {
    :;
}
# }} hledger stats

# {{ hledger tags
# @cmd show tag names
# @flag --values                         list tag values instead of tag names
# @flag --parsed                         show tags/values in the order they were parsed, including duplicates
# @option -f --file                      use a different input file.
# @option --rules-file <RFILE>           CSV conversion rules file (default: FILE.rules)
# @option --alias <OLD=NEW>              rename accounts named OLD to NEW
# @flag --anon                           anonymize accounts and payees
# @option --pivot <TAGNAME>              use some other field/tag for account names
# @flag -I --ignore-assertions           ignore any balance assertions
# @flag -s --strict                      do extra error checking (check that all posted accounts are declared)
# @option -b --begin <DATE>              include postings/txns on or after this date (will be adjusted to preceding subperiod start when using a report interval)
# @option -e --end <DATE>                include postings/txns before this date (will be adjusted to following subperiod end when using a report interval)
# @flag -D --daily                       multiperiod/multicolumn report by day
# @flag -W --weekly                      multiperiod/multicolumn report by week
# @flag -M --monthly                     multiperiod/multicolumn report by month
# @flag -Q --quarterly                   multiperiod/multicolumn report by quarter
# @flag -Y --yearly                      multiperiod/multicolumn report by year
# @option -p --period <PERIODEXP>        set start date, end date, and/or report interval all at once
# @flag --date2                          match the secondary date instead.
# @option --today <DATE>                 override today's date (affects relative smart dates, for tests/examples)
# @flag -U --unmarked                    include only unmarked postings/txns (can combine with -P or -C)
# @flag -P --pending                     include only pending postings/txns
# @flag -C --cleared                     include only cleared postings/txns
# @flag -R --real                        include only non-virtual postings
# @option --depth <NUM>                  (or -NUM): hide accounts/postings deeper than this
# @flag -E --empty                       show items with zero amount, normally hidden (and vice-versa in hledger-ui/hledger-web)
# @flag -B --cost                        show amounts converted to their cost/selling amount, using the transaction price.
# @flag -V --market                      show amounts converted to period-end market value in their default valuation commodity.
# @option -X --exchange <COMM>           show amounts converted to current (single period reports) or period-end (multiperiod reports) market value in the specified commodity.
# @option --value <TYPE[,COMM]>          show amounts converted with valuation TYPE, and optionally to specified commodity COMM.
# @flag --infer-equity                   infer conversion equity postings from costs
# @flag --infer-costs                    infer costs from conversion equity postings
# @flag --infer-market-prices            use costs as additional market prices, as if they were P directives
# @option --forecast <PERIOD>            Generate transactions from periodic rules, between the latest recorded txn and 6 months from today, or during the specified PERIOD (= is required).
# @flag --auto                           Generate extra postings by applying auto posting rules to all txns (not just forecast txns).
# @flag --verbose-tags                   Add visible tags indicating transactions or postings which have been generated/modified.
# @option -c --commodity-style <COMM>    Override the commodity style in the output for the specified commodity.
# @option --color <WHEN>                 Should color-supporting commands use ANSI color codes in text output.
# @option --colour <WHEN>                Should color-supporting commands use ANSI color codes in text output.
# @option --pretty <WHEN>                Show prettier output, e.g. using unicode box-drawing characters.
# @flag -h --help                        show general help (or after CMD, command help)
# @flag --man                            show user manual with man
# @flag --info                           show info manual with info
# @option --debug <N>                    show debug output (levels 1-9, default: 1)
# @flag --version                        show version information
# @arg tagregex
# @arg query*
tags() {
    :;
}
# }} hledger tags

# {{ hledger test
# @cmd run self tests
# @flag -h --help        show general help (or after CMD, command help)
# @flag --man            show user manual with man
# @flag --info           show info manual with info
# @option --debug <N>    show debug output (levels 1-9, default: 1)
# @flag --version        show version information
# @arg tastyopts*
test() {
    :;
}
# }} hledger test

command eval "$(argc --argc-eval "$0" "$@")"