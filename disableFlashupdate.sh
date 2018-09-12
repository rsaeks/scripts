#!/bin/bash

# Create folder path if it doesn't exist.
mkdir -p /Library/Application\ Support/Macromedia/ 2>/dev/null

# Disable auto updates
echo "AutoUpdateDisable=1" > /Library/Application\ Support/Macromedia/mms.cfg 2>/dev/null

# Disable silent autoupdates
echo "SilentAutoUpdateEnable=0" >> /Library/Application\ Support/Macromedia/mms.cfg 2>/dev/null

# Disable analytics
echo "DisableAnalytics=1" >> /Library/Application\ Support/Macromedia/mms.cfg 2>/dev/null

exit 0