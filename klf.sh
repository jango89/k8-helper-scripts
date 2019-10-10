#!/bin/sh

###Usage###
### GET LOGS without quiting
#./klf.sh {deployment} {environment}


if [ -z "$1" ]; then
  echo "No argument present. Please pass k8 deployment ex:'./klf.sh bookingoptionsservice-1223'"
  exit 0
fi

if [ "$2" ]; then
  kubectl config use-context "k8s.$2.mytaxi.com"
fi

pods="$(kubectl get pods --no-headers -o custom-columns=':metadata.name' | grep $1)"

for podname in $pods
do
  kubectl logs $podname -f
done

echo "\n\n\n --------------------- Usage"
echo "./klf.sh {deployment} {environment}"
echo "\n ---------------------"
