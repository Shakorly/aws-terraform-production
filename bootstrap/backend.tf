terraform {
  backend "s3" {
    bucket       = "aws-mysql-production-tfstate-934654685251-eu-west-2"
    key          = "bootstrap/terraform.tfstate"
    region       = "eu-west-2"
    encrypt      = true
    use_lockfile = true
  }
}
