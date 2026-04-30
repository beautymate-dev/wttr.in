#!/bin/bash
set -e

# Substitute environment variables in config
envsubst < config/production.yaml > /tmp/config.yaml

# Start the server
./bin/wttr.in srv /tmp/config.yaml
