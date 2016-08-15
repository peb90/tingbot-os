# this file is run on the pi

set -x
set -o errexit

sudo apt-get -y update
sudo apt-get -y install gdebi-core

sudo gdebi --non-interactive libsdl1.2debian_1.2.15-5_armhf.deb
sudo gdebi --non-interactive tingbot-os.deb

# run the expand-rootfs tingapp on first boot (the app sets the startup symlink back after running)
sudo ln -snf ../usr/share/tingbot/expand-rootfs.tingapp /apps/startup
