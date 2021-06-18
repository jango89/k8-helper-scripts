#!/bin/sh

###Usage###
### Switch k8 context
#./kc.sh {context} {namespace}

echo "USAGE : ./kc.sh {blah.live.com} {migrateme}"

if [ -z "$1" ]; then
  echo "No argument present. Please pass k8 environment ex:'./kc.sh prelive'"
  exit 0
fi

kubectl config use-context "$1"

if [ "$2" ]; then
  kubectl config set-context --current --namespace=$2
fi

