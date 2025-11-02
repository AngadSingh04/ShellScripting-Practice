#!/bin/bash
<<error
this is for error handling
usig if then command
error

myFunction(){
    mkdir demoFolder
}

if ! myFunction;
then
    echo "Folder exists..."
    exit 1
fi
echo "created demoFolder..."