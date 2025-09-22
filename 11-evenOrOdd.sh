
#!bin/bash

echo "Enter a number"

read NUMBER

if [ $(($NUMBER%2)) -eq 0 ];
then
echo "Given number $NUMBER even number"
else
echo "Given number $NUMBER odd number"
fi


# echo "Please enter the number:"
# read NUMBER

# if [ $(($NUMBER % 2)) -eq 0 ]; then
#     echo "Given number $NUMBER is EVEN"
# else
#     echo "Given number $NUMBER is ODD"
# fi