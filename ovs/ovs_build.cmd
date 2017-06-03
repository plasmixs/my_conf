apt-get install gcc
apt-get install make
apt-get install automake
apt-get install libtool
apt-get install python
apt-get install python-six

./boot.sh 
../configure --prefix=$PWD/installDir --datadir=$PWD/docDir --with-debug
#Without openssl
../configure --prefix=$PWD/installDir --datadir=$PWD/docDir --with-debug --disable-ssl
make install

#Kernel datapath build
apt-get install linux-headers-$(uname -r) 
../configure --prefix=$PWD/installDir --datadir=$PWD/docDir --with-debug --disable-ssl --with-linux=/lib/modules/`uname -r`/build
make
make modules_install
make install


#remove eralier modules
sudo rm /lib/modules/4.2.0-41-generic/kernel/net/openvswitch/*.ko
sudo make modules_install

