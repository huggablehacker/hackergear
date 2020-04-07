#!/bin/bash
#Input Variable
if [ -z "$1" ]; then
                echo " Enter Zim (no https) Location"
                exit 0
fi
clear

#Update Kiwix
docker pull kiwix/kiwix-serve
clear

#Open Docker, launch Kiwix.
docker run -e "DOWNLOAD=https://$1" -p 8080:80 kiwix/kiwix-serve