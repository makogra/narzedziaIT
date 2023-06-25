#!/bin/bash
#zad 1
if [ "$#" == "0" ]
then
    exit 0
fi

if [[ $1 == "--date" || $1 == "-d" ]]
then
    echo $(date)
fi

#zad3
create_logs() {
    i=1 
    while((i <= $1));do
        file_name="log${i}.txt"
        if [ -e $file_name ]
        then
            rm $file_name
        fi
        touch $file_name
        echo $file_name >> $file_name
        echo "$0" >> $file_name
        date >> $file_name
        let "i++"
    done
}

if [[ $1 == "--logs" || $1 == "-l" ]]
then
    number_of_logs=100
    if [ $# == 2 ]
    then
        number_of_logs=$2
    fi
    create_logs $number_of_logs
fi

#zad5
if [[ $1 == "--help" || $1 == "-h" ]]
then
    cat "help.txt"
fi

#zad7
if [[ $1 == "--init" || $1 == "-i" ]]
then
    destination=$(pwd)
    source=$(driname -- "$0"; )
    cp -R "$source/" "$destination"
fi