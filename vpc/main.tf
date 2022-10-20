terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
      configuration_aliases = [aws.provider_2]
    
    }
  }
}
# Cria a VPC de kuber
resource "aws_vpc" "vpc_kuber" {
  cidr_block       = "${var.vpc_kuber_cidr}"
  tags = {
    Name ="${var.vpc_name}"
  }
}
