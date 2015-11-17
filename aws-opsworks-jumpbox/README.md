Introduction
============
This repo includes recipies for Amaazon OpsWorks to start create a jumpbox with users from Amazon IAM and ssh public-keys put into the accounts (by the users them selves)
 
 To get started make sure that you have
 - Created a VPC in which this jump box will work, this jump box is meant for public network (see this http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Scenario2.html)
 - That VPC has access to shared tech git respositories (for EU-WEST there is peering with shared tech master, and proper routes setup, proper security group permissions are there, and your VPC includes route53 definitions so dns names translate to internal ips)
 - There exists a secirity group which allows SSH from your IP, see examples of CIDR blocks in security groups for EU-WEST-1 test. You will need to add your CIDR for home or other office locations (i.e Krakow, Gurgaon will have CIDR blocks different from Stockholm)

After this you can create your own stack and 

Note: Thhis repo was orginially forked from https://github.com/amazonwebservices/opsworks-cloudwatch-logs-cookbooks


