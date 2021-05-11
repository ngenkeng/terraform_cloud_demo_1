resource "aws_instance" "my-ec2-vm" {
  ami                    = "ami-077e31c4939f6a2f3"
  instance_type          = "t2.micro"
  key_name               = "Terraform_keypair"
  subnet_id              = aws_subnet.vpc-dev-public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
  user_data              = file("apache-install.sh")
  count                  = 5 
  tags = {
    # "Name" = "web"
    "Name" = "Web-${count.index}"
  }
  /* lifecycle {
     create_before_destroy = true
    
  }
    lifecycle {
      prevent_destroy = false
    
  }*/
   lifecycle {
     ignore_changes = [
       tags,
     ]
    
  }
}
  
