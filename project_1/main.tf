provider "aws" {
  region = "us-east-1"
#   if you do not configure usig aws cli
#   access_key = ""
#   secret_key = ""
}


resource "aws_instance" "my_second_terraform" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld2"
  }
}