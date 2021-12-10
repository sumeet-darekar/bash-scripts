#!/bin/bash
echo "this is a simle entrypter and decrypter"
echo "enter the file path you want to encrypt/decrytp below"
read -p "PATH=>" FILE_PATH
cd ${FILE_PATH}

echo "choose 1 for encryption OR 2 for decryption"
read CHOICE

if [ ${CHOICE} = 1 ];
then
	echo "enter your file name"
	read FILE
	echo "encrytion is in process....!WAIT"
	gpg -c ${FILE}
	echo "AND here it is"
	echo "your entryped file"
else
	echo "enter your file name"
	read FILE1
	gpg -d ${FILE1}
	echo "AND here it is "
	echo "your decrypted file"
fi	
		   