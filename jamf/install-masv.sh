#!/bin/bash
STAGEFOLDER="/Library/BIService"
URL="https://dl.massive.io/MASV.dmg"

# sudo curl -L -o "$STAGEFOLDER"/MASV.dmg $URL
cd "$STAGEFOLDER"
sudo hdiutil attach MASV.dmg
cd "/Volumes/MASV*"
sudo cp -rf MASV.app /Applications
sudo hdiutil detach MASV.dmg

exit 0
