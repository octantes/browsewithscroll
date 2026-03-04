#!/usr/bin/env bash

cd "$(dirname "$0")/../fonts"

# get list of files, wrap in quotes, join with commas and wrap in brackets
FILES=$(ls *.ttf *.otf *.woff *.woff2 2>/dev/null | sed 's/.*/"&"/' | tr '\n' ',' | sed 's/,$//' | sed 's/.*/[&]/')

# handle empty directories
if [ "$FILES" == "" ] || [ "$FILES" == "[]" ]; then FILES="[]"; fi

# template font data injection
sed "s|/\* DATA_PLACEHOLDER \*/|$FILES|g" fonts-template.html > fonts.html

echo "fonts indexed!"
