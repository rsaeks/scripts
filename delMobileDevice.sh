#!//bin/bash
##########################################################################################
# 	Device Delete Script for the JSS
#	
#	Please create a backup of the JSS or a snapshot prior to working with live data	
#
#	Usage: Call script with the following three parameters
#			- a text file of the serial numbers you wish to delete
#			- username for the jss
#			- password for the JSSResource
#
#	Example:	./delMobileDevice.sh serialnumbers.txt username password
#	
#	Note:	Make sure your input file contains a return at the last line otherwise the
#			final item will be ignored 
##########################################################################################

filename="$1"
username="$2"
password="$3"

# For a mobile device, uncomment the line below and update with your JSS URL
jssURL="https://JSSURL:PORT/JSSResource/mobiledevices/serialnumber/"

# For a computer, uncomment the line below and update with your JSS URL
#jssURL="https://JSSURL:PORT/JSSResource/computers/serialnumber/"

while read -r SN
do
    # Remove comment from line below to preview 
    #echo "curl -X DELETE $jssURL$SN -u $username:$password"
    
    # Remove comment from line below to modify your JSSResource
    #curl -X DELETE $jssURL$SN -u $username:$password
done < "$filename"
exit 0