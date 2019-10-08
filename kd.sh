#!/bin/sh

###Usage###
### GET Deployments
#./kd.sh {servicename} {environment}

echo "USAGE : ./kd.sh {servicename} {environment}"

if [ -z "$1" ]; then
  echo "No argument present. Please pass k8 servicename ex:'./kl.sh bookingoptionsservice'"
  exit 0
fi

if [ "$2" ]; then
  kubectl config use-context "k8s.$2.mytaxi.com"
fi

kubectl get deployments | grep $1

echo "USAGE : ./kd.sh {servicename} {environment}"
