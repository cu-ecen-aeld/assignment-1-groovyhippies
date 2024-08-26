#! /bin/bash




filesdir=$1
searchstr=$2


echo "finder.sh"
if [ $# -ne 2 ]
then 
	echo "parameters above were not specified"
	exit 1 
fi 


if [ -d "$filesdir" ]
then 
	echo "ok"
else 
	echo " filesdir does not represent a directory on the filesystem"
	exit 1

fi 

echo "here we go"
X=$(find "$filesdir" | wc -l) 
echo "searching for $searchstr IN $filesdir"

#Y=$(grep -r "$searchstr" | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "y is $Y"
echo "The number of files are $((X-1)) and the number of matching lines are $Y"
#Prints a message "The number of files are X and the number of matching lines are Y" 
#where X is the number of files in the directory and all subdirectories 
#and Y is the number of matching lines found in respective files, 
#where a matching line refers to a line which contains searchstr (and may also contain additional content).




