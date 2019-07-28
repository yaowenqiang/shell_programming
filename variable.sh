#!/bin/bash
MY_SHELL="bash"
echo  "I like the $MY_SHELL shell."
echo  "I like the ${MY_SHELL} shell."
echo  "I like the ${MY_SHELL}ing shell."
SERVER_NAME=$(hostname)
SERVER_NAME1=`hostname`
echo "You are running this script on ${SERVER_NAME}."
echo "You are running this script on ${SERVER_NAME1}."
