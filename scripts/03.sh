#!/bin/bash

# This is a program that keeps of the people correcting this project

friends="/var/tmp/achavez42/friends"

echo "Hello, "$USER".  This script will register you in my database."

echo -n "Enter your name and press [ENTER]: "
read name
echo -n "Enter your gender(m/f) and press [ENTER]: "
read -n 1 gender
echo

grep -i "$name" "$friends"

if  [ $? == 0 ]; then
  echo "You are already in the Database!! Ending session.."
  exit 1
elif [ "$gender" == "m" ]; then
  echo "You have been added"
  exit 1
else
  echo -n "How old are you?: "
  read age
  if [ $age -lt 25 ]; then
    echo -n "What is your hair color?: "
    read colour
	echo -n "What is your intra login?: "
	read login
    echo "$login $name $age $colour" >> "$friends" 
    echo "You have been added, congradulations."
  else
    echo "You are added"
    exit 1
  fi
fi
