#!/bin/bash

NUMBER=$1
#lt -less than
#gt - greater than
#-eq - equal
#-ne - not equal
if [ $NUMBER -lt 100 ]
then
echo "$NUMBER is a small number"
else 
echo "$NUMBER is a big number"
fi