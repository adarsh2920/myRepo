#!/bin/bash

myArray=(1 2 3 "HELLO" 4 5)

echo "myArray elements are ${myArray[*]}"
echo "myArray elements are ${myArray[0]}"
echo "myArray elements are ${#myArray[*]}"
echo "myArray elements are ${myArray[*]:1:2}"

myArray+=(1 2 hi)
echo "myArray elements are ${myArray[*]}"
