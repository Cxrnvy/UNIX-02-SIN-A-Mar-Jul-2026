#!/bin/bash
#I save the first argument passed to the script into this variable
IP_ADDRESS="${1}"
#I start a case statement to check the IP address against different patterns
case ${IP_ADDRESS} in
 #if the IP address starts with 192.168. followed by anything else
 192.168.*)
 #I print a message saying it belongs to this specific local network
 echo "Network is 192.168.x.x"
 #I use double semicolons to indicate the end of this specific case match
 ;;
 #if instead the IP starts with 10.0. followed by anything
 10.0.*)
 #I print that it belongs to the 10.0 network
 echo "Network is 10.0.x.x"
 #again I close this specific case match so it stops evaluating
 ;;
 #the asterisk acts as a catch-all default for any IP that did not match the ones above
 *)
 #I print a fallback message saying the network is unknown
 echo "Could not identify the network"
 #I close this final case match
 ;;
#finally I close the entire case block by writing the word case backwards
esac

#192.168.1.1 
#192.168.hola
#10.0.hola
#8.8.8.8