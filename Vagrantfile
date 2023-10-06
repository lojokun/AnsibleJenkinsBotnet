Vagrant.configure("2") do |config|
    
    # => Master
	config.vm.define "master" do |master|
		master.vm.box = "generic/alpine38"
	    master.vm.hostname = "master"
		master.vm.network "private_network", ip: "10.0.0.2", netmask: "255.255.255.0", auto_config: true
        master.vm.synced_folder "./ansible/", "~/ansible"
        master.vm.provision "shell", path: "./scripts/master_init.sh"
	end

	# => Target1
	config.vm.define "target1" do |target1|
		target1.vm.box = "generic/alpine38"
		target1.vm.hostname = "target1"
		target1.vm.network "private_network", ip: "10.0.0.5", netmask: "255.255.255.0", auto_config: true
        target1.vm.provision "file", source: "./ansible/keys/target1/target1.pub", destination: "/tmp/target1.pub"
		target1.vm.provision "shell", path: "./scripts/target_init.sh"
	end

    # => Target2
	config.vm.define "target2" do |target2|
		target2.vm.box = "generic/alpine38"
		target2.vm.hostname = "target2"
		target2.vm.network "private_network", ip: "10.0.0.6", netmask: "255.255.255.0", auto_config: true
        target2.vm.provision "file", source: "./ansible/keys/target2/target2.pub", destination: "/tmp/target2.pub"
		target2.vm.provision "shell", path: "./scripts/target_init.sh"
	end

    # => Target3
	config.vm.define "target3" do |target3|
		target3.vm.box = "generic/alpine38"
		target3.vm.hostname = "target3"
		target3.vm.network "private_network", ip: "10.0.0.7", netmask: "255.255.255.0", auto_config: true
        target3.vm.provision "file", source: "./ansible/keys/target3/target3.pub", destination: "/tmp/target3.pub"
		target3.vm.provision "shell", path: "./scripts/target_init.sh"
	end

  end