terraform {
  backend "s3" {
    bucket = "bitun1"
    region = "us-east-1"
    key = "jenkins-server/terraform.tfstate"
  }
}