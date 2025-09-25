
#!bin/bash

for i in {1..20}
do
    echo $i
done

echo " "
NUM1=$1
echo $NUM1
for (( i=1; i<=NUM1; i++ ))
do
    echo $i
done