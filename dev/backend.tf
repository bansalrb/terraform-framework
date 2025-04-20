terraform {
  backend "s3" {
    bucket  = "tfstatedevrohan"
    key     = "dev/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}