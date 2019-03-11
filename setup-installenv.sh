#!/bin/sh

if [ ! -f /usr/bin/git ]; then
  sudo apt install git
fi

if [ ! -f /usr/include/libusb-1.0/libusb.h ]; then
  sudo apt-get install libusb-1.0-0-dev
fi
if [ ! -d nanos-secure-sdk ]; then
  git clone https://github.com/LedgerHQ/nanos-secure-sdk
fi

if [ ! -d blue-secure-sdk ]; then
  git clone https://github.com/LedgerHQ/blue-secure-sdk
fi

if [ ! -f /etc/udev/rules.d/20-hw1.rules ]; then
  sudo ./setup-udev.sh
fi

if [ ! -f /usr/bin/pip3 ]; then
  sudo apt install python-pip
fi
#SECP_BUNDLED_EXPERIMENTAL=1 pip --no-cache-dir --no-binary secp256k1 install secp256k1

LEDGERBLUE_PY=`pip list  --format=columns |grep ledgerblue`
if [ -z "$LEDGERBLUE_PY" ]; then
  pip install -Iv ledgerblue
fi

