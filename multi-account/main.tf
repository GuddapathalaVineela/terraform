resource "aws_vpc" "dev" {
    provider = aws.dev
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_hostnames = true

    tags = {
        Name = "roboshop-dev"
    }
}

resource "aws_vpc" "prod" {
    provider = aws.prod
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_hostnames = true

    tags = {
        Name = "roboshop-prod"
    }
}