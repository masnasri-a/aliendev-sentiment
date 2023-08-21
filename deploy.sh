#!/bin/bash

# Check if no arguments provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <word1> <word2> ..."
    exit 1
fi

# Display the provided words
echo "Words provided: $@"
rm -rf dist/
poetry version patch
poetry publish --build

