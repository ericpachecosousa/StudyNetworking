terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
      configuration_aliases = [aws.provider_2]
    
    }
  }
}
# Attacha a VPC kuber no Gateway de Transito, informando uma subnet de cada
# zona de disponibilidade da região da VPC, isso é necessário para que acha roteameno de tráfego interno.
resource "aws_ec2_transit_gateway_vpc_attachment" "kuber_vpc_tgw_attach" {
  subnet_ids         = ["${var.kuber_vpc_tgw_subnet_1}","${var.kuber_vpc_tgw_subnet_2}","${var.kuber_vpc_tgw_subnet_3}"]
  transit_gateway_id = "${var.tgwt_id}"
  vpc_id             = "${var.kuber_vpc_id}"
  
  tags = {
    Name = "transit_gwt_kuber_vpc_attachment"
  }
}