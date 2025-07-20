
atleast 2 AZ resources be there

az-1 public subnet az-2 public subnet
az-1 10.0.1.0/24 
az-2 10.0.2.0/24

az-1 private subnet az-2 private subnet
az-1 10.0.11.0/24 
az-2 10.0.12.0/24

az-1 database subnet az-2 database subnet
az-1 10.0.21.0/24 
az-2 10.0.22.0/24

NAT gateway 

1. create VPC
2. create igw and attach
3. create all subnets
4. create route tables
5. create routes
6. associate with subnets
7. create eip
8. create nat
9. add nat gateway route in private and database subnets
10. routes

common tags
Project = roboshop
Terraform = true
Environment = dev
Name = something

And used roboshop-ansible.sh script file to run the playbook and used tail -f cloud-init-output.log  which is in /var/log directory to see the playbook
