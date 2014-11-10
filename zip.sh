#!/bin/bash

# if script is called outside of current folder
cd $(dirname $(readlink -f "$0"))

cd src
zip -r ../bin/latest.zip *
