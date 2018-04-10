#installing a package
sudo apt-get install samba
sudo apt-get install -y samba      #Assumes "yes" where ​ apt​ would usually prompt to continue
sudo apt-get install samba apache2 #installs all listed packages
sudo apt install samba             #displays a colored progress bar


#updating package lists
sudo apt-get update

#updating installed packages
sudo apt-get upgrade


#find a package
apt-cache search samba
apt search samba


#view info about a specific package
apt-cache show samba              #shows locally cached info about a package
apt show samba
dpkg -s samba                     #shows the currently installed status of the package


#remove one or more installed packages
sudo apt-get autoremove           #removes unneeded packages
sudo apt-get remove samba
sudo apt remove samba


#get help
man apt-get			 #updating the local package database and working with packages
man apt-cache           	 #querying the local package database
man dpkg			 #Working with individual package files and querying installed packages
man apt				 #Working with a more concise, user-friendly interface to most basic operations
