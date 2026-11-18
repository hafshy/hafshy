#!/bin/sh
# ponytail: re-render README tiles from src/tiles.html with headless Chrome
cd "$(dirname "$0")"
C="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
for t in klik hafness apps ar; do
  "$C" --headless --disable-gpu --hide-scrollbars --window-size=1200,675 --force-device-scale-factor=1 \
    --screenshot="$PWD/$t.png" "file://$PWD/src/tiles.html#$t" 2>/dev/null
done
