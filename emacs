#!/bin/bash

if [ ! -e "$1" ]; then
    if [[ $1 == *.py ]]; then
	echo -e "#!/usr/bin/python3\n" > $1
	emacs $1
    elif [[ $1 == *.c ]]; then
	echo -e "#include <>

/**
 *
 *
 *
*/

p
{
	return ();
}" > $1
	emacs $1
    else
	emacs $1
    fi
else
    emacs $1
fi
