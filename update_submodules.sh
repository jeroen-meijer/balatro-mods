#!/bin/bash

set -e

echo "Updating all git submodules..."

git submodule update --init --recursive

git submodule foreach '
    echo ""
    echo "Updating submodule: $name"
    echo "Current directory: $(pwd)"
    
    branch=$(git rev-parse --abbrev-ref HEAD)
    if [ "$branch" = "HEAD" ]; then
        branch=$(git remote show origin | grep "HEAD branch" | sed "s/.*HEAD branch: //")
    fi
    
    echo "Current branch: $branch"
    echo "Fetching latest changes..."
    git fetch origin
    
    echo "Pulling latest changes on branch: $branch"
    git pull origin "$branch"
    
    echo "Submodule $name updated successfully!"
'

echo ""
echo "All submodules updated successfully!"
echo ""
echo "Review changes with: git status"
echo "Commit changes with: git commit -am 'Update submodules'"
echo "Push changes with: git push"
