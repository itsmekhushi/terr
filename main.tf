provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0026e3c171092945f" 
  instance_type = "t2.micro"

  tags = {
    Name = "JenkinsTerraformEC2"
  }

user_data = <<-EOF
              #!/bin/bash
              echo "it works on ssh node agant "> /home/ec2-user/agent_info.txt
              EOF
}

