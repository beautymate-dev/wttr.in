#!/bin/bash
set -e

# Create cache directories
mkdir -p /tmp/location_cache /tmp/ip_cache

# Substitute environment variables in config
envsubst < config/production.yaml > /tmp/config.yaml

# Start the server
./bin/wttr.in srv /tmp/config.yaml
