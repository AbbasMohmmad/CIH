#!/usr/bin/env bash

#checking whether user entered two input parameteres i.e source and destination

if [ "$#" -lt 2 ]; then
    echo "please enter two input parameters i.e source folder and destination folder"
    exit 
fi


# reading the parameters i.e source and destination folder paths
source="$1"
destination="$2"

# If block to check whether the source exists or not ,if not exit

if [ ! -d "$source" ]; then
    echo "Source folder does not exist"
    exit 1
fi

# If block to check whether the destination exists or not, If not create a new folder

if [ ! -d "$destination" ]; then
    mkdir "$destination"
fi

# Copy files from source to destination

cp -r "$source"/*  "$destination"



