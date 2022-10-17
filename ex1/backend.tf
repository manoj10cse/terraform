terraform {
  backend "s3" {
    bucket = "b50-tf-state-bucket-santhosh"
    key    = "demoo/env/terrafom.tfstate"
    region = "us-east-1"
   }
}