#!/bin/sh

# Check if 2 arguments were provided. First one being "-enc"
if [ "$#" -eq 2 ] && [ "$1" == "-enc" ]; then
    # Decode the Base64 encoded command and execute it
    decoded_command=$(echo "$2" | base64 --decode)
    eval "$decoded_command"
else
	# Attempt to execute all arguments
    eval "$@"
fi
