terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
      configuration_aliases = [aws.provider_2]
    
    }
  }
}
#Configura subnets da workload para a VPC kuber

resource "aws_subnet" "kuber_vpc_subnet_1" {
  vpc_id     = "${var.kuber_vpc_id}"
  cidr_block = "${var.kuber_vpc_subnet_1["range"]}"
  availability_zone = "${var.kuber_vpc_subnet_1["az"]}"

  tags = {
    Name = "${var.kuber_vpc_subnet_1["name"]}"
  }
}

resource "aws_subnet" "kuber_vpc_subnet_2" {
  vpc_id     = "${var.kuber_vpc_id}"
  cidr_block = "${var.kuber_vpc_subnet_2["range"]}"
  availability_zone = "${var.kuber_vpc_subnet_2["az"]}"

  tags = {
    Name = "${var.kuber_vpc_subnet_2["name"]}"
  }
}

resource "aws_subnet" "kuber_vpc_subnet_3" {
  vpc_id     = "${var.kuber_vpc_id}"
  cidr_block = "${var.kuber_vpc_subnet_3["range"]}"
  availability_zone = "${var.kuber_vpc_subnet_3["az"]}"

  tags = {
    Name = "${var.kuber_vpc_subnet_3["name"]}"
  }
 }

#Configura as subnets que serão attachadas ao transit gateway para roteamento em todas as zonas de disponibilidade da região escolhida.
resource "aws_subnet" "kuber_vpc_tgw_subnet_1" {
  vpc_id     = "${var.kuber_vpc_id}"
  cidr_block = "${var.kuber_vpc_tgw_subnet_1["range"]}"
  availability_zone = "${var.kuber_vpc_tgw_subnet_1["az"]}"

  tags = {
    Name = "${var.kuber_vpc_tgw_subnet_1["name"]}"
  }
}


resource "aws_subnet" "kuber_vpc_tgw_subnet_2" {
  vpc_id     = "${var.kuber_vpc_id}"
  cidr_block = "${var.kuber_vpc_tgw_subnet_2["range"]}"
  availability_zone = "${var.kuber_vpc_tgw_subnet_2["az"]}"

  tags = {
    Name = "${var.kuber_vpc_tgw_subnet_2["name"]}"
  }
}

resource "aws_subnet" "kuber_vpc_tgw_subnet_3" {
  vpc_id     = "${var.kuber_vpc_id}"
  cidr_block = "${var.kuber_vpc_tgw_subnet_3["range"]}"
  availability_zone = "${var.kuber_vpc_tgw_subnet_3["az"]}"

  tags = {
    Name = "${var.kuber_vpc_tgw_subnet_3["name"]}"
  }
}