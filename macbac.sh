#!/bin/bash

# reverts devices to permanant mac addresses
# wlan0, wlan1, usb0, eth0
#-------------------------------------------

title=$(/bin/echo -e " 
\e[1;30m -- M A C B A C ---- by earthnerd\e[0m")

clear
echo "$title"


# macbac by earthnerd -- fancy title
#-------------------------------------------

/bin/echo -e "
\e[1;33mTaking network devices offline -----
------------------------------------\e[0m"

ifconfig wlan0 down 2>/dev/null
ifconfig wlan1 down 2>/dev/null
ifconfig usb0 down 2>/dev/null
ifconfig eth0 down 2>/dev/null

/bin/echo -e "
\e[1;31mwlan0\e[0m"
macchanger -p wlan0 2>/dev/null

/bin/echo -e "
\e[1;31mwlan1\e[0m"
macchanger -p wlan1 2>/dev/null

/bin/echo -e "
\e[1;31musb0\e[0m"
macchanger -p usb0 2>/dev/null

/bin/echo -e "
\e[1;31meth0\e[0m"
macchanger -p eth0 2>/dev/null

ifconfig wlan0 up 2>/dev/null
ifconfig wlan0 up 2>/dev/null
ifconfig usb0 up 2>/dev/null
ifconfig eth0 up 2>/dev/null

/bin/echo -e "
\e[1;32m------------------------------------
-------- all back to normal --------
-------- ***** yeah? ***** ---------
------------------------------------\e[0m


"
