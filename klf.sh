#!/bin/sh

###Usage###
### GET LOGS without quiting
#./klf.sh {deployment}

echo "Please initialize context and namespace using kc.sh first!"

if [ -z "$1" ]; then
  echo "No argument present. Please pass k8 deployment ex:'./klf.sh bookingoptionsservice-1223'"
  exit 0
fi

pods="$(kubectl get pods --no-headers -o custom-columns=':metadata.name' | grep $1)"

for podname in $pods
do
  kubectl logs $podname -f
done

