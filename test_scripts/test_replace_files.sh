#!/bin/bash

local_file=$(find ~/Documents -type f -name 'test_File_For_BASH.txt') 

oneDrive_file=$(find ~/OneDrive/Documents -type f -name 'test_File_For_BASH.txt')


updateLocalFileToCurrentVersion(){
	#check to see which is newer. Use that one to update

	echo "They differ. Checking to see which is newer."
	
	if "$oneDrive_file" -nt "$local_file"
	then 
		echo "OneDrive file is newer. Overwriting local."
		cat "$oneDrive_file"  > "$local_file"
		deleteFile "$oneDrive_file"
	
	elif $local_file -nt $oneDrive_File
	then
		echo "Local is newer. Deleting OneDrive file."
		deleteFile "$oneDrive_file"
		
	else
		echo "Exception case inner"
	fi
}


deleteFile(){
	echo "deleting $($1)"
	rm $1
}

if ! diff -rq "$local_file" "$oneDrive_file" 
then
	updateLocalFileToCurrentVersion "$local_File" "$oneDrive_file"
else
	echo "No differences."
fi
