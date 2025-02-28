resource "aws_instance" "docker" {
  ami                    = "ami-09c813fb71547fc4f" # This is our devops-practice AMI ID
  vpc_security_group_ids = [aws_security_group.allow_all_docker.id]
  instance_type          = "t3.micro"

  #20 GB is not enough
  root_block_device {
    volume_size = 50 # set root volume to 50 GB
    volume_type = "gp3" #use gp3 for better performance (OPTIONAL)
  }

  user_data = file("docker.sh") # this is not working so commented

  tags = {
    Name = "Docker"
  }
}

resource "aws_security_group" "allow_all_docker" {
  name        = "allow_all_docker"
  description = "This Security group allow Inbound & Outbound SSH traffic"
  # Changing from 22 to 0 to allow traffic ALL in ingress rules section
  ingress {
    from_port   = 0  
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls_1"
  }
}