backend "s3" {
    bucket = "remote-state-via"
    key = "multi-account"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
}

provider "aws" {
    region = "us-east-1"
    alias = "dev"
    profile = "dev"
}

provider "aws" {
    region = "us-east-1"
    alias = "prod"
    profile = "prod"
}