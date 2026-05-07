#!/bin/bash

read -p "Which user do you want to delete ?  " USER

sudo userdel -r $USER

echo "$USER Removed Successfully !"
