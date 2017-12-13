#!/bin/bash

#stops 1b.sh
#chn555

pis=$(pgrep 1b.sh)
kill -SIGSTOP $pis

echo "proccess $pis stopped"
