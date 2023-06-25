#!/bin/bash
#zad 1
if [ "$#" == "0" ]
then
    exit 0
fi

if [ $1 == "--date" ]
then
    echo $(date)
fi