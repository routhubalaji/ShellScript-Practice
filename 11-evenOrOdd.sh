
#!bin/bash

echo "Enter a number"

read NUMBER

if [ $(($NUMBER%2)) -eq 0 ];
then
echo "Given number is even number"
else
echo "Given number is even number"
fi