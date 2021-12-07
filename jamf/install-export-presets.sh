#!/bin/bash
STAGEFOLDER="/Library/BIService/"
URL="https://storage.googleapis.com/jamf-hotdesk-resources/export_presets_package.zip"

curl -L -o "$STAGEFOLDER"/export_presets_package.zip $URL
unzip "$STAGEFOLDER"/export_presets_package.zip
rm -r "$STAGEFOLDER"/__MACOSX
for i in ~/Documents/Adobe/Adobe\ Media\ Encoder/*; do
    if [ -d "$i"/Presets ]; then #loop over subdirectories to get all AME versions, only copy if Presets subfolder exists
        cp "$STAGEFOLDER"/export_presets_package/*.epr "$i"/Presets
    fi
done
rm -r "$STAGEFOLDER"/export_presets_package
rm "$STAGEFOLDER"/export_presets_package.zip

exit 0