#! /usr/bin/env bash

maim -s -u \
  | xclip -selection clipboard -t image/png -i
