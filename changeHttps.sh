#!/bin/bash
# set -x

CUR_PATH=`pwd`
PYTHON_CMD='python mergeIndexsHtml.py'

cd docs/greenday
echo `pwd`
python mergeIndexsHtml.py
cd $CUR_PATH

grep -rl "http:\/\/" ./docs/greenday | xargs sed -i "" 's/http:\/\//https:\/\//g'
