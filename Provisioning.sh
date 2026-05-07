#!/bin/bash

DATA="data.txt"
PASS="Welcome@123"

if [ ! -f "$DATA" ]; then
	echo "Data File Not Found !"
	exit 1
fi

echo "Data Found Successfully, Users Being Added..."
while read -r USER
do
	if id "$USER" >/dev/null; then
		echo "The User "$USER" already exists !"
		continue
	fi
	
	sudo useradd -m "$USER"
	echo "$USER:$PASS" | sudo chpasswd
	sudo chage -d 0 "$USER"
	echo "ID for $USER created successfully."
done < "$DATA"
echo "Task Completed."

