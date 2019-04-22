#!/bin/bash
echo -n Please Enter a file extension :
read extension

for f in *.jpg;
do
	echo -n "Please enter a file prefix (please ENTER for 2015 08 10)."
	read prefix
	if [ -z "$prefix" ]
	then
		mv "$f" "`date +%Y\ %m\ %d` $f"
		echo "Renaming $f to "`date +%Y\ %m\ %d` $f""
	else 
		mv "$f" "$prefix $f"		
		echo "Renaming $f to "$prefix $f""
	fi
done
