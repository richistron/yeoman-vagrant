Vagrant.configure("2") do |config|

  # vagrant box
  config.vm.box = "ubuntu/trusty32"

  # shared folder
  config.vm.synced_folder "./", "/vagrant", id: "vagrant-root"

  # VB config
  config.vm.provider "virtualbox" do |v|
    v.cpus = 2
    v.memory = 2048
  end  

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  # port foewarding
  config.vm.network :forwarded_port, host:8080, guest: 8080

  config.vm.provision :shell, :path => "scripts/apt-packages.sh"
  config.vm.provision :shell, path: "scripts/nvm.sh", args: '0.12.7', privileged: false
  config.vm.provision :shell, path: "scripts/node-dependencies.sh", privileged: false
  config.vm.provision :shell, :inline => "sudo apt-get -y autoremove"
end
