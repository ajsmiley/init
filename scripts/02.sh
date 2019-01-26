#!/bin/bash

echo "Enter the name of the user you would like to be deleted"
read user
sudo userdel -r $user
echo "Displaying list of current users..."
cut -d: -f1 /etc/passwd
echo
