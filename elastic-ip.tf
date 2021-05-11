resource "aws_eip" "nmy-eip" {
  instance   = aws_instance.my-ec2-vm[0].id
  vpc        = true
  depends_on = [aws_internet_gateway.vpc-dev-igw]
}