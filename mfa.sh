#!/bin/bash
stty susp undef
trap "" INT
hello=`whoami`
echo hello "$hello"
tries=0
remaining=3
while [ "$tries" -ne 3  ]
  do	  
    random=$(shuf -i1-100000 -n1)	  
    echo please enter the number $random
    read number
    if [ "$random" -eq "$number" ]
    then
       echo "number is correct , you may proceed"
       stty start undef
       trap - INT
       break
     else
	tries=$((tries + 1))
	remaining=$((remaining - 1))
        if [ "$tries" -le 2 ]
	then	
	echo number is incorrect! Please try again, you have expired $tries tries, you have $remaining tries, after that you will be exited
        else
        echo you have expired number of tries and we could not verify you, you will be exited now
	fi
    fi      
   done
if [ "$tries" -eq 3 ]
then
exit
fi

