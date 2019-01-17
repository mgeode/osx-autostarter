# Bash Autostarter 4 OSx

Zwar besitzt auch das OSx-Betriebssystem einen Autostarter, hier soll dieser um einen ***programmatischen Starter*** erweitert werden.


#### Define Appgroups

**/Applications/Autostarter.app/Contents/bin/apps-A.list**
```
Programm2
Programm8
```

**/Applications/Autostarter.app/Contents/bin/apps-B.list**
```
Programm4
Programm6
```

#### Switching Appgroups

**/Applications/Autostarter.app/Contents/bin/autostart.sh**
```
HOMELAN_ADD=${HOMELAN_ADD:-"192.168.1"}

_list=A
if [  "$(ifconfig |grep ${HOMELAN_ADD}|grep -v grep|awk '{print $1}')" = "inet" ]; then
    _list=B
...
```

Unter **Systemeinstellungen -> Benutzer&Gruppe -> Anmeldeobjekte** einfach das installierte Programm **Autostarter** hinzufügen.
