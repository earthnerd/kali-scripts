#!/bin/bash

## swaps mac addresses for available interfaces ##

clear


title=$(/bin/echo -e "
 \e[1;30m-- M A C S W A P ---- by earthnerd\e[0m")

echo "$title"

/bin/echo -e "
\e[1;33mTaking network devices offline -----
------------------------------------\e[0m"

ifconfig usb0 down 2>/dev/null
ifconfig wlan0 down 2>/dev/null
ifconfig wlan1 down 2>/dev/null
ifconfig eth0 down 2>/dev/null

/bin/echo -e "
\e[1;31musb0\e[0m"
macchanger -a usb0 2> /dev/null

/bin/echo -e "
\e[1;31mwlan0\e[0m"
macchanger -a wlan0 2>/dev/null

/bin/echo -e "
\e[1;31mwlan1\e[0m"
macchanger -a wlan1 2>/dev/null

/bin/echo -e "
\e[1;31meth0\e[0m"
macchanger -a eth0 2>/dev/null

ifconfig usb0 up 2>/dev/null
ifconfig wlan0 up 2>/dev/null
ifconfig wlan1 up 2>/dev/null
ifconfig eth0 up 2>/dev/null

/bin/echo -e "
\e[1;32m------------------------------------
---- all macs have been changed ----
------- have fun with that ---------
------------------------------------\e[0m

"
