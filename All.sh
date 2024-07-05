#!/bin/bash

<<comment

# Bash Script Basics

# Print statements
echo "Printing messages and variables:"
echo "Hello, World!"  # Printing a simple message
echo "Today is $(date)"  # Using command substitution to print current date

# Declaring variables
echo -e "\nDeclaring variables:"
name="Adarsh"  # String variable
age=23  # Integer variable
average=85.5  # Float variable

# Printing variables
echo "Name: $name"
echo "Age: $age"
echo "Average score: $average"

# Inputting variables
echo -e "\nInputting variables:"
read -p "Enter your name: " inputName  # Reading a string input
read -p "Enter your age: " inputAge  # Reading an integer input

# Printing inputted variables
echo "Hello, $inputName! Your age is $inputAge."

# Example of arithmetic operation with user input
read -p "Enter a number: " num1
read -p "Enter another number: " num2
sum=$((num1 + num2))  # Performing arithmetic addition

echo "Sum of $num1 and $num2 is: $sum"

# Example of boolean input and comparison
read -p "Enter true or false (lowercase): " boolInput
if [ "$boolInput" = "true" ]; then
  echo "You entered true."
else
  echo "You did not enter true."
fi


# Conditional Statements

# Numeric Comparison Operators:
# -eq: Equal to
# -ne: Not equal to
# -gt: Greater than
# -lt: Less than
# -ge: Greater than or equal to
# -le: Less than or equal to

# String Comparison Operators:
# =: Equal to
# !=: Not equal to
# <: Less than (in ASCII alphabetical order)
# >: Greater than (in ASCII alphabetical order)
# -z: True if the string is empty
# -n: True if the string is not empty

mark=55  # Example mark value for demonstration
if [ "$mark" -gt 60 ]; then
  echo "You passed with flying colors!"
elif [ "$mark" -lt 10 ]; then
  echo "You need to improve a lot!"
elif [ "$mark" -eq 50 ]; then
  echo "Your mark is exactly 50."
else
  echo "Your mark does not meet any specific condition."
fi

# Case statement example
case $mark in
  10)
    echo "You scored 10 marks."
    ;;
  20)
    echo "You scored 20 marks."
    ;;
  *)
    echo "You scored other than 10 or 20 marks."
    ;;
esac

# Loops in Bash

# While loop example
counter1=1
while [ $counter1 -le 5 ]
do
  echo "Counter is at $counter1"
  ((counter1++))
done

# Until loop example
counter2=1
until [ $counter2 -gt 5 ]
do
  echo "Counter is at $counter2"
  ((counter2++))
done

# For loop example
echo -e "\nFor loop example:"
for i in 1 2 3 4 5
do 
  echo "Number is $i"
done

# For loop with command output example (listing files)
echo -e "\nFor loop with command output example (listing files):"
for file in $(ls)
do 
  echo "File: $file"
done

# Nested loops example
echo -e "\nNested loop example:"
for i in 1 2 3
do 
  for j in A B C
  do
    echo "Outer loop: $i -> Inner loop: $j"
  done
done

# Arrays in Bash
echo -e "\nArrays in Bash example:"
fruits=("Apple" "Mango" "Cherry")
for fruit in "${fruits[@]}"
do
  echo "Fruit: $fruit"
done

# Reading from a CSV file
echo -e "\nReading from a CSV file example:"
while IFS="," read -r f1 f2 f3
do 
  echo "Field 1: $f1"
  echo "Field 2: $f2"
  echo "Field 3: $f3"
done < myFile.csv

comment
