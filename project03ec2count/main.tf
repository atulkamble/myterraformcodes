provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  count         = 10  
  ami           = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0afef1455b0b52215"  
}
