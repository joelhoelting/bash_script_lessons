#!/bin/bash

INPUT=$1

if [ $# -eq 0 ]; then
  echo "Please supply an argument: filename or folder"
  echo "You supplied $# arguments"
  exit 2  
fi

if [ -f $INPUT ]; then
  echo "This is a regular file and I am exiting with a 0 status"
  exit 0
elif [ -d $INPUT ]; then
  echo "This is a directory and I am exiting with a 1 status"
  exit 1
else
  echo "This is another type of file"
  exit 1
fi
