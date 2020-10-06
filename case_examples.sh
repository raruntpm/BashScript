#!/bin/bash

echo -n "Type a digit or a letter> "
read character
case $character in 

[a-z] | [A-Z] ) echo "you typed the letter $character"
		;;
[0-9] ) echo "you tyed the digit $character"
	;;
* ) echo "you did not type a letter"
esac
