
terraform {
  backend "s3" {
    bucket         = "tombayyaa"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true
    
  }
}