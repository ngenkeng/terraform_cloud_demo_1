resource "aws_iam_user" "myiamusers" {
  for_each = toset(["Jil", "Kelly", "Adrian", "Iva", "Jaiden"])
  name     = each.key
}
 /*resource "aws_security_group" "vpc-web" {
 ingress {
     description = "allow port 80"
     from_port = 80
     t0_port = 80
     protoc0l = "tcp"
     cidr_block = ["0.0.0.0/0"]
 }
 ingress {
     description = "allow ssh"
     from_port = "22"
     to_port = "22"
     protocol = "tcp"
     cidr_block = ["0.0.0.0/0"]
 }*/