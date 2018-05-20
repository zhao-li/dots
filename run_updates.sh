#!/bin/bash

# https://askubuntu.com/questions/196768/how-to-install-updates-via-command-line

echo "fetching the list of available updates"
apt-get --yes update

echo "updating the current packages"
apt-get --yes upgrade

echo "updating the new packages"
apt-get --yes dist-upgrade
