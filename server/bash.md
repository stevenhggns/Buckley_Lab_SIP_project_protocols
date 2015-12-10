bash
====

## Authorship

Nick Youngblut (2015)


## Printing this protocol

See **Printing protocols** in the [README](../README.md#printing-protocols-conversion-of-protocols-to-pdf)


## Add to PATH

* This is needed to have a program run from any directory on the server.
  * For instance, calling the program `my_cool_program.py` from anywhere on the server
  would require that `my_cool_program.py` is in a directory that is in your `PATH` variable.
* Add to .profile or .bashrc: `export PATH="/my/new/path/:$PATH"`
  * Make sure you change `/my/new/path/` to the actual path that you want to use.
* To check what is in you `PATH`:
  * `echo $PATH`

## Potentially useful aliases/functions

### line breaks

* `alias mac_unix="perl -pi -e 's/\r/\n/g'"`
* `alias win_unix="perl -pi -e 's/\r$//g'"`

### compression

* `alias comp="tar -cvzf"`
* `alias uncomp="tar -zxvf"`

### misc

* Create and move to a directory
  * `mcd () { mkdir "$@" && cd "$_"; }`
* List file header values:
  * `header () { head -n 1 "$@" | perl -pe 's/\t/\n/g'; }`
* Like bash `sort` but keeping value order
  * `sort_ordered () { perl -ne 'print unless $seen{$_}++' "$@"; }`

## prompt
~~~
PS1='\[\e[1;31m\]@ \[\e[m\]\[\e[1;32m\]\h:\[\e[m\]\[\e[1;31m\]\w\n\[\e[0m\]\[\e[1;32m\]\$ \[\e[m\]'
~~~

