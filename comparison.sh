#!/bin/bash

stra="Hello"
strb="satish"

echo "string operations"

if [ "$stra" = "$strb" ]; then
   echo "Strings are equal"
fi

if [ "$stra" != "$strb" ]; then
   echo "Strings are not equal"
fi

strc="$stra $strb"
echo "concatenated string: $strc"
length=${#stra}
echo "Length of stra is $length"

