#!/bin/sh

###Usage###
### GET Deployments
#./kd.sh {servicename}

echo "Please initialize context and namespace using kc.sh first!"
echo "USAGE : ./kd.sh {servicename}"

if [ -z "$1" ]; then
  echo "No argument present. Please pass k8 servicename ex:'./kl.sh bookingoptionsservice'"
  exit 0
fi

kubectl get deployments | grep $1
