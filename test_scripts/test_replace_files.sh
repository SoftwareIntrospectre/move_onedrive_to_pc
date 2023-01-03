#!/bin/bash

local_file=$(find ~/Documents -type f -name 'test_File_For_BASH.txt') 

oneDrive_file=$(find ~/OneDrive/Documents -type f -name 'test_File_For_BASH.txt')


updateLocalFileToCurrentVersion(){
	#check to see which is newer. Use that one to update
	local_file=$1
	oneDrive_file=$2


	echo $local_file

	echo $oneDrive_File

	echo "They differ. Checking to see which is newer."
	
	if ("$oneDrive_file" -nt "$local_file") then
		echo "OneDrive file is newer. Overwriting local."
		cat  "$oneDrive_file" >  "$local_file"
		echo "Deleting OneDrive file now."
		rm -f "$oneDrive_file"
		#deleteFile '$oneDrive_file'

	

	else
		echo "Local file is newer."
		echo "Deleting OneDrive file now."
		rm -f "$oneDrive_file"
		#deleteFile '$oneDrive_file'

	fi
}


deleteFile(){
	fil_to_delete=$1
	echo "deleting this file:"
	echo $file_to_delete
	rm -f  $file_to_delete
}

if ! diff -rq "$local_file" "$oneDrive_file" 
then
	updateLocalFileToCurrentVersion "$local_File" "$oneDrive_file"
else
	echo "No differences."

fi
	
