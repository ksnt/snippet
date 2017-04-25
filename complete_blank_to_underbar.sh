#!/bin/sh
for A in $(find . | grep " " | sed -e s/" "/x3Exe/g) ;\
 do mv "$(echo $A | sed -e s/x3Exe/' '/g)" "$(echo $A | sed -e s/x3Exe/'_'/g)";\
 done
