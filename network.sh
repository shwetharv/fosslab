#To view all currently available interfaces
ifconfig -a

#To temporarily configure an IP Address
sudo ifconfig wlo1 192.168.1.205 netmask 255.255.252.0

#To verify the IP address configuration of wlo1
ifconfig wlo1

#To configure a default gateway
sudo route add default gw 192.168.0.8 wlo1

#To verify default gateway configuration
route -n

