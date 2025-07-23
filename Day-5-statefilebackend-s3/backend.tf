terraform {
  backend "s3" {
    bucket = "tombayya"
    key    = "terraform.statefile"
    region = "us-east-1"
  }
}