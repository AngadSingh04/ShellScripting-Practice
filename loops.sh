#!/bin/bash
<<loops
this file is for
looping statements
1 for variable name
2 for start range
3 for end 
loops

for (( i=$2; i<=$3; i++ ));
do
    mkdir "$1$i"
done

<<whileloop
now while loops
whileloop

num=0
while [[ $num -le 5 ]]
do 
    echo "hello$num"
    num=$((num+1))
done

