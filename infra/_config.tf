terraform {
  backend "s3" {
    bucket = "nguyenlc1-sre-us-east-2"
    key    = "terraform/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = local.tags
  }
}
