bash 'Get instance id' do
  user 'root'
  code <<-EOH
  EC2_Instance_Id = `wget -q -O - http://169.254.169.254/latest/meta-data/instance-id`
  echo $EC2_Instance_Id
EOH
end
