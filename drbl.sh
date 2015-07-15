sudo -i
wget -q http://drbl.nchc.org.tw/GPG-KEY-DRBL -O- | sudo apt-key add -
echo deb http://free.nchc.org.tw/ubuntu trusty main restricted universe multiverse >> /etc/apt/sources.list
echo deb http://free.nchc.org.tw/drbl-core drbl stable >> /etc/apt/sources.list
apt-get update
apt-get install drbl
apt-get install xinit

echo auto eth0:1 >> /etc/network/interfaces
echo iface eth0:1 inet static >> /etc/network/interfaces
echo address 10.10.10.100 >> /etc/network/interfaces
echo netmask 255.255.255.0 >> /etc/network/interfaces
ifup eth0:1

# 設定僅一次
# drblsrv -i
# 一直enter
# drblpush -i
# 一直enter

# 要做派送
# sudo dcs
# 要進桌面
# sudo startx
