#!/bin/bash
STAGEFOLDER="/Library/BIService/"
URL="https://builds.parsec.app/package/parsec-macos.pkg"

curl -L -o "$STAGEFOLDER"/parsec.pkg $URL
installer -pkg "$STAGEFOLDER"/parsec.pkg -target /Applications/
rm "$STAGEFOLDER"/parsec.pkg

exit 0