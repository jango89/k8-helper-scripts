#!/bin/sh

###Usage###
### Switch k8 context
#./kc.sh {environment}

echo "USAGE : ./kc.sh {environment}"

if [ -z "$1" ]; then
  echo "No argument present. Please pass k8 environment ex:'./kc.sh prelive'"
  exit 0
fi

kubectl config use-context "k8s.$1.mytaxi.com"

echo "USAGE : ./kc.sh {environment}"
