#!/bin/bash

echo "Launching Chromium in kiosk mode..."
systemd-inhibit --what=idle /usr/bin/chromium --no-sandbox \
  --disable-gpu \
  --disable-software-rasterizer \
  --disable-dev-shm-usage \
  --disable-infobars \
  --disable-session-crashed-bubble \
  --disable-features=TranslateUI \
  --disable-background-timer-throttling \
  --disable-backgrounding-occluded-windows \
  --disable-renderer-backgrounding \
  --disable-gesture-requirement-for-media-playback \
  --autoplay-policy=no-user-gesture-required \
  --no-first-run \
  --kiosk https://dashboard.riverboattracker.com/dashboard/clinton/100