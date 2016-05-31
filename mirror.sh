#!/bin/bash
set -efu

# shellcheck source=_common_configure.sh
source _common_configure.sh

while read -r line
do
    wget -N -r -l inf "ftp://$USERNAME@$line" --password="$PASSWORD" -A "*.cfg"
done < servers.txt
