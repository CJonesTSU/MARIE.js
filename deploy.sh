#!/bin/bash

set -e

cd build

git init

git config user.name "Travis CI"
git config user.email "admin@cyderize.org"

git add .
git commit -m "Deploy to GitHub Pages"

git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1

echo Deployed.
