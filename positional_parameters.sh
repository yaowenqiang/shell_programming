#!/bin/bash
# script.sh parameter1 parameter2 parameter3

# $0:"script.sh"
# $1:"parameter1"
# $2:"parameter2"
# $3:"parameter3"

echo "Executing script: %0"
echo "Archiving user: $1"
USER=$1

# Lock the account

#passwd -l $1
passwd -l $USER

# Create an archive of the home directory.

#tar cf /tmp/${1}.tar.gz /home/${1}

tar cf /tmp/${USER}.tar.gz /home/${USER}


for USER in $@
do
    echo "Archiving user: $USER"
    # Lock the account
    passwd -l $USER

    # Create an archive of the home directory.
    tar cf /tmp/${USER}.tar.gz /home/${USER}

done
