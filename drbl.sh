sudo wget -q http://drbl.nchc.org.tw/GPG-KEY-DRBL -O- | sudo apt-key add -
sudo echo deb http://free.nchc.org.tw/ubuntu trusty main restricted universe multiverse >> /etc/apt/sources.list
sudo echo deb http://free.nchc.org.tw/drbl-core drbl stable >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install drbl
sudo apt-get install xinit

sudo echo auto eth0:1 >> /etc/network/interfaces
sudo echo iface eth0:1 inet static >> /etc/network/interfaces
sudo echo address 10.10.10.100 >> /etc/network/interfaces
sudo echo netmask 255.255.255.0 >> /etc/network/interfaces
sudo ifup eth0:1

# only one time
# drblsrv -i
# drblpush -i

# everytime
# sudo startx
# sudo dcs
