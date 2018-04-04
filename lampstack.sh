#to test apache2
http://localhost #opens deafult page on browser

sudo apt-get install lamp-server^ -y
#setting up mysql
mysql -u root -p
#alternate installation of php
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
sudo nano /etc/apache2/mods-enabled/dir.conf
#move index.php to first position among files
#restart apache2
sudo systemctl restart apache2
#to test php
sudo nano /var/www/html/info.php
#info.php contains
<?php
phpinfo();
?>
#in browser
http://localhost/info.php #opens php page
