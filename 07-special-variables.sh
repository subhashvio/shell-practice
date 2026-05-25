#!/bin/bash

echo $@
echo $#
echo $1
echo $2
echo $USER
echo $PWD
echo $HOME
echo "PID: $$"
sleep 5 &
echo "Line number: $LINENO"
echo "PID of the background command running just now: $!"
wait $!	
echo "Line number: $LINENO"
echo "Script executed in $SECONDS seconds"
echo "Random number: $RANDOM"
lkjljlj
echo "Exit code of previous command: $?"
echo "Line number: $LINENO"
echo "Exit code of previous command: $?"


