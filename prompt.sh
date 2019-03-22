#!/usr/bin/env bash

source ./_prompt.sh


SVN_REPOSITORY=$(_prompt 'Pick SVN server')

if [[ $(_confirm 'Add SSH Key to SVN Server?') = 0 ]]; then
	echo "Add key"
fi
