#!/bin/bash

# Function Definition
greet() {
    echo "Hello, $1!"
}

# Conditional Statements
echo "Enter a number between 1 and 10:"
read number

if [[ $number -lt 1 || $number -gt 10 ]]; then
    echo "Number is out of range."
elif [[ $number -eq 5 ]]; then
    echo "You've entered the magic number!"
else
    echo "You entered: $number"
fi

# Case Statement
case $number in
    1) echo "You chose one." ;;
    2) echo "You chose two." ;;
    3) echo "You chose three." ;;
    4) echo "You chose four." ;;
    5) echo "You chose five." ;;
    6) echo "You chose six." ;;
    7) echo "You chose seven." ;;
    8) echo "You chose eight." ;;
    9) echo "You chose nine." ;;
    10) echo "You chose ten." ;;
    *) echo "Invalid choice." ;;
esac

# Looping Structures

# For Loop
echo "Counting from 1 to 5:"
for i in {1..5}; do
    echo "Count: $i"
done

# While Loop
echo "Enter a positive number to count down from (0 to exit):"
read count
while [[ $count -gt 0 ]]; do
    echo "Counting down: $count"
    ((count--))  # Decrement the count
done
echo "Finished counting down."

# Until Loop
echo "Enter a number (negative to exit):"
read num
until [[ $num -lt 0 ]]; do
    echo "You entered: $num"
    ((num--))  # Decrement the number
done
echo "Exited the loop."

# Nested Loop
echo "Nested Loop Example:"
for i in {1..3}; do
    for j in {1..2}; do
        echo "Outer: $i, Inner: $j"
    done
done

# Using Functions
greet "User"
