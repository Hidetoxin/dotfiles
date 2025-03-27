#!/bin/bash

REQUIRED_DIRS=(
    "$XDG_DATA_HOME/pass/"
    "$XDG_DATA_HOME/gnupg/"
    "$XDG_DATA_HOME/passage/"
    "$XDG_DATA_HOME/passage/store"
    "$XDG_CACHE_HOME/packer/"
    "$XDG_CACHE_HOME/terraform/plugins-cache/"
)

# Created all needed directories for my dotfiles
for DIR in "${REQUIRED_DIRS[@]}"; do
    if [ ! -d "${DIR}" ]; then
        mkdir -p "${DIR}"
    fi
done

# Make `gpg` directory permissions correct
chown -R "$(whoami)" "$XDG_DATA_HOME/gnupg/"
find "$XDG_DATA_HOME/gnupg/" -type f -exec chmod 600 \;
find "$XDG_DATA_HOME/gnupg/" -type d -exec chmod 700 \;
