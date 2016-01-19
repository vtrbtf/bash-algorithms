#!/bin/bash

S=()
PMP="->"
while [[ true ]]; do
  echo $PMP
  read line
  ARG=($line)
  case ${ARG[0]} in
    "ADD") Q+=(${ARG[1]}) && echo "Added"
      ;;
    "POP") echo "${Q[@]:(-1)}" && Q=(${Q[@]:0:${#Q[@]-2}})
      ;;
  esac
done
