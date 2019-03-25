#!/usr/bin/env bash

# -----------------------------------------
# Init Constants
# -----------------------------------------

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source ./_injector.sh


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

injector svn root


echo; echo $SVN_REPOSITORY

docker build _docker/svn/. \
	--build-arg DOCKER_UID=$UID \
	--tag svn-to-git

docker run -it \
	--volume $DIR/src/:/var/docker \
	--volume $DIR/svn/:/home/dockeruser/.subversion \
	--volume $DIR/ssh/:/home/dockeruser/.ssh \
	svn-to-git

