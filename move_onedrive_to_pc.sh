#!/bin/bash

## below command works. Able to find file in both locations. Next is to compare the two files' contents
#find ~/Documents ~/OneDrive/Documents -type f -name 'test_File_For_BASH.txt' -print -exec cat 'put' {} \;

local_file=$(find ~/Documents -type f -name 'test_File_For_BASH.txt')

oneDrive_file=$(find ~/OneDrive/Documents -type f -name 'test_File_For_BASH.txt')

file_diff= diff -i "$local_file" "$oneDrive_file"

if ["$file_diff" != ""]
then
	echo "The directory was modified"
fi
