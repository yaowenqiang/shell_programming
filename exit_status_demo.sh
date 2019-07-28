#!/bin/bash
HOST="baidu.com"
ping -c 1 $HOST
RETURN_CODE=$?
if [ "$?" -eq "0" ]
#if [ "$RETURN_CODE" -ne "0" ]
# if [ "$?" -ne "0" ]
# ping -c 1 $HOST && echo "$HOST reachable."
# ping -c 1 $HOST || echo "$HOST unreachable."
then
    echo "$HOST reachable."
else
    echo "$HOST unreachable."
    exit 1
fi

exit 0
