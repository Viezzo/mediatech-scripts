#!/bin/bash
STAGEFOLDER="/Library/BIService/"
URL="https://storage.googleapis.com/jamf-hotdesk-resources/lab_grotesque_font_package.zip"

curl -L -o "$STAGEFOLDER"/lab_grotesque_font_package.zip $URL
unzip "$STAGEFOLDER"/lab_grotesque_font_package.zip
rm -r "$STAGEFOLDER"/__MACOSX
cp "$STAGEFOLDER"/lab_grotesque_font_package/*.ttf ~/Library/Fonts
rm -r "$STAGEFOLDER"/lab_grotesque_font_package
rm "$STAGEFOLDER"/lab_grotesque_font_package.zip

exit 0