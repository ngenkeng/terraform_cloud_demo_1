#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo service httpd start
sudo  systemctl enable httpd
#echo "<h1>Welcome to StacksSimplify ! AWS Infra created using Terraform in us-east-1 Region"
echo "<h1>Welcome to StacksSimplify ! AWS Infra created using Terraform in us-east-1 Region"