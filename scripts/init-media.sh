#!/usr/bin/env bash

cd "$(dirname "$0")/../media"

EXT="jpg|jpeg|png|gif|webp|mp4|webm|mov|ogg"

# get list of files, wrap in quotes, join with commas and wrap in brackets
FILES=$(ls -p | grep -E "\.($EXT)$" | sed 's/.*/"&"/' | tr '\n' ',' | sed 's/,$//' | sed 's/.*/[&]/')

# handle empty directories
if [ "$FILES" == "" ] || [ "$FILES" == "[]" ]; then FILES="[]"; fi

# template media data injection
sed "s|/\* DATA_PLACEHOLDER \*/|$FILES|g" media-template.html > media.html

echo "media indexed!"
