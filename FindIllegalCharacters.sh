#!/bin/bash

# Find Illegal Characters
#This script will parse all items in a directory passed during argument and output its location.
#Usage: FindIllegalCharacters.sh /Path/To/Scrape/

# Make sure that the script understands space characters.
IFS=$'\n'

# Use grep to locate all files with a space at the end of its name with the Regular Expression
# .*[<>'\':*?|].*
find $1 -mindepth 1 | while read ffile || test -n "$ffile"; do
	echo $ffile | grep ".*[<>'\':*?|].*"
done

exit 0