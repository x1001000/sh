sudo sed -i '12a sudo service isc-dhcp-server stop' /etc/rc.local
sudo sed -i '1064a sudo service isc-dhcp-server start' /usr/sbin/dcs
sudo sed -i '1109a sudo service isc-dhcp-server stop' /usr/sbin/dcs
