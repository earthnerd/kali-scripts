# kali-scripts
         These scripts come with absolutely no warranty 
         ********* USE AT YOUR OWN RISK !! *************
                
I'm just learning :) Feel free to give me some pointers on how to 
get these scripts leaner and meaner. cheers.

all of these should work fine in kali without any additional programs.
dependencies are listed anyway for those running something else.

-----------------------------------------------------------------
### mon.sh - puts interface into monitor mode
        ### requires airmon-ng ((aircrack suite)), macchanger

currently mon.sh is set up so you can enter the interface name. 
it obviously won't work if your device is not capable of such a thing
so make sure it is beforehand. 

it seems to me most of the kali kids will be using wlan0 or wlan1. 
mon.sh should work fine for these and will hopefully come in handy 
if you've got a really random interface like wlp38djdfnf or something.

-----------------------------------------------------------------
### macswap.sh - changes mac address of all interfaces
         ### requires macchanger

macswap is currently only set up to change wlan0, wlan1, usb0 and eth0. 
ideally i get it to the point of changing the mac of any attached device 
but i'll see how i go. this works fine for my purposes.

-----------------------------------------------------------------
### macbac.sh - reverts all mac addresses to permanent address
          ###requires macchanger

basically works the same as macswap but in reverse.



### MORE TO COME !

- (reasonably) automated airodump/aireplay handshake capturing
- reverting jumbled network devices back to normal (get the internet back on!)
- starting beef and mitmf
- probably one for nmap and other OSINT tools
- one for starting armitage
- ...and plenty more i'm sure. i seem to be stuck in the bash vortex at the moment :)
