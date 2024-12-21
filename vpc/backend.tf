terraform {
  backend "s3" {
    bucket = "felipevelascohz-tfstate"
    key    = "vpc/vpc.tfstate"
    region = "us-east-1"
  }
}