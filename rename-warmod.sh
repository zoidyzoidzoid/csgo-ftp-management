#!/bin/bash
set -eu

for i in $(echo ./*/*/cfg/warmod/*)
  do
    sed -i "" 's/WarMod BFG/LEAGUE_NAME/' "$i"
  done

for i in $(echo ./*/*/cfg/warmod/*)
  do
    sed -i "" 's/WarMod \[BFG\]/LEAGUE_NAME/' "$i"
  done
