VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider 'virtualbox' do |v|
    v.memory = 2048
    v.cpus = 2
    v.name = "base-box-blog"
  end

  config.vm.box = 'ubuntu/trusty64'
  config.vm.provision "docker"
  config.vm.synced_folder '.', '/vagrant', type: 'nfs', mount_options: ['nolock,vers=3,udp,noatime,actimeo=1']
  config.vm.network 'forwarded_port', guest: 3000, host: 3000, auto_correct: true
  config.vm.network :private_network, ip: '172.17.8.100'
end