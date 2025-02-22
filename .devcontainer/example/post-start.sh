#!/bin/bash

git config --global core.autocrlf input

npm set strict-ssl false

# # load ENV vars from github .env file in root of repo (this file is ignore from git)
# if [ -f .env ]
# then
#   echo "Import ENV vars from .env file"
#   cat .env 
#   # Load Environment Variables
#   set -o allexport; source .env; set +o allexport
#   export $(cat .env | xargs)
# else
#   echo "WARNING: .env file not found. Add one with your GITHUB_TOKEN"
#   echo "Add one with your GITHUB_TOKEN to auto run setup next time"
# fi

# # Check if GITHUB_TOKEN is set
# if [[ -z "$GITHUB_TOKEN" ]]; then
#   echo "*************************************************************************"
#   echo "Error: GITHUB_TOKEN environment variable is not set."
#   read -p "Please enter your GITHUB_TOKEN environment variable:" ghtoken
#   echo "setting env var GITHUB_TOKEN to $ghtoken"
#   export GITHUB_TOKEN='$ghtoken'
#   echo "*************************************************************************"
# fi


# D2 Tala
echo "Install D2 Tala https://github.com/terrastruct/tala#installation"
curl -fsSL https://d2lang.com/install.sh | sh -s -- --tala
