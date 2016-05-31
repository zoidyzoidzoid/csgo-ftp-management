#!/bin/bash
set -efu

_common_configure.sh

for i in $(git ls -m)
do
  echo "Processing file $i"
  wput -N "$i" "ftp://$USERNAME:$PASSWORD@$i"
done
