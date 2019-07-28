#!/bin/bash
function backup_file() {
    if [ -f $! ]
    then
        BACK="/tmp/$(basename ${1}).$(date +%F).$$"
        cp $1 $BACK
    fi
}
function backup_file2() {
    if [ -f $! ]
    then
        local BACK="/tmp/$(basename ${1}).$(date +%F).$$"
        echo "Backing up $1 to ${BACK}"
        # The exit status of the function will 
        # be the exit status of the cp command
        cp $1 $BACK
    else
        return 1
    fi
}
#backup_file /etc/hosts
backup_file2 /etc/hosts

if [ $? -eq 0 ]
then
    echo "Backup succeeded!"
else
    echo "Backup failed!"
    # About the script and return a non-zero exit status.
    exit 1
fi
