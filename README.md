SSHGuard4RasPi
==============

This is a simple bash script for Raspberry Pi to defend SSH flood.

It can be run on almost all Linux platform.
(I write it for my Raspberry Pi specially,so I named it as SSHGuard4RasPi. :)

It must be run under root access,because it will append new rules into iptables.

Run with following command:

# bash sshguard.sh

or

# sudo bash sshguard.sh

When your system has been tried to login with wrong SSH password.It will show you what happen on the screen.If a IP has been blocked,you will receive a highlight display.

If login failed over 3 times,it will add the IP into blocklist.

To unblocl all the IPs with:

# iptables -F

or

# sudo iptables -F

(Warning:This command will erase ALL iptables rules!)

Strongly recommend to run this script with screen.

Sample:

# screen -S defender
# sudo bash sshguard.sh

exit with 'Ctrl+A+D'.It will run in background.

To see it with:

# screen -r defender


Finally,enjoy! ;)