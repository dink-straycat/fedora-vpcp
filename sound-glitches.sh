#!/usr/bin/bash -x

sudo sed -i '/^load-module module-udev-detect$/s/$/ tsched=0/' /etc/pulse/default.pa

pulseaudio -k
pulseaudio --start

