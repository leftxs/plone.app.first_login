#!/bin/sh

IP=$(/sbin/ifconfig|grep inet|head -1|sed 's/\:/ /'|awk '{print $3}')
USERNAME=`cat ~/Plone/zinstance/adminPassword.txt|grep Username|awk '{print $2}'` 
PLONEPASS=`cat ~/Plone/zinstance/adminPassword.txt|grep Password|awk '{print $2}'`

whiptail --title "Welcome" --msgbox --scrolltext \
"This is a VirtualBox Image, with Plone working out of the box.
For more information and help about Plone, please visit https://plone.org

Login information:

User: "$USERNAME"
Password: "$PLONEPASS"

You shoud read: /home/plone/Plone/zinstance/adminPassword.txt for more about passwords !

Your VirtualBox IP is: "$IP", please browse to "$IP" to visit your Plone site." 20 78


