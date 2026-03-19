vi delete_users.sh

#!/bin/bash
Script to delete users 
#takes input file with usernames on the command line as first arguement. 
# user name file
USERFILE=$1

if [ "$USERFILE"="" ] 
 then
	echo "Please specify an input file!"
	exit 10 
elif test -e $USERFILE
then
	for user in  `cat $USERFILE`
	do
	echo "deleting the "$user" user..."
		userdel -r $user
	done
	exit 20
else
	echo " Invalid input file specified! "
	exit 30
fi 
