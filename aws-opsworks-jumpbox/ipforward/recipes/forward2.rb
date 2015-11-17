execute 'Enable Post Routing' do
action :run
command 'sudo iptables -t nat -A POSTROUTING -o eth0 -s 10.29.2.0/24 -j MASQUERADE'
end