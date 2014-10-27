#!/bin/sh

# This is a script that will kill extra com.apple.IconServiceAgent processes from
# running on the server.  Add in any additional Processes to quit

logger "Clearing com.apple.IconServicesAgent and related extra processes"
killall -1 com.apple.IconServicesAgent
killall -1 distnoted
killall -1 cfprefsd
killall -1 xpcd

exit 0
