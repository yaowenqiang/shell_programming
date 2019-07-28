#!/bin/bash
# Syntax
# read -p "PROMPT" VARIABLE

read -p "Enter a user name: " USER

echo "Archiving user: $USER"

# lock the account
#passwd -l $USER

# Create an archive of the home directory

#tar cf /tmp/${USER}.tar.gz /home/${USER}
