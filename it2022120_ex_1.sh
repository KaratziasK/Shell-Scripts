#!/bin/bash

if [ $# -ne 1 ]; then # Check for the right number of arguments
    echo "Please give the correct number of arguments!"
    echo "'e' for easy"
    echo "'m' for medium"
    echo "'h' for hard"
    exit 1
fi

case "$1" in    # $1 is the first argument
    e)      #if argument is e
        password=$(tr -dc '[:alnum:]' < /dev/urandom | head -c 8)
        ;;
    m)      #if argument is m
        password=$(tr -dc '[:alnum:].!#' < /dev/urandom | head -c 12)
        ;;
    h)      #if argument is h
        password=$(tr -dc '[:alnum:].!#@,?^$' < /dev/urandom | head -c 20)
        ;;
    *)      #if argument is something else
        echo "Wrong input!"
        exit 1
        ;;
esac

echo "$password is the generated password"
