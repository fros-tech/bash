#!/usr/bin/env perl

# This Perl script reads a file and prints the first and third columns of each line

use strict;
use warnings;

# Check if a filename is provided
my $file = shift @ARGV or die "Usage: $0 filename\n";

# Open the file for reading
open my $fh, '<', $file or die "Cannot open file: $!\n";

# Read the file line by line
while (my $line = <$fh>) {
    chomp $line;  # Remove the newline character
    my @columns = split ' ', $line;  # Split the line into columns

    # Print the first and third columns if they exist
    print "$columns[0] $columns[2]\n" if @columns >= 3;
}

# Close the file handle
close $fh;

