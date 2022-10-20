terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
      configuration_aliases = [aws.provider_2]
    
    }
  }
}
# Configura um Gateway de Transito para intercomunicar todas as VPCs
resource "aws_ec2_transit_gateway" "tgwt" {
  description = var.transitgatewaydescription

       
      tags = {
        Name = "transit-gateway"
       }
  
      timeouts {
        create = "60m"
        delete = "2h"
      }
}

//Está vinculando o transit ao attachment 
resource "aws_ec2_transit_gateway_route" "tgwt_route0" {
  destination_cidr_block         = "0.0.0.0/0"
  transit_gateway_attachment_id  = "${var.kuber_attachment_id}"
  transit_gateway_route_table_id = aws_ec2_transit_gateway.tgwt.association_default_route_table_id
}
