#!/bin/bash
set -efu

# shellcheck source=_common_configure.sh
source _common_configure.sh

for i in $(git ls -m)
do
  echo "Processing file $i"
  wput -N "$i" "ftp://$USERNAME:$PASSWORD@$i"
done
