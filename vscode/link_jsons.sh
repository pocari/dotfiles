#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
VS_CODE_USER="${HOME}/Library/Application Support/Code/User"

ln -fnsv ${SCRIPT_DIR}/settings.json "${VS_CODE_USER}"
ln -fnsv ${SCRIPT_DIR}/keybindings.json "${VS_CODE_USER}"

