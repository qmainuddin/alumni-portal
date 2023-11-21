#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Usage: $0 <commit_message>"
  exit 1
fi

# Update submodule
git submodule update --remote
git add .
git commit -m "$1"
git push origin main
