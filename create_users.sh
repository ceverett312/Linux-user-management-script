#vi create_users.sh
#!/bin/bash
#Script to create users
#takes input file with user names on the command line as the first arguement.

#user name file 
USERFILE=$1

if [ "$USERFILE" = " " ] 
then
	echo "Please specify an input file!"
	exit 10 
elif test -e $USERFILE
then
	for user in  `cat $USERFILE`
	do
	echo "creating the "$user" user..."
		useradd -m $user
	done
	exit 20
else
	echo " Invalid input file specified! "
	exit 30
fi 
