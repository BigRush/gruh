#!bin/bash

runp=$(pgrep a.sh)
kill -19 $runp

echo "proccess $runp stoppes"
