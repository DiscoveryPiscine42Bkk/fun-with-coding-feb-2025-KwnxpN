#!/bin/bash
if [ $# -eq 0 ]
then
    echo -n "No arguments supplied"
else
    count=1
    for arg in "$@"
    do
        if [ $count -gt 3 ]
        then
            break
        elif [ $count -eq $# ] || [ $count -eq 3 ]
        then
            echo -n "$arg"
        else
            echo -e "$arg"
        fi
        count=$((count + 1))
    done
fi
