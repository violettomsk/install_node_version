#!/bin/bash

node_version=$(nodejs --version)

echo "Current node version is : " $node_version

node_ver_number=(${node_version//./ })

if [ $node_ver_number = v$1 ]
then
	echo "Dont need to install"
	exit 1
fi

sudo apt remove --purge -y nodejs

sudo curl -sL https://deb.nodesource.com/setup_$1.x | sudo -E bash -

sudo apt-get install -y nodejs