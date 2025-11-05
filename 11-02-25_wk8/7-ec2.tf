resource "aws_instance" "web_server" {
  ami                         = "ami-09968b16214ef62ce"
  associate_public_ip_address = true
  instance_type               = "t3.micro"
  # key_name = 
  vpc_security_group_ids = [aws_security_group.ping.id, aws_security_group.web_server.id]
  subnet_id              = aws_subnet.public-eu-west-3a.id

  user_data = file("user_data.sh")

  tags = {
    Name = "web-server"
  }
}