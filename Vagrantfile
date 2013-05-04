# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.hostname = "local.dev"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  # config.vm.network :hostonly, "192.168.33.10"

  # Assign this VM to a bridged network, allowing you to connect directly to a
  # network using the host's network device. This makes the VM appear as another
  # physical device on your network.
  # config.vm.network :bridged

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  config.vm.network :forwarded_port, guest: 80, host: 8080 # http
  config.vm.network :forwarded_port, guest: 10081, host: 10081 # admin interface http
  config.vm.network :forwarded_port, guest: 10082, host: 10082 # admin interface https
  config.vm.network :forwarded_port, guest: 3306, host: 3306 # mysql

  config.vm.synced_folder "~/Public/", "/var/www/", :owner => 'www-data', :group => 'www-data'

  # Fix for ubuntu 12.10
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, '--natdnsproxy1', 'on']
    v.customize ["modifyvm", :id, '--natdnshostresolver1', 'on']
    v.customize ["modifyvm", :id, '--vram', 12]
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/public_html", "1"]
  end

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/"
    puppet.manifest_file  = "base.pp"
    puppet.module_path    = "puppet/modules/"
    puppet.options        = "--verbose --debug"
    puppet.facter         = {
      "root_emailaddress"  => "johndoe@example.com",
      "relayhost"          => "smtp.example.com",
      "relayhost_username" => "john@example.com",
      "relayhost_password" => "mysecretpassword1019*&^&^",
      "timezone"           => "Europe/Amsterdam"
    }
  end
end
