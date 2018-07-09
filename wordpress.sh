yum install wget php mysql -y
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
mv ./latest/* /var/www/html


service httpd start
service mysqld start
