#!/bin/sh

# This script and its functions supports wifi.
# http://swkstudios.com/tutorials/ubuntu/ubuntu-14-04-installing-tp-link-ac1200-t4u/

echo "checking current installation:"
dkms status

echo "removing broken installation:"
dkms remove -m rtl8812AU_8821AU_linux -v 1.0 --all

echo "installing:"
cp -R /tmp/rtl8812AU_8821AU_linux /usr/src/rtl8812AU_8821AU_linux-1.0 # probably still exists
dkms add -m rtl8812AU_8821AU_linux -v 1.0
dkms build -m rtl8812AU_8821AU_linux -v 1.0
dkms install -m rtl8812AU_8821AU_linux -v 1.0
