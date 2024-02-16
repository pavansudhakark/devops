#!/bin/bash
n=$1
for i in `seq $n`
  do  
     echo " creating tomcat-server$i"
     docker run -it -d --name tomcat-server$i pavansudhakark/new1 /bin/bash
     sleep 1
  done
  docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} $(docker ps -q) > IPs.txt
