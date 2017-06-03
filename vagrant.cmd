
$ vagrant init

$ vagrant box add hashicorp/precise64

$ vagrant up

$ vagrant ssh

$ vagrant reload

#Via a provision script or else can be inline also
#config.vm.provision :shell, path: "bootstrap.sh"

#Rerun the provisioner
$ vagrant reload --provision

$ vagrant suspend
$ vagrant halt
$ vagrant destroy

