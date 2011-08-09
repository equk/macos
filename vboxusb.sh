#!/bin/bash
#
# force usb mass storage driver to unload to allow virtualbox to take control
# Note: this is just a temporary workaround/hack
# also reload the kext when u want ur usb mass storage back ;)
#
# www.equk.co.uk

# Colors
blue="\033[1;34m"
green="\033[1;32m"
red="\033[1;31m"
bold="\033[1;37m"
reset="\033[0m"
echo -e "$green:: $reset Unloading USB Mass Storage kext"
sudo kextunload -b com.apple.iokit.IOUSBMassStorageClass
echo -e "$red:: $reset Unloaded USB Mass Storage kext"
