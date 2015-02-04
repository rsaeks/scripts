#!/bin/bash
# $1 = User to search
# $2 = Term to search
# Search term example: "in:someFolder from:someEMailAdress subject:someSubject"
# Note: Quote search terms as above
# Make sure to have email backup prior to running in case script grabs accidental messages
echo "Starting command" `date` >> /tmp/outfile 2>&1
if [ -z "$2" ]; then
	echo "usage:  rm_message.sh user@domain.com search_terms"
	exit 0
else
	msgID=`zmmboxsearch -m "$1" -q "$2" | grep ID | awk -F':' '{ print $3 "," }' | tr -d '\n'`
fi
if [ -z $msgID ]; then
	echo "No Matching messages found for" $1 >> /tmp/outfile 2>&1
	exit 0
else
	echo "Deleting message(s)" $msgID "for user" $1 >> /tmp/outfile 2>&1
	#On initial config run, comment below line to prevent accidental loss
	zmmailbox -z -m $1 dm $msgID
fi
exit 0