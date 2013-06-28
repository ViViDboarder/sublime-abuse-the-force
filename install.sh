#! /bin/bash

SUBLIME_DIR=~/Library/Application\ Support/Sublime\ Text\ 2/Packages/

mkdir -p "$SUBLIME_DIR"

cp -r "./ForceDotCom" "$SUBLIME_DIR/"

cat ./ForceDotCom/AbuseTheForce.sublime-build | sed "s#"'${path}'"#$PATH#"  > "$SUBLIME_DIR/ForceDotCom/AbuseTheForce.sublime-build"

echo "SFDC Sublime Plugin install finished"

