sudo apt-get install git

Reference: https://docs.openstack.org/developer/devstack/

git clone https://git.openstack.org/openstack-dev/devstack

sudo su; devstack/tools/create-stack-user.sh; su stack

./stack.sh

#Initial setup.
#Disable virsh default network

#list libvirt networks
virsh net-list
# Name                 State      Autostart     Persistent
#----------------------------------------------------------
# default              active     yes           yes

#remove the default network
virsh net-destroy default

#Disable default on bootup also
virsh net-autostart --network default --disable

#To enable it again
virsh net-start default

#show brctl
brctl show

#On init no interfaces virtual or bridges are configured.

#Check all required hosts and hypervisors
openstack compute service list
openstack --debug hypervisor list

#Need to explictly discover the nova hosts so that the hypervisor can list them
nova-manage cell_v2 discover_hosts --verbose

#By default not network elements are created in the hypervisor
#Need to remove the default netowrk.
#Once the default netowrk is gone then there are no network elements in 
#all hosts
