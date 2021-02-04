#!/bin/sh

# If a command fails then the deploy stops
# set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# remove public folder
rm -rf public

# add submodule
git submodule add -f -b main git@github.com:sabinebertram/sabinebertram.github.io.git public

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

# pull
git pull

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin main

# cleanup
printf "\033[0;32mCleaning up...\033[0m\n"
cd ..
rm -rf public
git reset HEAD public
