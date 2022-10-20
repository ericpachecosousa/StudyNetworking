terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
      configuration_aliases = [aws.provider_2]
    
    }
  }
}
# Configura as rotas da para rede kuber via Transit Gateway
resource "aws_route" "kuber_rt_routes_to_kuber_vpc" {
  route_table_id            = "${var.kuber_vpc_internet_rt_id}"
  destination_cidr_block    = "${var.kuber_vpc_range}"
  transit_gateway_id        = "${var.tgwt_id}"


}

