#!/bin/bash
mysql -BNe 'show databases' | while read DB
# -B disable ascii table output 
# -N disable column names
do
    db-backed-up-recently $DB
    if [ "$?" -eq "0" ]
    then
        continue
    fi
    backup DB
done
