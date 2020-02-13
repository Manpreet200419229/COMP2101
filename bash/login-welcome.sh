#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############

# Variables

###############

myname=$USER

hostname=$(hostname)

day=$(date +"%s")
time=$(date +"%H:%M %m")

if [[ $day = Mon ]];
then title="jasmin"
elif [[ $day = Tue ]];
then title="rose"
elif [[ $day = Wed ]];
then title="lily"
elif [[ $day = Thur ]];
then title="tulip"
elif [[ $day = Fri ]]
then title="lavender"
elif [[ $day = Sat ]];
then title="sunflower"
elif [[ $day = Sun ]];
then title="daisy"
fi

###############

# Main        #

###############

cat <<EOF
Message="Welcome to planet ,$hostname $myname! It is $time on $day $title"

EOF
