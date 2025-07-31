resource "aws_instance" "name" {
    ami = "ami-0cbbe2c6a1bb2ad63"
    instance_type = "t2.micro"
  
}
resource "aws_s3_bucket" "name" {
    bucket = "thesimon.in"
  
}


#used this (terraform plan --target=aws_instance.name) for specific resource targeting