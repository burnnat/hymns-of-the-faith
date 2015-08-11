#!/bin/bash
# Force exit on errors
set -e

# Build and commit
npm run-script build
cd build
git init
git config user.name "Travis Build"
git config user.email "travis@travis-ci.org"
git add .
git commit -m "Deployed to Github Pages"
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
