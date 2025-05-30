provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "example" {
  ami           = "ami-0f58b397bc5c1f2e8"  
  instance_type = "t2.micro"
  key_name      = "terr"
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install apache2 -y
              echo "<h1>Hello from Terraform EC2 which is connected with ssh agent</h1>" | sudo tee /var/www/html/index.html
              sudo systemctl enable apache2
              sudo systemctl start apache2
            EOF

          
              
           

  tags = {
    Name = "example-instance"
  }
}

