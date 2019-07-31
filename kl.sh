#!/bin/sh

###Usage###
#./kl.sh {servicename} {last n lines from logs} {search by this word in logs}
#./kl.sh {servicename} 0 {search by this word in whole logs}


if [ -z "$1" ]; then
  echo "No argument present. Please pass k8 servicename ex:'./kl.sh bookingoptionsservice'"
  exit 0
fi

pods="$(kubectl get pods --no-headers -o custom-columns=':metadata.name' | grep $1)"

echo $pods

for podname in $pods
do
  # show all logs
  if [ -z "$2" ]; then
    kubectl logs $podname
  else
    # show last n lines from logs
    if [ -z "$3" ]; then
      kubectl logs $podname --tail=$2
    else
      # show last n lines from logs and grep by search val provided
      kubectl logs $podname --tail=$2 | grep $3 -A 10 -B 10
    fi

  fi

done


echo "\n\n\n --------------------- Usage"
echo "\n #./kl.sh {servicename} {last n lines from logs} {search by this word in logs}"
echo "\n #./kl.sh {servicename} 0 {search by this word in whole logs}"
echo "\n ---------------------"
