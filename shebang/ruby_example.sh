#!/usr/bin/env ruby

# To run the example: "./ruby_example inputfile.txt"
# This Ruby script reads a file and prints the first and third columns of each line
# Open the file passed as the first argument
file = ARGV[0]

# Read the file line by line
File.foreach(file) do |line|
  columns = line.split # Split the line into columns (fields)

  # Print the first and third columns, if they exist
  puts "#{columns[0]} #{columns[2]}" if columns.size >= 3
end

