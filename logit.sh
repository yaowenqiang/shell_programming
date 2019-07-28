#!/bin/bash
logit() {
    local LOG_LEVEL=$1
    shift
    MSG=$@
    TIMESTAMP=$(date +"%Y-%m-%d %T")
    if [ $LOG_LEVEL = "ERROR" ] ||  $VERBOSE
    then
        echo "${TIMESTAMP} ${HOST} ${PROGRAM_NAME}[${PID}]:${LOG_LEVEL} ${MSG}" 
    fi
}

logit INFO "Processing data."

# usage example
# fetch-data $HOST || logit ERROR "Could not fetch data from $%HOST

