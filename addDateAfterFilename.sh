#!/bin/bash

#Create a script which will take multiple arguments as filename and adds a date after the filename.
#eg. if our file was named file1.txt it would rename it to file1_ 2018-03-24.
#Use basename comannd.

for (( i=1; i<=$#; i++ ))
	do
FILE=$(readlink -f $(echo $@ | cut -d " " -f $i ))
mv $FILE $(echo | basename $FILE | cut -d. -f1)-$(date +%d_%m_%Y)
done
