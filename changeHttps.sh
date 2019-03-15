#!/bin/bash
# set -x

CUR_PATH=`pwd`
PYTHON_CMD='python mergeIndexsHtml.py'

cd greenday
echo `pwd`
python mergeIndexsHtml.py
cd $CUR_PATH

cd buganGaoshengYu
python mergeIndexsHtml.py
cd $CUR_PATH

cd congcijunwang
python mergeIndexsHtml.py
cd $CUR_PATH

grep -rl "http:\/\/" . | xargs sed -i "" 's/http:\/\//https:\/\//g'
