echo UPDATE user SET Password=PASSWORD\(\'1234\'\) WHERE User=\'root\'\; > SQL
echo FLUSH PRIVILEGES\; >> SQL
echo exit >> SQL
sudo stop mysql
sudo mysqld --skip-grant-tables & sleep 5
sudo mysql mysql < SQL
sudo mysqladmin -p1234 shutdown
sudo start mysql
echo
echo MySQL username: root
echo MySQL password: 1234
echo
