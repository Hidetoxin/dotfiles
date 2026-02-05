#!/usr/bin/env bash

set -eux

VSCODE_CONFIG="${HOME}/.config/vscode"
VSCODE_DEFAULT_CONFIG="${HOME}/Library/Application Support/Code/User"

if [[ -d "${VSCODE_DEFAULT_CONFIG}" ]] && [[ ! -L "${VSCODE_DEFAULT_CONFIG}" ]]; then
  rm --force --recursive "${VSCODE_DEFAULT_CONFIG}"
fi
ln --force --symbolic "${VSCODE_CONFIG}" "${VSCODE_DEFAULT_CONFIG}"
