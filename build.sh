#!/bin/bash
rm ./build/*
libreoffice --headless --convert-to pdf --outdir ./build/ ./src/*.odt
pdfunite ./build/*.pdf ./build/xxx.pdf
libreoffice --headless --convert-to pdf table_of_contents.odt
cp table_of_contents.pdf ./build/0.pdf
