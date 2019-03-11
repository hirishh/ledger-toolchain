#!/bin/sh

if [ ! -f /lib/x86_64-linux-gnu/libudev.so ]; then
  apt-get install libudev-dev
fi
wget -q -O - https://raw.githubusercontent.com/LedgerHQ/udev-rules/master/add_udev_rules.sh | sudo bash
