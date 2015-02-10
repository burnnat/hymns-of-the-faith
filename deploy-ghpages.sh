#!/bin/bash
wget -q http://download.linuxaudio.org/lilypond/binaries/linux-64/lilypond-2.18.2-1.linux-64.sh
sudo sh lilypond-2.18.2-1.linux-64.sh --batch
wget -q http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-precise-amd64.deb?r=&ts=1423460275&use_mirror=hivelocity
sudo dpkg -i wkhtmltox-0.12.2.1_linux-precise-amd64.deb
npm run-script build
cd build
git init
git config user.name "Travis-CI"
git add .
git commit -m "Deployed to Github Pages"
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
