#!/bin/sh

# Check if 2 arguments were provided. First one being "-enc"
if [ "$#" -eq 2 ] && [ "$1" == "-enc" ]; then
    # Decode the Base64 encoded command and execute it
    eval "$(echo "$2" | base64 --decode)"
else
	# Attempt to execute all script arguments
    eval "$@"
fi
