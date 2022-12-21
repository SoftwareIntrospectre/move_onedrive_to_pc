#!/bin/bash

local_file=$(find ~/Documents -type f -name 'test_File_For_BASH.txt')

oneDrive_file=$(find ~/OneDrive/Documents -type f -name 'test_File_For_BASH.txt')

file_diff= diff -i "$local_file" "$oneDrive_file"

if ["$file_diff" != ""]
then
	echo "The directory was modified"
fi
