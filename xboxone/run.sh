#!/bin/bash

# Copy over the xbox component
mkdir -p /config/custom_components/xboxone
cp -f /xboxone.py /config/custom_components/xboxone/media_player.py
cp -f /manifest.json /config/custom_components/xboxone/manifest.json
touch /config/custom_components/xboxone/__init__.py

touch /config/.xbox-token.json

mkdir -p /root/.local/share/xbox/
rm /root/.local/share/xbox/tokens.json
ln -s /config/.xbox-token.json /root/.local/share/xbox/tokens.json

# Run the server
xbox-rest-server
