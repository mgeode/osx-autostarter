# Autostarter+ 4 OSx

Zwar besitzt auch das OSx-Betriebssystem einen Autostarter, hier soll dieser um einen ***programmatischen Starter*** erweitert werden.

### Installation

```
	make
```


### Define Appgroups

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

### Switching Appgroups

**/Applications/Autostarter.app/Contents/bin/autostart.sh**
```
HOMELAN_ADD=${HOMELAN_ADD:-"192.168.1"}

_list=A
if [  "$(ifconfig |grep ${HOMELAN_ADD}|grep -v grep|awk '{print $1}')" = "inet" ]; then
    _list=B
...
```

### Autostarter nach Login verankern
Damit der Autostarter nach dem UI-Login einmalig gestartet wird, muss man diesen unter **Systemeinstellungen -> Benutzer&Gruppe -> Anmeldeobjekte** das installierte Programm **Autostarter** hinzufügen.

#### Warum nicht bashrc-logik?
Die bashrc wird nur bei start selbiger benutzt. Wenn man hingegen nach der Erstanmeldung 
- Skripte zusätzlich starten möchte und/oder
- programmatisch entscheiden welches Programm gestartet werden soll.


### Useful
- [EnvAlias-Installer, Setup a Alias-System](https://github.com/mgeode/envalias-installer)
