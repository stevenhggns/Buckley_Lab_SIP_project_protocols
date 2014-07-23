#!/bin/bash

ScriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in `find $ScriptDir -name "*.md" | perl -pe 's/\.md$//'`
do
    # status
    echo "$file.md --> $file.html";

    # removing old file version
    if [ -e $file.html ]; then
	rm -f $file.html;
    fi;

    # pandoc conversion
    pandoc --webtex -f markdown -t html -o $file.html $file.md;

    # change permissions
    chmod a-w $file.html

done
