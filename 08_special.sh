#!/bin/bash

echo "All variable passed through the script: $@"
echo "No of variables: $#"
echo "Script name : $0"
echo "current directory: $PWD"
echo "user running this script : $USER"
echo "Home directory of the user: $HOME"
echo "PID of script:$$"
sleep 10 &
echo "PID of the last command in background: $!"