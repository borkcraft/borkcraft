#!/bin/bash
mc_version="1.17"
fabric_version="0.7.4"
installer="fabric-installer.jar"
url="https://maven.fabricmc.net/net/fabricmc/fabric-installer/$fabric_version/fabric-installer-$fabric_version.jar"

wget -O $installer $url
java -jar $installer server -mcversion $mc_version -downloadMinecraft
rm -rf $installer
mv fabric-server-launch.jar fabric_server.jar 