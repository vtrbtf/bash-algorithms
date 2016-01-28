#!/bin/bash

Q=()
PROMPT='-> '
while [[ true ]]; do
  echo "$PROMPT"
  read line
  ARG=($line)

  case ${ARG[0]} in
    "ADD") Q+=(${ARG[1]}) && echo "Added"
      ;;
    "POP") echo ${Q[0]} && Q=${Q[@]:1}
      ;;
  esac

done
