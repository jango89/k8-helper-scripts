#!/bin/sh

###Usage###
### GET K8 ingress details
#./ki.sh {servicename}


if [ -z "$1" ]; then
  echo "No argument present. Please pass k8 servicename ex:'./ki.sh bookingoptionsservice'"
  exit 0
fi

if [ "$2" ]; then
  kubectl config use-context "k8s.$2.mytaxi.com"
fi

kubectl describe ingress $1
