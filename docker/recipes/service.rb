execute 'Start docker' do
action :run
command 'sudo service docker start'
end
