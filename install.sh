#! /bin/bash

#SUBLIME_DIR=~/Library/Application\ Support/Sublime\ Text\ 2/Packages/
SUBLIME_DIR=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/

mkdir -p "$SUBLIME_DIR"

cp -r "./ForceDotCom" "$SUBLIME_DIR/"

cat ./ForceDotCom/AbuseTheForce.sublime-build | sed "s#"'${path}'"#$PATH#"  > "$SUBLIME_DIR/ForceDotCom/AbuseTheForce.sublime-build"
cat ./ForceDotCom/AbuseTheForceTest.sublime-build | sed "s#"'${path}'"#$PATH#"  > "$SUBLIME_DIR/ForceDotCom/AbuseTheForceTest.sublime-build"

echo "SFDC Sublime Plugin install finished"

