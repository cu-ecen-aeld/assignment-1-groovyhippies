#! /bin/bash




writefile=$1
writestr=$2



if [ $# -ne 2 ]
then 
	echo "parameters above were not specified"
	exit 1 
fi 

# Create the directory if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Create the file and write the string to it
echo "$writestr" >> "$writefile"



