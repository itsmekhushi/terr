provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0026e3c171092945f" preferred AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "JenkinsTerraformEC2"
  }
}

