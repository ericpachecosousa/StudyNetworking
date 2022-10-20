terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
      configuration_aliases = [aws.provider_2]
    
    }
  }
}
# Configura a tabela de rota default da rede kuber para enviar todo tráfego das redes para o transit gateway
resource "aws_default_route_table" "kuber_default_rt_rt" {
  default_route_table_id = "${var.vpc_default_route_table_id}"
  
  route {
    cidr_block = "${var.internet_traffic_range}"
    transit_gateway_id = "${var.tgwt_id}"
  }

  tags = {
    Name = "kuber-default-route-table"
  }
}
