#!/bin/bash

# This is code for removing user
read -p "Which user do you want to delete ?  " USER

sudo userdel -r $USER

echo "$USER Removed Successfully !"
