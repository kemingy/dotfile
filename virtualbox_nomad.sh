#!/bin/bash
set -euo pipefail

VAGRANT_VERSION="2.2.4"

# virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb https://download.oracle.com/virtualbox/debian xenial contrib"
sudo apt-get update
sudo apt-get install virtualbox-6.0

# vagrant
wget -O ${HOME}/Downloads/vagrant_${VAGRANT_VERSION}_x86_64.deb "https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}_x86_64.deb"
sudo dpkg -i ${HOME}/Downloads/vagrant_${VAGRANT_VERSION}_x86_64.deb

# nomad
mkdir -p ${HOME}/Code/Nomad
wget -O ${HOME}/Code/Nomad/Vagrantfile "https://raw.githubusercontent.com/hashicorp/nomad/master/demo/vagrant/Vagrantfile"
cd ${HOME}/Code/Nomad && vagrant up
