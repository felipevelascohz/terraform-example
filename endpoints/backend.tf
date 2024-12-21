terraform {
  backend "s3" {
    bucket = "felipevelascohz-tfstate"
    key    = "endpoints/endpoints.tfstate"
    region = "us-east-1"
  }
}