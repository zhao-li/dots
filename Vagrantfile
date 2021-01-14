Vagrant.configure("2") do |config|
  config.vm.synced_folder ".", "/home/vagrant/dots/"

  config.vm.define "ubuntu_16_04" do |ubuntu_16_04|
    ubuntu_16_04.vm.box = "ubuntu/xenial64"
  end
end

