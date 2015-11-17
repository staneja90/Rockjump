bash 'Get instance id' do
  user 'root'
  code <<-EOH
  EC2_Instance_Id=`wget -q -O - http://169.254.169.254/latest/meta-data/instance-id`
  echo $EC2_Instance_Id
  aws ec2 create-route --region eu-west-1 --route-table-id rtb-7bc7601e --destination-cidr-block 0.0.0.0/0 --instance-id $EC2_Instance_Id
  aws ec2 --region eu-west-1 modify-instance-attribute --instance-id $EC2_Instance_Id --source-dest-check ' { "Value" : false } '
EOH
end

#execute 'Create Route Entries' do
#action :run
#command 'aws ec2 create-route --route-table-id rtb-7bc7601e --destination-cidr-block 0.0.0.0/0 --instance-id $EC2_Instance_Id'
#end