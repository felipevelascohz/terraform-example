terraform {
  backend "s3" {
    bucket = "felipevelascohz-tfstate"
    key    = "security-groups/security-groups.tfstate"
    region = "us-east-1"
  }
}