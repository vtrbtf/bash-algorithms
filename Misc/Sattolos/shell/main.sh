#!bin/bash -x

ITEMS=("$@")
LEN=${#ITEMS[@]}

while [[ $LEN -gt 1 ]]; do
  LEN=$((LEN-1))
  R=$(( $RANDOM % $LEN ));
  SWP=${ITEMS[R]}
  ITEMS[$R]=${ITEMS[LEN]}
  ITEMS[$LEN]=$SWP
done

echo ${ITEMS[@]}
