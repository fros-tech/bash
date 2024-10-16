#!/bin/bash

# Check if there's piped input (stdin)
if [ ! -t 0 ]; then
    # Input is coming from a pipe
    echo "Reading from pipe..."
    while read line; do
        echo "Piped input: $line"
    done

# Check if arguments are provided
elif [ $# -gt 0 ]; then
    # Arguments were passed
    echo "Reading from arguments..."
    for arg in "$@"; do
        echo "Argument: $arg"
    done

# Otherwise, prompt for user input
else
    echo "No input detected. Please provide input:"
    read user_input
    echo "User input: $user_input"
fi
