#!/bin/bash
set -e

echo "Building wttr.in..."

# Download GeoLite2 database if not present
if [ ! -f "GeoLite2-City.mmdb" ]; then
    echo "Downloading GeoLite2-City database..."
    wget -q https://cdn.jsdelivr.net/npm/geolite2-city@1.0.0/GeoLite2-City.mmdb.gz
    gunzip GeoLite2-City.mmdb.gz
fi

echo "Build complete"
