#!/bin/bash
HOST="baidu.com"
ping -c 1 $HOST
if [ "$?" -eq "0" ]
then
    echo "$HOST reachable."
else
    echo "$HOST unreachable."
fi

