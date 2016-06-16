#!/bin/bash

# monitor mode by earthnerd

####### notes:
# At the moment this is only working with the wlan0 interface
#
#############################################################
# maybe
# -----
# prompt user for specific mac or not
# prompt to choose interface
#
#############################################################


title=$(/bin/echo -e "  	   	   \e[1;30m_                                    _       
                  (_)_                                 | |      
 ____   ___  ____  _| |_  ___   ____    ____   ___   _ | | ____ 
|    \ / _ \|  _ \| |  _)/ _ \ / ___)  |    \ / _ \ / || |/ _  )
| | | | |_| | | | | | |_| |_| | |      | | | | |_| ( (_| ( (/ / 
|_|_|_|\___/|_| |_|_|\___)___/|_|      |_|_|_|\___/ \____|\____)

						   by earthnerd\e[0m
")

clear
echo "$title

"
# kills interfering processes, puts interface
# into monitor mode and brings it down
# -----------------------------------------------------------------

/bin/echo -e "
\e[1;33mWhich interface would you like to use?\e[0m
"
read interface
sleep 1
clear

echo  "$title
"

/bin/echo -e "\e[1;33m|--------------------------------------------|
|--- Killing processes that may interfere ---|
|--------------------------------------------|\e[0m"


airmon-ng check kill >/dev/null


/bin/echo -e "\e[1;33m|--- Putting $interface into monitor mode --------|
|--------------------------------------------|\e[0m"


airmon-ng start $interface >/dev/null

ifconfig "$interface"mon down


# changing mac
# -----------------------------------------------------------------

/bin/echo -e "\e[1;33m|--- Here is your new mac address -----------|
|--------------------------------------------|\e[0m"

newmac=$(macchanger -a "$interface"mon | grep New)

/bin/echo -e "
\e[1;32m$newmac\e[0m
"


# bringing device back up
# ------------------------------------------------------------------

ifconfig "$interface"mon up >/dev/null

/bin/echo -e "\e[1;33mInterface is now called\e[0m \e[1;31m"$interface"mon\e[0m
"
/bin/echo -e "\e[1;33mHave a nice day :)\e[0m

"
