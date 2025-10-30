echo "This file is for conditional statements"

<<angad
this is just for 
timepass
angad

read -p "your dog name: " dog1
read -p "your second dog name: " dog2

if [[ $dog1 == "junior" ]];
then
echo "you are right"
elif [[ $dog2 == "zuni" ]];
then
echo "you are right!!"
else
echo "you are wrong"
fi