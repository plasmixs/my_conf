sudo vim /etc/network/interfaces
auto eth1
iface eth1 inet static
        address 192.168.100.20
        netmask 255.255.255.0

sudo /etc/init.d/networking restart

sudo hostnamectl set-hostname odl
sudo vim /etc/hosts

