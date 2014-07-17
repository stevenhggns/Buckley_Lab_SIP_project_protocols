#!/bin/bash

find . -name "*.md" | perl -pe 's/\.md$//' | xargs -I % bash -c "echo '%.md --> %.html'; pandoc --webtex -f markdown -t html -o %.html %.md"
