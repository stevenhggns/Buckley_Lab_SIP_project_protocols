#!/bin/bash

ScriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in `find $ScriptDir -name "*.md" | perl -pe 's/\.md$//'`
do
    # check if file exists
    mdFile="$file.md"
    htmlFile="$file.html"
    
    if [ ! -e "$htmlFile" ] || [ "$htmlFile" -ot "$mdFile" ]; then
	# status
	echo "Converted: $mdFile --> $htmlFile"; 

	# removing old file version
	if [ -e $htmlFile ]; then 
	    rm -f $htmlFile; 
	fi; 

	# pandoc conversion
	pandoc -f markdown -t html -o $htmlFile $mdFile; 
    
	# change permissions
	chmod a-w $htmlFile
    else
	echo "File up-to-date: $htmlFile"
    fi

done
