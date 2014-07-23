#!/bin/bash

ScriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in `find $ScriptDir -name "*.md" | perl -pe 's/\.md$//'`
do
    # status
    echo "$file.md --> $file.docx"; 

    # removing old file version
    if [ -e $file.docx ]; then 
	rm -f $file.docx; 
    fi; 

    # pandoc conversion
    pandoc -f markdown -t docx -o $file.docx $file.md; 
    
    # change permissions
    chmod a-w $file.docx

done
