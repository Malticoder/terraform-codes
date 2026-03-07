resource "aws_security_group" "server_sg" {
  name        = "server-security-group"
  description = "Allow HTTP and SSH"

  ingress {
    description = "HTTP Access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web_server" {

  ami           = "ami-0f3caa1cf4417e51b"

  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.server_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Welcome to Apache Server</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "Apache-Server"
  }
}

