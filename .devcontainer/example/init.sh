#!/bin/bash

# init.sh script runs on the host machine during initialization, including during container creation and on subsequent starts.
# The command may run more than once during a given session.

# # load ENV vars from .env file in root of repo 
# if [ -f .env ]
# then
#   echo "Import ENV vars from .env file"
#   cat .env 
#   # Load Environment Variables
#   export $(cat .env | xargs)
#   set -o allexport; source .env; set +o allexport
# else
#   echo "WARNING: .env file not found. Add one with your GITHUB_TOKEN"
# fi

# echo -e "openssl_conf = openssl_init\n[openssl_init]\nssl_conf = ssl_sect\n[ssl_sect]\nsystem_default = system_default_sect\n[system_default_sect]\nOptions = UnsafeLegacyRenegotiation" >> /etc/ssl/openssl.cnf

# Exit if running in GitHub Codespaces
if [ "$CODESPACES" = "true" ]; then
    echo "Running in GitHub Codespaces, exiting script."
    exit 0
fi

# Check if github.com resolves
if nslookup github.com > /dev/null 2>&1; then
    echo "github.com resolves successfully."
    exit 0
fi
