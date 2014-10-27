#!/bin/sh

# This script will clear up the extra caches from com.apple.IconServices

logger "This will begin to clear caches"
find /var/folders -name "*.iscachebmp" -type f -exec rm -v "{}" \; 

exit 0
