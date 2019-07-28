#!/bin/bash
function hello() {
    echo "Hello $1"
}

function hello_all(){
    for NAME in $@ 
    do
        echo "Hello $NAME"
    done
}
hello Jason
hello_all jone jimmy jack joy
