#! /usr/bin/env bash

set -e
xset s off dpms 0 10 0

/usr/bin/i3lock \
  --color=000000 \
  --ignore-empty-password \
  --show-failed-attempts \
  -i /home/spike/c/linux_desktop_config/images/gilmore_isaora_ghostly.png

xset s off -dpms

