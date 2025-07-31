
terraform {
  backend "s3" {
    bucket         = "tombayyaa"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true
    
  }
}