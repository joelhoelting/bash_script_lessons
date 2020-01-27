#!/bin/bash

if [ -e /etc/shadow ]
then 
  if [ -w /etc/shadow ]
  then 
    echo "You have persmissions to edit /etc/shadow"
  else 
    echo "You do not have permissions to edit /etc/shadow"
  fi
fi 
