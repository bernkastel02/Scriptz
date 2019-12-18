#!/bin/bash

echo "You have sinned in this land."
echo "Really, you should think about what you've done."
echo " "
echo "Well, do you regret your choice to \"uwu\" in this terminal?"
echo " "

# read key
read -r -n1 userinput

echo " " # whitespace
echo " " # whitespace

if [ $userinput == "Y" ]; then
    echo "Very well, I appreciate your reconcillation."
    echo " " # whitespace

    exit 0
else
    echo "You've failed me."
    sleep 2 && exit 1
fi
