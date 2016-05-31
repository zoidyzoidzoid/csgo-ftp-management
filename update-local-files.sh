#!/bin/bash
set -eu
COUNT=0
for i in $(echo ./*:8821/*)
do
  let COUNT+=1
  echo "$COUNT: Processing server $i"
  cp gamemode_competitive_server.cfg "$i/cfg/"
  rm "$i/cfg/server.cfg"
  jinja2 --format yml server.cfg "$COUNT.yml" > "$i/cfg/server.cfg"
done
