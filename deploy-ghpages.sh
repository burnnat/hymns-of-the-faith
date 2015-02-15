#!/bin/bash
# Force exit on errors
set -e

# Install lilypond
curl -L -o lilypond.sh http://download.linuxaudio.org/lilypond/binaries/linux-64/lilypond-2.18.2-1.linux-64.sh
sudo sh lilypond.sh --batch
rm lilypond.sh

# Install wkhtmltopdf
curl -L -o wkhtmltopdf.deb http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-precise-amd64.deb
sudo dpkg -i wkhtmltopdf.deb || true
sudo apt-get install -f -y
rm wkhtmltopdf.deb

# Build and commit
npm run-script build
cd build
git init
git config user.name "Travis Build"
git config user.email "travis@travis-ci.org"
git add .
git commit -m "Deployed to Github Pages"
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
