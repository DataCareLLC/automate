#!/bin/home

# Assigning the string content to variable STATIC
# $@ takes in the arguments(here its the ip address)

STATIC="static \n address $1 \n netmask 255.255.0.0 \n gateway 10.10.1.1 \n dns-nameservers 8.8.8.8 \n broadcast 10.10.255.255"




# Using sed to substitute static variable in place of  dhcp  in the file

sudo sed -i  "s/dhcp/${STATIC}/" /etc/network/interfaces


#then restart
r 


