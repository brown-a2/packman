#!/bin/bash

set -e

# if [[ -z "$GITHUB_WORKSPACE" ]]; then
#   echo "Set the GITHUB_WORKSPACE env variable."
#   exit 1
# fi

echo $ENV
echo $HOME
echo $GITHUB_WORKSPACE
echo $GITHUB_REPOSITORY

ls

# root_path="$GITHUB_WORKSPACE"

# mkdir -p "workspace"

# cp -R $root_path /workspace

exit 0
