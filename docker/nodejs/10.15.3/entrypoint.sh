#!/bin/bash

command=("$1")
shift
while [[ $# -gt 0 ]];do
  key="$1"
  port="$2"
  while [[ -z ${is_service_up[$1]} ]];do
    result=$(nc -zv $1 $2  2>&1)
    echo "Connection $1:$2 :- $result"
    if [[ "$result" == *"succeeded"* ]] || [[ "$result" == *"open"* ]]; then
      echo $1':'$2' connection successful'
        is_service_up=true
      else
        echo "Waiting For Connection...on $1:$2"
      sleep 2
    fi
  done
  is_service_up=
  shift
  shift    
done
$command
