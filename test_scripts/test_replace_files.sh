#!/bin/bash

local_file=$(find ~/Documents -type f -name 'test_File_For_BASH__replacement_test.txt') 

oneDrive_file=$(find ~/OneDrive/Documents -type f -name 'test_File_For_BASH__replacement_test.txt')


if !  diff -rq "$local_file" "$oneDrive_file";
then
	echo "They differ"
	cat "$oneDrive_file"  > "$local_file"
	echo "OneDrive file overwriting Local File"

else
	echo "Local File not overwritten. Newer."
fi
