#!/bin/bash

ScriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in `find $ScriptDir -name "*.md" | perl -pe 's/\.md$//'`
do
    # check if file exists
    mdFile="$file.md"
    docxFile="$file.docx"
    
    if [ ! -e "$docxFile" ] || [ "$docxFile" -ot "$mdFile" ]; then
	# status
	echo "Converted: $mdFile --> $docxFile"; 

	# removing old file version
	if [ -e $docxFile ]; then 
	    rm -f $docxFile; 
	fi; 

	# pandoc conversion
	pandoc -f markdown -t docx -o $docxFile $mdFile; 
    
	# change permissions
	chmod a-w $docxFile
    else
	echo "File up-to-date: $docxFile"
    fi

done
