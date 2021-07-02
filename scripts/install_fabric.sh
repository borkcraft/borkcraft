#!/bin/bash

rm -rf .fabric-installer/
rm -rf fabric-installer-launch.jar
rm -rf vanilla.jar
rm -rf server.jar 
rm -rf fabric-server-launcher.properties

mc_version="1.17"
fabric_version="0.7.4"
installer="fabric-installer.jar"
url="https://maven.fabricmc.net/net/fabricmc/fabric-installer/$fabric_version/fabric-installer-$fabric_version.jar"
echo $url

wget -O $installer $url
java -jar $installer server -mcversion $mc_version -downloadMinecraft
rm -rf $installer

mv server.jar vanilla.jar

mv fabric-server-launch.jar server.jar

echo "serverJar=vanilla.jar" > fabric-server-launcher.properties
 