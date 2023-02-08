#!/bin/bash

while read -r line
do
  target=$(echo "$line" | awk -F "," '{print $1}')
  init=$(echo "$line" | awk -F "," '{print $2}' | tr -d " ")
  echo "zonecreate \"$target"_"$init\", \"$target;$init\""
done < aliasZoning.csv
