$script = <<-SCRIPT
echo 'Installing Python for Ansible'
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install python python-apt-doc python3-apt-dbg python3-apt python-apt-common python-setuptools python-pip
cat /home/vagrant/.ssh/me.pub >> /home/vagrant/.ssh/authorized_keys
cat /home/vagrant/.ssh/me.pub >> /root/.ssh/authorized_keys
echo 'READY!'
SCRIPT

# -*- mode: ruby -*-
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/disco64"

  config.ssh.insert_key = false

  config.vm.network :private_network, ip: "192.168.111.222"

  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/me.pub"

  config.vm.provision "shell", inline: $script

  config.vm.synced_folder ".", "/opt/app"
end
