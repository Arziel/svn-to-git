

GIT_REPOSITORY=0
SSH_REPOSITORY='michals@webgarden-mail.vshosting.cz'
SVN_REPOSITORY="svn+ssh://${SSH_REPOSITORY}/home/webgarden/svn/adtrack"



# ------------------------------
#
# ------------------------------

#while read -p "SVN Source url: " SVN_REPOSITORY; do
#	if [[ $SVN_REPOSITORY != "" ]]; then
#		break;
#	fi
#done

#ssh-keygen -t rsa -b 2048
#ssh-copy-id michals@webgarden-mail.vshosting.cz

#git svn init $SVN_REPOSITORY \
#	--trunk=trunk/ \
#	--branches=branches/



cd new
#git svn fetch


pwd

#git svn init $SVN_REPOSITORY/branches/bg-40
git svn fetch

