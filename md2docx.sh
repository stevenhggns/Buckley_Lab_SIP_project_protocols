#!/bin/bash

find . -name "*.md" | \
    perl -pe 's/\.md$//' | \
    xargs -I % bash -c "echo '%.md --> %.docx'; pandoc -f markdown -t docx -o %.docx %.md; chmod a-w %.docx"
