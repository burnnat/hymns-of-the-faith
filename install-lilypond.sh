#!/bin/bash
# Force exit on errors
set -e

# Install lilypond
curl -L -o lilypond.sh http://download.linuxaudio.org/lilypond/binaries/linux-64/lilypond-2.18.2-1.linux-64.sh
sh lilypond.sh --batch --prefix vendor
rm lilypond.sh
