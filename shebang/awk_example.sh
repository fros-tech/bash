#!/usr/bin/awk -f

# to run the example run "awk_example.sh inputfile.txt"
# This AWK script prints the first and third columns of a file
# Check if the current line is not empty
NF > 0 {
    print $1, $3
}
