#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Please Enter the Directory Name"
	exit 1
fi

if [ -d $1 ]; then
	echo "Directory present"
else
	echo "Directory Not present"
fi
