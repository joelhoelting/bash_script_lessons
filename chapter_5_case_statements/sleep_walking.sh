#!/bin/bash
usage_statment="Usage: $0 start|stop"

if [ $# -ne 1 ]; then
  echo $usage_statement
fi

case $1 in
  [sS][tT][aA][rR][tT])
    /tmp/sleep-walking-server &
    ;;
  [sS][tT][oO][pP])
    kill $(cat /tmp/sleep-walking-server.pid)
    ;;
  *)
    echo $usage_statment
    ;; 
esac
