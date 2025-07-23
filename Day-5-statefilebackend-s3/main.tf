resource "aws_instance" "name" {
  ami           = "ami-0cbbe2c6a1bb2ad63"
  instance_type = "t2.micro"

  tags = {
    Name = "backendfile"
  }
}

resource "aws_vpc" "name2" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "viva-vpc"
  }
}