#!/bin/bash
# Force exit on errors
set -e

# Install lilypond
# curl -L -o lilypond.sh http://download.linuxaudio.org/lilypond/binaries/linux-64/lilypond-2.18.2-1.linux-64.sh
# sh lilypond.sh --batch --prefix vendor
# rm lilypond.sh

# Install wkhtmltopdf
curl -L -o wkhtmltopdf.deb http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-precise-amd64.deb
ar p wkhtmltopdf.deb data.tar.xz | tar Jx -C vendor --strip-components=3
rm wkhtmltopdf.deb
