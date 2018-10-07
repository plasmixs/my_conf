Interfaces
==========

sudo vim /etc/network/interfaces
auto eth1
iface eth1 inet static
        address 192.168.100.20
        netmask 255.255.255.0

sudo /etc/init.d/networking restart

VLAN settings
=============

https://www.candelatech.com/~greear/vlan.html
https://wiki.ubuntu.com/vlan

MAC VLAN
========

Hostname
========

sudo hostnamectl set-hostname odl
sudo vim /etc/hosts

IPTables
========

#sudo iptables --policy FORWARD ACCEPT
#sudo iptables -L

Interface commands
==================

#list all interfaces
ifconfig -a 

ifconfig eth0 down

#Interface delete
ip link del virbr0-nic

