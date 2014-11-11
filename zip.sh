#!/bin/bash

# if script is called outside of current folder
cd $(dirname $(readlink -f "$0"))

rm -r bin
mkdir -p bin/theme/FreshBlue

cp -r src/gnome-shell/* bin/theme/FreshBlue/
cd bin/theme

zip -r ../freshblue-theme.zip *
