#!/bin/bash

#if [ condition-is=true ]
#then
#    command 1
#    command 2
#    command 3
#    command 4
#elif [ condition-is-true ]
#then
#    command 5
#else

#    command 6
#fi

MY_SHELL="bash"

if [ "$MY_SHELL" = "zsh" ]
then
    echo "You seem to like the zsh shell."
elif [ "$MY_SHELL" = "csh" ]
then
    echo "You seem to like the csh shell."
else
    echo "I don't know what shell you like."
fi

