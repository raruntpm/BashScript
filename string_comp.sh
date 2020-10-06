#!/bin/bash
echo -n "Enter text compare -> "
read text
if [ $text = "yes" ]; then
	echo "Strings are equal"
else
	echo "Strings are not equal"
fi
