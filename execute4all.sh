# By Faisal Sikder
# University of Miami
# Code to execuate a command in student's account

#!/bin/bash
if [ $# -ne 1 ] ; then
  echo "One parameter needed, which is the command to be executed!"
else
  for i in `cat ~/class419_list`
  do
    ssh $i@lee $1 || echo "problem executing command for $i"
  done
fi

