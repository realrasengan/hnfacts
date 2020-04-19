#!/bin/bash
args=("$@")
IFS=

if [ $# -ne 1 ]
  then
    echo "Usage: ./hnfacts.sh <file>"
  else
    data=`echo "$(cat ${args[0]})"`
    count=$[$(echo $data | grep -o '\[\]' | wc -l | tr -d '[:space:]')/2]
    if [ $[$count%2] -eq 0 ]
      then
        echo "Error: Please provide an equal number of []s inline as you have in your references."
      else
        i=1
        while [ $(echo "$data" | grep -o '\[\]' | wc -l | tr -d '[:space:]') -gt 0 ]
          do
            if [ $i -eq $[$count+1] ]
              then
                i=1
            fi
            data=$(echo $data | awk -v i=$(echo "[$i]") 'NR==1,/\[\]/{sub(/\[\]/, i)} 1')
            i=$[$i+1]
        done
        echo $data
    fi
fi
