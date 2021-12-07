#!/bin/bash
STAGEFOLDER="/Library/BIService/"
URL="https://builds.parsec.app/package/parsec-macos.pkg"

curl -L -o "$STAGEFOLDER"/masv.pkg $URL
installer -pkg "$STAGEFOLDER"/masv.pkg -target /Applications/
rm "$STAGEFOLDER"/masv.pkg

exit 0