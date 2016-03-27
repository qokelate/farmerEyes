#!/bin/bash

SCRIPT_DIR=$(dirname $0)
SCRIPT_DIR=${SCRIPT_DIR/\./$(pwd)}
echo SCRIPT_DIR = ${SCRIPT_DIR}

cd ${SCRIPT_DIR}

git add ./*

TODAY=`date '+%Y-%m-%d %H:%M:%S'`
git commit -am "${TODAY}"

git status
curl -s 'https://git.coding.net/' > /dev/null && git push origin master

echo finished.
#exit 0

