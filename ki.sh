#!/bin/sh

###Usage###
### GET K8 ingress details
#./ki.sh {servicename}


if [ -z "$1" ]; then
  echo "No argument present. Please pass k8 servicename ex:'./ki.sh bookingoptionsservice'"
  exit 0
fi

kubectl describe ingress $1
