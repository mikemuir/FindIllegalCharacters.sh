#!/bin/bash

# Make sure that the script understands space characters.
IFS=$'\n'

# Use grep to locate all files with a space at the end of its name with the Regular Expression
# .*[<>'\':*?|].*
find . -mindepth 1 | while read ffile || test -n "$ffile"; do
	echo $ffile | grep ".*[<>'\':*?|].*"
done

exit 0