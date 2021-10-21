#!/bin/bash

HERE=$(dirname "$0")
BASE=$(dirname "$HERE")

CONSOLE_MAIN=com.dangdang.ddframe.job.lite.console.ConsoleBootstrap

PID=$(jps -l | grep "${CONSOLE_MAIN}"| awk '{print $1}')

if [[ -n ${PID} ]]; then
    echo kill ${PID}
    kill ${PID}
fi
