#!/bin/bash

REMOTE=`curl -s https://rpc.betanet.nearprotocol.com/status | python -c 'import json,sys;obj=json.load(sys.stdin);print "%s.%s" % (obj["version"]["version"],obj["version"]["build"])'`
LOCAL=`curl -s http://127.0.0.1:3030/status | python -c 'import json,sys;obj=json.load(sys.stdin);print "%s.%s" % (obj["version"]["version"],obj["version"]["build"])'`

DIFF=`python -c "print '$REMOTE'.split('-')[0] != '$LOCAL'.split('-')[0]"`

if [ $DIFF = "True" ]
then
    echo "There is a new version"
    echo "Local: $LOCAL"
    echo "Remote: $REMOTE"

ansible-playbook -b build_binary.yml

ansible-playbook -b rolling_restart.yml

else
    echo "No need to update the node. You are up to date!"
fi
