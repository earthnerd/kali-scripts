  GNU nano 2.5.3                                   File: mon.sh                                                                             

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


title=$(/bin/echo -e "                     \e[1;30m_                                    _       
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


### kills interfering processes, puts interface
### into monitor mode and brings it down
                                                             [ Read 74 lines ]
^G Get Help    ^O Write Out   ^W Where Is    ^K Cut Text    ^J Justify     ^C Cur Pos     ^Y Prev Page   M-\ First Line M-W WhereIs Next
^X Exit        ^R Read File   ^\ Replace     ^U Uncut Text  ^T To Linter   ^_ Go To Line  ^V Next Page   M-/ Last Line  M-] To Bracket
