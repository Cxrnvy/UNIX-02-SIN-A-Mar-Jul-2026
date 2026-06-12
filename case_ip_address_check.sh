#!/bin/bash
IP_ADDRESS="${1}"
case ${IP_ADDRESS} in
 192.168.*)
 echo "Network is 192.168.x.x"
 ;;
 10.0.*)
 echo "Network is 10.0.x.x"
 ;;
 *)
 echo "Could not identify the network"
 ;;
esac

#192.168.1.1 
#192.168.hola
#10.0.hola
#8.8.8.8