#!/bin/sh

set -e
endsh() {
    if [[ "$1" == "notFound" ]]
    then
        exit 1
    else
       	pkill nm-applet
        exit 0
    fi
}
trap endsh EXIT

if ! command -v nm-applet &> /dev/null
then
    endsh "notFound"
else
    nm-applet
fi


