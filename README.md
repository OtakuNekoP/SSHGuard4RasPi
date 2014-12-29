SSHGuard4RasPi
==============

This is a simple bash script for Raspberry Pi to defend it from SSH floods, but it can also run on most Linux platforms (I wrote it specifically for my Raspberry Pi, so I named it SSHGuard4RasPi :D ).
 

It must be run under root access to allow it to append new rules into iptables. 

To run the script, use the following command:
`# bash sshguard.sh`
or
`# sudo bash sshguard.sh`

When someone tries to log into your system with an incorrect SSH password, it will alert you of what had happened. If an IP has been blocked, you will receive a highlight display. 

If someone failed to login for 3 times in a row, the script will add their IP into the blocklist.

 You can unblock all the IPs using:
`# iptables -F`
or
`# sudo iptables -F`

 (Warning: This command will erase ALL iptable rules!)

 Using screen to run this script is strongly recommended. 

Sample:
`# screen -S defender
# sudo bash sshguard.sh`

 Exit with 'Ctrl+A+D'. It will run in the background. 

To see it, use:
`# screen -r defender`


Finally, enjoy! ;)

p.s. Thanks to s9meNiNE