module "test" {
  source = "github.com/vishnuthatiparthi/ec2-module.git?ref=main"

  name           = "dev"
  instance_type  = "t2.micro"
  ami            = "ami-08a6efd148b1f7504"
  subnet_id      = "subnet-03c652a3785e14d52"

  instance_tags = {
    Name = "dev"
  }
}