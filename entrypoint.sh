#!/bin/bash

echo "Launching Chromium in kiosk mode..."
chromium --no-sandbox \
  --disable-gpu \
  --disable-software-rasterizer \
  --disable-dev-shm-usage \
  --disable-infobars \
  --disable-session-crashed-bubble \
  --disable-features=TranslateUI \
  --no-first-run \
  --kiosk https://dashboard.riverboattracker.com/dashboard/clinton/100