execute 'Enable ipv4 forwarding' do
action :run
command 'echo 1 > /proc/sys/net/ipv4/ip_forward'
end

