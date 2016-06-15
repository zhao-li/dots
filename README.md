# Collection of dot files

Getting Started
---------------
On Ubuntu:

    sudo ./install.sh

On Mac:

    ./install.sh

Notes on TP-link AC1200
-----------------------
http://swkstudios.com/tutorials/ubuntu/ubuntu-14-04-installing-tp-link-ac1200-t4u/

check current installation:
sudo dkms status

remove broken installation:
sudo dkms remove -m rtl8812AU_8821AU_linux -v 1.0 --all

install:
sudo cp -R /tmp/rtl8812AU_8821AU_linux /usr/src/rtl8812AU_8821AU_linux-1.0 # probably still exists
sudo dkms add -m rtl8812AU_8821AU_linux -v 1.0
sudo dkms build -m rtl8812AU_8821AU_linux -v 1.0
sudo dkms install -m rtl8812AU_8821AU_linux -v 1.0

