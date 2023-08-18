#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --list       List all commands available.
# @flag -h --help    Display this message
# @flag --version    Print version info and exit

# {{ xsv cat
# @cmd Concatenate by row or column
# @flag -p --pad                  When concatenating columns, this flag will cause all records to appear.
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @flag -n --no-headers           When set, the first row will NOT be interpreted as column names.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg cmd[rows|columns]
# @arg input-file*
cat_() {
    :;
}
# }} xsv cat

# {{ xsv count
# @cmd Count records
# @flag -h --help                 Display this message
# @flag -n --no-headers           When set, the first row will not be included in the count.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg input-file
count() {
    :;
}
# }} xsv count

# {{ xsv fixlengths
# @cmd Makes all records have same length
# @option -l --length <arg>       Forcefully set the length of each record.
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg input-file
fixlengths() {
    :;
}
# }} xsv fixlengths

# {{ xsv flatten
# @cmd Show one field per line
# @option -c --condense <arg>     Limits the length of each field to the value specified.
# @option -s --separator <arg>    A string of characters to write after each record.
# @flag -h --help                 Display this message
# @flag -n --no-headers           When set, the first row will not be interpreted as headers.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg input-file
flatten() {
    :;
}
# }} xsv flatten

# {{ xsv fmt
# @cmd Format CSV output (change field delimiter)
# @option -t --out-delimiter <arg>    The field delimiter for writing CSV data.
# @flag --crlf                        Use '\r\n' line endings in the output.
# @flag --ascii                       Use ASCII field and record separators.
# @option --quote <arg>               The quote character to use.
# @flag --quote-always                Put quotes around every value.
# @option --escape <arg>              The escape character to use.
# @flag -h --help                     Display this message
# @option -o --output <file>          Write output to <file> instead of stdout.
# @option -d --delimiter <arg>        The field delimiter for reading CSV data.
# @arg input-file
fmt() {
    :;
}
# }} xsv fmt

# {{ xsv frequency
# @cmd Show frequency tables
# @option -s --select <arg>       Select a subset of columns to compute frequencies for.
# @option -l --limit <arg>        Limit the frequency table to the N most common items.
# @flag -a --asc                  Sort the frequency tables in ascending order by count.
# @flag --no-nulls                Don't include NULLs in the frequency table.
# @option -j --jobs <arg>         The number of jobs to run in parallel.
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @flag -n --no-headers           When set, the first row will NOT be included in the frequency table.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg input-file
frequency() {
    :;
}
# }} xsv frequency

# {{ xsv headers
# @cmd Show header names
# @flag -j --just-names           Only show the header names (hide column index).
# @flag --intersect               Shows the intersection of all headers in all of the inputs given.
# @flag -h --help                 Display this message
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg input-file
headers() {
    :;
}
# }} xsv headers

# {{ xsv index
# @cmd Create CSV index for faster access
# @option -o --output <file>      Write index to <file> instead of <input>.idx.
# @flag -h --help                 Display this message
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg input-file
index() {
    :;
}
# }} xsv index

# {{ xsv input
# @cmd Read CSV data with special quoting rules
# @option --quote <arg>           The quote character to use.
# @option --escape <arg>          The escape character to use.
# @flag --no-quoting              Disable quoting completely.
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg input-file
input() {
    :;
}
# }} xsv input

# {{ xsv join
# @cmd Join CSV files
# @flag --no-case                 When set, joins are done case insensitively.
# @flag --left                    Do a 'left outer' join.
# @flag --right                   Do a 'right outer' join.
# @flag --full                    Do a 'full outer' join.
# @flag --cross                   USE WITH CAUTION.
# @flag --nulls                   When set, joins will work on empty fields.
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @flag -n --no-headers           When set, the first row will not be interpreted as headers.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg columns1!
# @arg input1!
# @arg columns2!
# @arg input2!
join() {
    :;
}
# }} xsv join

# {{ xsv sample
# @cmd Randomly sample CSV data
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @flag -n --no-headers           When set, the first row will be consider as part of the population to sample from.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg sample-size!
# @arg input-file
sample() {
    :;
}
# }} xsv sample

# {{ xsv search
# @cmd Search CSV data with regexes
# @flag -i --ignore-case          Case insensitive search.
# @option -s --select <arg>       Select the columns to search.
# @flag -v --invert-match         Select only rows that did not match
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @flag -n --no-headers           When set, the first row will not be interpreted as headers.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg regex!
# @arg input-file
search() {
    :;
}
# }} xsv search

# {{ xsv select
# @cmd Select columns from CSV
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @flag -n --no-headers           When set, the first row will not be interpreted as headers.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg selection!
# @arg input-file
select_() {
    :;
}
# }} xsv select

# {{ xsv slice
# @cmd Slice records from CSV
# @option -s --start <arg>        The index of the record to slice from.
# @option -e --end <arg>          The index of the record to slice to.
# @option -l --len <arg>          The length of the slice (can be used instead of --end).
# @option -i --index <arg>        Slice a single record (shortcut for -s N -l 1).
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @flag -n --no-headers           When set, the first row will not be interpreted as headers.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg input-file
slice() {
    :;
}
# }} xsv slice

# {{ xsv sort
# @cmd Sort CSV data
# @option -s --select <arg>       Select a subset of columns to sort.
# @flag -N --numeric              Compare according to string numerical value
# @flag -R --reverse              Reverse order
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @flag -n --no-headers           When set, the first row will not be interpreted as headers.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg input-file
sort() {
    :;
}
# }} xsv sort

# {{ xsv split
# @cmd Split CSV data into many files
# @option -s --size <arg>          The number of records to write into each chunk.
# @option -j --jobs <arg>          The number of spliting jobs to run in parallel.
# @option --filename <filename>    A filename template to use when constructing the names of the output files.
# @flag -h --help                  Display this message
# @flag -n --no-headers            When set, the first row will NOT be interpreted as column names.
# @option -d --delimiter <arg>     The field delimiter for reading CSV data.
# @arg outdir!
# @arg input-file
split() {
    :;
}
# }} xsv split

# {{ xsv stats
# @cmd Compute basic statistics
# @option -s --select <arg>       Select a subset of columns to compute stats for.
# @flag --everything              Show all statistics available.
# @flag --mode                    Show the mode.
# @flag --cardinality             Show the cardinality.
# @flag --median                  Show the median.
# @flag --nulls                   Include NULLs in the population size for computing mean and standard deviation.
# @option -j --jobs <arg>         The number of jobs to run in parallel.
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @flag -n --no-headers           When set, the first row will NOT be interpreted as column names.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg input-file
stats() {
    :;
}
# }} xsv stats

# {{ xsv table
# @cmd Align CSV data into columns
# @option -w --width <arg>        The minimum width of each column.
# @option -p --pad <arg>          The minimum number of spaces between each column.
# @option -c --condense <arg>     Limits the length of each field to the value specified.
# @flag -h --help                 Display this message
# @option -o --output <file>      Write output to <file> instead of stdout.
# @option -d --delimiter <arg>    The field delimiter for reading CSV data.
# @arg input-file
table() {
    :;
}
# }} xsv table

command eval "$(argc --argc-eval "$0" "$@")"