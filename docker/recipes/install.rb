execute 'Install docker' do
action :run
command 'sudo apt-get -y install docker.io'
end
