# Simple Vagrantfile to create a vagrant box with docker installed and my dockerfiles available
# Marco Ramos -  @mramos29
#
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "gotham"
  config.vm.provision :shell, path: "bootstrap.sh"
  
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
   
  config.vm.synced_folder "~/vagrant/sync", "/tmp/sync"
  
  config.vm.network :forwarded_port, guest: 80, host: 8080
end
