terraform {
  backend "s3" {
    bucket = "bitun1"
    region = "us-east-1"
    key = "eks-cluster/terraform.tfstate"
  }
}