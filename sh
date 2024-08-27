#!/bin/sh

# Check if exactly one unnamed argument is provided
if [ "$#" -eq 1 ]; then
    # Directly execute the command
    eval "$1"
# Check if 2 arguments were provided. First one being "-enc"
elif [ "$#" -eq 2 ] && [ "$1" == "-enc" ]; then
    # Decode the Base64 encoded command and execute it
    decoded_command=$(echo "$2" | base64 --decode)
    eval "$decoded_command"
fi
