#!/bin/bash
# Author: Tiktakje
# Automatically update and upgrade

if [ "$EUID" -ne 0 ]
  then echo "Please run as superuser"
  exit
fi

echo "Dist-upgrade? 1/2"
echo 

read dist

if [ $dist -eq 1 ]
then
    echo "Sudo apt-get update"
    apt-get update
    echo
    echo "Sudo apt-get dist-upgrade"
    apt-get dist-upgrade
    echo 
    echo "Sudo apt-get autoremove"
    sudo apt-get autoremove
    echo
    echo Done

elif [ $dist -eq 2 ]
then
    echo "Sudo apt-get update"
    apt-get update
    echo
    echo "Sudo apt-get upgrade"
    apt-get dist-upgrade
    echo 
    echo "Sudo apt-get autoremove"
    sudo apt-get autoremove
    echo
    echo Done
else
    echo
    echo
    echo Please run again
fi
