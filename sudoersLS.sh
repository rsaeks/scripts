#!/bin/bash

echo 'ALL ALL=(ALL) NOPASSWD: /bin/launchctl unload /Library/LaunchDaemons/com.lightspeedsystems.useragent.plist' | sudo EDITOR='tee -a' visudo
echo 'ALL ALL=(ALL) NOPASSWD: /bin/launchctl load /Library/LaunchDaemons/com.lightspeedsystems.useragent.plist' | sudo EDITOR='tee -a' visudo

exit 0