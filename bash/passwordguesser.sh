#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

myString="TestString"
referenceString="password"


if [ $myString = $referenceString ]
then
           echo "hi"
else
           echo "not correct"

           echo "4 attempts only."
           read myString

           if [ $myString = $referenceString ]
           then
                      echo "Correct. hi"
           else
                      echo "not correct"
                      echo "3 attempts only."
                      read myString
                      if [ $myString = $referenceString ]
                      then
                                 echo "Correct. hi"
                      else
                                 echo "2 Attempts left"
                      if [ $myString = $referenceString ]
                      then
                                 echo "Correct.hi"
                      else
                                 echo "1 Attempt left"
if [ $myString = $referenceString ]
                      then
                                 echo "Correct. hi"
                      else
                                 echo "0 Attempt left"
                      fi
           fi
fi

[ $myString = $referenceString ] && echo "You got it!" || echo "The password was hard"
EOF
