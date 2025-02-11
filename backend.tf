terraform {
  backend "s3" {
    bucket = "terraform-bucket-swen614"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
