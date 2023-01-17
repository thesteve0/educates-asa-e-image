#!/bin/bash

set -x
set -eo pipefail

SCRIPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)

mkdir -p /opt/packages/azure-cli

curl -fsL -o install.sh https://aka.ms/InstallAzureCli

sed -i "s%/dev/tty%$SCRIPT_DIR/inputs.txt%" install.sh

sh install.sh

cp -rp $SCRIPT_DIR/profile.d /opt/packages/azure-cli/profile.d