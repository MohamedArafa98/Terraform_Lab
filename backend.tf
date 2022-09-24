terraform {
  backend "s3" {
    bucket         = "tfstate-lab"
    key            = "tfstate-file"
    region         = "us-east-1"
    dynamodb_table = "test"
  }
}