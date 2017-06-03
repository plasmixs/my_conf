#kernel modules
modinfo ./datapath/linux/openvswitch.ko
sudo modprobe nf_conntrack,nf_nat,nf_defrag_ipv6,libcrc32c,nf_nat_ipv6,nf_nat_ipv4,gre

sudo insmod ./datapath/linux/openvswitch.ko

modprobe openvswitch


#user space process

bin/ovsdb-tool create

sbin/ovsdb-server --remote=punix:$PWD/var/run/openvswitch/db.sock
#sbin/ovsdb-server --remote=punix:$PWD/var/run/openvswitch/db.sock --detach
ovsdb-server --remote=punix:/usr/local/var/run/openvswitch/db.sock \
                     --remote=db:Open_vSwitch,Open_vSwitch,manager_options \
                     --private-key=db:Open_vSwitch,SSL,private_key \
                     --certificate=db:Open_vSwitch,SSL,certificate \
                     --bootstrap-ca-cert=db:Open_vSwitch,SSL,ca_cert \
                     --pidfile --detach --log-file


bin/ovs-vsctl --no-wait init

sudo sbin/ovs-vswitchd --pidfile
#sbin/ovs-vswitchd --pidfile -v --detach 

#commands
bin/ovs-vsctl add-br br0

#set ovsdb controller
bin/ovs-vsctl set-manager tcp:192.168.100.20:6640

#set of controller
bin/ovs-vsctl set-controller br0 tcp:192.168.100.20:6653
