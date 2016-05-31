#!/bin/bash
set -efu

_common_configure.sh

for i in $(cat servers.txt); do wget -N -r -l inf "ftp://$USERNAME@$i" --password="$PASSWORD" -A "*.cfg"; done
