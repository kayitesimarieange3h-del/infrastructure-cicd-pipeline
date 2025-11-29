
terraform {
  backend "s3" {
    bucket       = "w7-kam-terr-buck" # Replace with your bucket name
    key          = "uat/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = false
  }
}