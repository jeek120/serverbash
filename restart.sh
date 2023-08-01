#!/bin/bash

NAME=$1
DATE="`date +%Y-%m-%d`" 
SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)
cd $SCRIPT_DIR
ulimit -c unlimited

echo "restart $1"
./stop.sh $1
chmod +x ../go/$1
nohup env GOTRACEBACK=crash ../go/$1 -f ../conf/$1.yaml > ../logs/$1.$DATE.log 2>&1 &
