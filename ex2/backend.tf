terraform {
  backend "s3" {
    bucket = "b50-tf-statew-bucket"
    key    = "module/env/terrafom.tfstate"
    region = "us-east-1"
   }
}

provider "aws" {
    region = "us-east-1"
}