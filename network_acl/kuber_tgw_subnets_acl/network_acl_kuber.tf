terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
      configuration_aliases = [aws.provider_2]
    
    }
  }
}
#Configura a Network ACL para as subnetes do Transit Gateway da rede kuber
resource "aws_network_acl" "kuber_vpc_tgw_subnets_acl" {
  vpc_id = "${var.kuber_vpc_id}"

  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "kuber_vpc_tgw_subnet_main_acl"
  }
}

resource "aws_network_acl_association" "kuber_vpc_tgw_subnet_1_acl_assosciation" {
  network_acl_id = aws_network_acl.kuber_vpc_tgw_subnets_acl.id
  subnet_id = "${var.kuber_vpc_tgw_subnet_1}"
}

resource "aws_network_acl_association" "kuber_vpc_tgw_subnet_2_acl_assosciation" {
  network_acl_id = aws_network_acl.kuber_vpc_tgw_subnets_acl.id
  subnet_id = "${var.kuber_vpc_tgw_subnet_2}"
}

resource "aws_network_acl_association" "kuber_vpc_tgw_subnet_3_acl_assosciation" {
  network_acl_id = aws_network_acl.kuber_vpc_tgw_subnets_acl.id
  subnet_id = "${var.kuber_vpc_tgw_subnet_3}"
}