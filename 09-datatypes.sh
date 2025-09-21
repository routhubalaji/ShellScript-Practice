
#!bin/bash


# everything in shell is considerd as string

NUMBER1=100
NUMBER2=200
NAME=DevOps

SUM=$(($NUMBER1+$NUMBER2+$NAME))

echo "SUM is: ${SUM}"


Leaders=("Modi", "Putin","Trump")

echo "Popular Leaders are $Leaders[@]"

echo "Most Popular Leader is $Leaders[0]"