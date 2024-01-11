trap ' ' SIGINT SIGTERM
hello=`whoami`
echo hello "$hello"
while true
  do
    random=$RANDOM	  
    echo please enter the number $random
    read number
    if [ "$random" == "$number" ]
    then
       echo "number is correct , you may proceed"
       trap - SIGINT SIGTERM
       break
     else
	echo "number is incorrect! Please try again"     
    fi      
   done
