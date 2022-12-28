#!/bin/bash

local_file=$(find ~/Documents -type f -name 'test_File_For_BASH.txt') 

oneDrive_file=$(find ~/OneDrive/Documents -type f -name 'test_File_For_BASH.txt')


overwriteLocal(){
	echo "They differ"
	cat "$oneDrive_file"  > "$local_file"
	echo "OneDrive file overwriting Local File"
}



if !  diff -rq "$local_file" "$oneDrive_file";
then
	overwriteLocal "$local_File" "$oneDrive_file"
else
	echo "Local File not overwritten. Newer."
fi
