#!/bin/bash

while read -r line; do
  alias=$(echo "$line" | awk '{print $1}')
  wwpn=$(echo "$line" | awk '{print $2}')
  echo "alicreate \"$alias\", \"$wwpn\""
done < "alias.csv"
