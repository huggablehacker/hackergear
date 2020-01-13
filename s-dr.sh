#!/bin/bash
# Shodan Domain Records script, pulls up domain  records available on Shodan.
# Usage:  ./s-dr.sh example.com

if [ -z "$1" ]; then
                echo " Usage: Enter Domain, w/o 'www' or 'slashes'"
                exit 0
fi

open https://beta.shodan.io/domain/$1
