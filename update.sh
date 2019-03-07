#!/bin/bash

TEXT_RESET='\e[0m'
TEXT_RED_B='\e[1;31m'
TEXT_YELLOW='\e[33m'
TEXT_GREEN='\e[32;100m'
TEXT_BLINK='\e[5m'

echo -e $TEXT_GREEN
echo '      Hello' $USER 'lets update your machine...'
echo -e $TEXT_RESET

sudo apt update
echo -e $TEXT_RESET
echo -e $TEXT_YELLOW
echo '      APT update finished...'
echo -e $TEXT_RESET

sudo apt dist-upgrade -y
echo -e $TEXT_RESET
echo -e $TEXT_YELLOW
echo '      APT dist-upgrade finished...'
echo -e $TEXT_RESET

sudo apt upgrade -y
echo -e $TEXT_RESET
echo -e $TEXT_YELLOW
echo '      APT upgrade finished...'
echo -e $TEXT_RESET

sudo apt autoremove -y
echo -e $TEXT_RESET
echo -e $TEXT_YELLOW
echo '      APT autoremove finished...'
echo -e $TEXT_RESET

if [ -f /var/run/reboot-required ]; then
    echo -e $TEXT_RED_B
    echo '      Reboot required!'
    echo -e $TEXT_RESET
fi

echo -e $TEXT_GREEN
echo -e $TEXT_BLINK
echo '      Yeah, your machine is up to date...'
echo -e $TEXT_RESET
