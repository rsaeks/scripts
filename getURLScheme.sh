#!/bin/bash
################## 
# Date: August 5th, 2015
# Author: Randy Saeks
#
# Purpose: Output URL schemes of an iOS App
#
# Usage: Run this in Terminal in the format ./getURLScheme.sh FILE.IPA
##################

#Check for argument
if [[ -z "$1" ]]; then
	echo "Please re-run this command in the format ./getURLScheme.sh FILE.IPA"
	exit 0
fi
echo "================================================================================"

#Prepare the file
file=$1
cp "$file" /tmp/
file1=`ls /tmp | grep .ipa`
mv /tmp/"$file1" /tmp/"$file1".zip

#Unzip the file
echo "Getting URL Schemes for app $file1"
unzip /tmp/"$file1".zip -d /tmp/"$file1" >> /dev/null
rm /tmp/"$file1".zip

#Find the path of Info.plist
path=`find /tmp/"$file1" -name Info.plist`

#Print any found URL Schemes
/usr/libexec/PlistBuddy -c Print:CFBundleURLTypes:0:CFBundleURLSchemes "$path"

#Cleanup
rm -Rf /tmp/"$file1"
echo "================================================================================"

exit 0