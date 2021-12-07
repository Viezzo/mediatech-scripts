#!/bin/bash
STAGEFOLDER="/Library/BIService/"

URL="https://update.cyberduck.io/Cyberduck-8.0.0.36226.zip"
curl -L -o "$STAGEFOLDER"/cyberduck800.zip $URL
unzip -q "$STAGEFOLDER"/cyberduck800.zip -d /Applications/
rm "$STAGEFOLDER"/cyberduck800.zip

exit 0