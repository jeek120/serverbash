#!/bin/bash

SERVER=54.54.54.54
SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)
cd $SCRIPT_DIR
WORK_DIR=$(cd ..;pwd)
echo $WORK_DIR

ssh ec2-user@$SERVER > /dev/null 2>&1 << eeooff
cd $WORK_DIR
rm -rf ./go.tar.gz
tar -zcvf go.tar.gz ./go
exit
eeooff
echo done!
cd $WORK_DIR
cp -r go gocopy
rm -rf ./go
rm -rf ~/go.tar.gz
scp ec2-user@$SERVER:$WORK_DIR/go.tar.gz ./
tar -zxvf ./go.tar.gz 

