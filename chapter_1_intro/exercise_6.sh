#!/bin/bash

# Write a script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file

#read -p "Enter a directory or filename:" INPUT
INPUT=$1
for INPUT in $@
do
	if [ -d $INPUT ]
	then
	  echo "This is a directory"
	elif [ -f $INPUT ] 
	then
	  echo "This file exists and it is a regular file"
	else
	  echo "It is something else"
	fi

	ls -al $INPUT
done
