#!/usr/bin/env bash

HOMELAN_ADD=${HOMELAN_ADD:-"192.168.1"}
PDIR=.

_welcome() {
    osascript -e "display notification \"$1\" with title \"$2\""
}


if [  "$(ifconfig |grep ${HOMELAN_ADD}|grep -v grep|awk '{print $1}')" = "inet" ]; then
    _welcome "Welcome in your Home-LAN" "Home"
    _list=A
else
    _welcome "Welcome in your Campus-LAN" "Campus"
    _list=B
fi

for app in $(cat ${PDIR}/apps-${_list}.list); do
        open /Applications/${app}.app
done
