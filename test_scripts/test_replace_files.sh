#!/bin/bash

local_file=$(find ~/Documents -type f -name 'test_File_For_BASH__replacement_test.txt') 

oneDrive_file=$(find ~/OneDrive/Documents -type f -name 'test_File_For_BASH__replacement_test.txt')

cat "$oneDrive_file"  > "$local_file"

#echo $local_file

#echo $oneDrive_file
