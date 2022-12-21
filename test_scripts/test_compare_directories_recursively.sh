#!/bin/bash

testFile_OneDrive="C:\Users\Tony Chacon\OneDrive\Documents\_Me\test_File_For_BASH.txt" 

testfile_Local="C:\Users\Tony Chacon\Documents\_Me\test_File_For_BASH.txt"


diff -iN "$testFile_OneDrive" "$testFile_Local"

testFile_OneDrive_time=stat -c %Y "$testFile_OneDrive"
testFile_Local_time=stat -c %Y "$testFile_Local"


if [ $testFile_OneDrive_time -gt $testFile_Local_time ];

then
	echo "OneDrive is newer"

else
	echo "Local is newer"
fi

