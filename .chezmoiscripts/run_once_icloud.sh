#!/bin/bash

# Create a soft link to my local `icloud` files
cloud="${HOME}/Cloud"

if [ ! -d "${cloud}" ]; then
    mkdir "${cloud}"
fi

cd "${cloud}" && ln -nsf $HOME/Library/Mobile\ Documents/com\~apple\~CloudDocs iCloud
