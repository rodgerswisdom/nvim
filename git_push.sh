#!/usr/bin/env bash

# Check if there are changes to commit
if git diff-index --quiet HEAD --; then
    echo "No changes to commit."
    exit 0
fi

# Stage all changes
git add .

# Commit with a message (you can customize the message or use a default one)
git commit -m "Automated commit"

# Push to the current branch
git push origin $(git rev-parse --abbrev-ref HEAD)

echo "Changes have been committed and pushed successfully!"



