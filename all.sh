#!/bin/bash

NAME=$1
DATE="`date +%Y-%m-%d`" 

restart() {
  ./restart.sh $1
}

echo "-----------开始重启---------------"

restart idgen
sleep 2
restart verifycode
sleep 2
restart base
sleep 2
restart binlog
sleep 2
restart member
sleep 2
restart share
sleep 2
restart video
sleep 2
restart agentlog
sleep 2
restart agent
sleep 2
restart agentorder
sleep 2
restart sms
sleep 2
restart statistics
sleep 2
restart pay
sleep 2
restart game

echo "-----------完成重启---------------"
