#!/usr/bin/env bash



# ------------------------------
# Defaults
# ------------------------------

GIT_REPOSITORY=0
SVN_REPOSITORY=0

# ------------------------------
#
# ------------------------------

#while read -p "SVN Source url: " SVN_REPOSITORY; do
#	if [[ $SVN_REPOSITORY != "" ]]; then
#		break;
#	fi
#done

echo; echo $SVN_REPOSITORY

[[ -e ./svn ]] && rm -rf ./svn

mkdir -p ./svn

docker build . --tag svn-to-git
docker run -it svn-to-git git svn clone	$*

