$script = <<-SCRIPT
echo 'Installing Python for Ansible'
sudo apt-get -y install python python-apt-doc python3-apt-dbg python3-apt python-apt-common python-setuptools python-pip
SCRIPT

# -*- mode: ruby -*-
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/disco64"

  config.vm.network :private_network, ip: "192.168.111.222"

  config.vm.provision "shell", inline: $script

  config.vm.synced_folder ".", "/opt/app"
end
