Vagrant.configure("2") do |config|
  config.vm.synced_folder ".", "/home/vagrant/dots/"

  config.vm.define "ubuntu_16_04" do |ubuntu_16_04|
    ubuntu_16_04.vm.box = "ubuntu/xenial64"
  end

  config.vm.define "ubuntu_18_04" do |ubuntu_18_04|
    ubuntu_18_04.vm.box = "ubuntu/bionic64"
  end

  config.vm.define "ubuntu_20_04" do |ubuntu_20_04|
    ubuntu_20_04.vm.box = "ubuntu/focal64"
  end

  config.vm.define "windows_10_s" do |win|
    win.vm.box = "senglin/win-10-enterprise-vs2015community"
  end

  config.vm.define "windows_10_m" do |win|
    win.vm.box = "Microsoft/EdgeOnWindows10"
  end

  config.vm.define "windows_10_g" do |win|
    win.vm.box = "gusztavvargadr/windows-10"
  end
end

