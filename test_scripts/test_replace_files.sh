#!/bin/bash


#local_file=$(find ~/Documents -type f -name "test_File_For_BASH.txt") 
local_file=$(find ~/Documents -type f -name "sure_whatever_just_work_plox.txt") 

#oneDrive_file=$(find ~/OneDrive/Documents -type f -name "test_File_For_BASH.txt")

oneDrive_file=$(find ~/OneDrive/Documents -type f -name "sure_whatever_just_work_plox.txt")


updateLocalFileToCurrentVersion(){
	#check to see which is newer. Use that one to update
	local_file=$1
	oneDrive_file=$2

	echo "local file: " 
	echo $local_file
	
	echo "OneDrive file: " 
	echo $oneDrive_file


	echo "They differ. Checking to see which is newer."

	if [ "$oneDrive_file" -nt "$local_file" ]
	then
		echo "OneDrive file is newer. Overwriting local."
		oneDrive_file_formatted="${oneDrive_file// /\\ }"
		local_file_formatted="${local_file// /\\ }"
		
		echo $oneDrive_file_formatted
		echo $local_file_formatted

	#TODO: "" doesn't work for cat operation. Need to modify filepath so that it substitutes the whitespace with a legal character (smh)

	#cp  "$oneDrive_file_formatted" "$local_file_formatted"
	mv [ "$oneDrive_file" "$local_file" ]
	#	echo "Deleting OneDrive file now."
	#	rm -f "$oneDrive_file"
		#deleteFile '$oneDrive_file'

	elif [ "$local_file"  -nt "$oneDrive_file "]
	then
		echo "Local file is newer."
		echo "Deleting OneDrive file now."
		rm -f "$oneDrive_file"
		#deleteFile '$oneDrive_file'
	
	else
		echo "No change."
	fi
}


deleteFile(){
	file_to_delete=$1
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
	
