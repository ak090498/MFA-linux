#!/bin/bash
stty susp undef
toilet -w 200 --gay MFA-Linux by ak090498
trap "" INT
hello=`whoami`
echo hello "$hello"
tries=0
remaining=3
find qa.txt &>error.txt
error=`cat error.txt`
if [ "$loginattempts" -eq 1 ]
then       	
echo Since you are logging for the first time/there is no MFA file, you need to provide a question as well as answer for MFA
echo Please enter your MFA question
read question
echo Please enter your MFA answer
read answer
echo "Your question and answer will be stored in a file called qa.txt in your home directory, please don't delete or modify it"
touch "qa.txt"
echo "$question" >> qa.txt
echo "$answer" >> qa.txt
echo "Your question and answer are successfully saved, from next time you need to provide MFA question and answer"
stty start undef
trap - INT
elif [ "$error" == "find: ‘qa.txt’: No such file or directory" ]
then
  echo Since you are logging for the first time/there is no MFA file, you need to provide a question as well as answer for MFA
  echo Please enter your MFA question
  read question
  echo Please enter your MFA answer
  read answer
  echo "Your question and answer will be stored in a file called qa.txt in your home directory, please don't delete or modify it"
  touch "qa.txt"
  echo "$question" >> qa.txt
  echo "$answer" >> qa.txt
  echo "Your question and answer are successfully saved, from next time you need to provide MFA question and answer"
  stty start undef
  trap - INT
else
while [ "$tries" -ne 3 ]
 do
   q=`cat qa.txt | head -n 1`
   echo your question is: "$q"
   echo please enter your answer
   read a
   ans=`cat qa.txt | tail -n 1`
   if [ "$a" == "$ans" ]
   then
      echo "answer is correct, you may proceed"
      stty start undef
      trap - INT
      break
   else
      tries=$((tries +1))
      remaining=$((remaining -1))
      if [ "$tries" -le 2 ]
      then
      echo your answer is incorrect ! Please try again, you have expired $tries tries, you have remaining $remaining tries, after that you will be exited.
      else
      echo you have expired number of tries and we could not verify you, you will be exiting now.
      fi
   fi
  done
fi
if [ "$tries" -eq 3 ]
then
exit
fi
   
   	 





