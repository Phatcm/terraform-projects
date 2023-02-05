#terraform syntax to authenticate aws environment
#to save state file to s3 bucket

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-1"
  profile = "phatcao-dev"
}
# Store terraform file to s3
terraform {
  backend "s3" {
    bucket = "phatcao-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "ap-northeast-1"
    profile = "phatcao-dev"
  }
}
