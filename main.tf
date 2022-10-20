# Cria o Gateway Transit para intercomunicação entre as VPCs
module "gateway_transit" {
  providers = {
    aws.provider_2 = aws.provider_2
  }
  source              = "./gateway_transit"
  kuber_attachment_id = module.gateway_transit_attachments_kuber.kuber_attachment_id
}

# Obtém o ID do Gateway Transit
module "data" {
  providers = {
    aws.provider_2 = aws.provider_2
  }
  source  = "./data"
  tgwt_id = module.gateway_transit.tgwt_id
}

# Cria as VPCs kuber 
module "vpc" {
  providers = {
    aws.provider_2 = aws.provider_2
  }
  source         = "./vpc"
  vpc_kuber_cidr = var.vpc_kuber_cidr
  vpc_name       = var.vpc_name
}

# Cria as Subnets da VPC kuber
module "subnet_kuber" {
  providers = {
    aws.provider_2 = aws.provider_2
  }
  source                 = "./subnet/kuber"
  kuber_vpc_id           = module.vpc.vpc_id
  kuber_vpc_subnet_1     = var.kuber_vpc_subnet_1
  kuber_vpc_subnet_2     = var.kuber_vpc_subnet_2
  kuber_vpc_subnet_3     = var.kuber_vpc_subnet_3
  kuber_vpc_subnet_4     = var.kuber_vpc_subnet_4
  kuber_vpc_subnet_5     = var.kuber_vpc_subnet_5
  kuber_vpc_subnet_6     = var.kuber_vpc_subnet_6
  kuber_vpc_tgw_subnet_1 = var.kuber_vpc_tgw_subnet_1
  kuber_vpc_tgw_subnet_2 = var.kuber_vpc_tgw_subnet_2
  kuber_vpc_tgw_subnet_3 = var.kuber_vpc_tgw_subnet_3

  depends_on = [
    module.vpc
  ]
}

# Attacha a VPC kuber no Transit Gateway passando os ranges das subnets separadas para o Transit Gateway na VPC
module "gateway_transit_attachments_kuber" {
  providers = {
    aws.provider_2 = aws.provider_2
  }
  source                 = "./gateway_transit_attachments/vpc_kuber_attach"
  kuber_vpc_tgw_subnet_1 = module.subnet_kuber.kuber_vpc_tgw_subnet_id_1
  kuber_vpc_tgw_subnet_2 = module.subnet_kuber.kuber_vpc_tgw_subnet_id_2
  kuber_vpc_tgw_subnet_3 = module.subnet_kuber.kuber_vpc_tgw_subnet_id_3
  tgwt_id                = module.data.tgwt_id
  kuber_vpc_id           = module.vpc.vpc_id
}

# Configura a tabela de rotas default da rede kuber
module "route_table_kuber_default" {
  providers = {
    aws.provider_2 = aws.provider_2
  }
  source                     = "./route_table/kuber_default_rt"
  vpc_default_route_table_id = module.vpc.vpc_default_route_table_id
  internet_traffic_range     = var.internet_traffic_range
  tgwt_id                    = module.data.tgwt_id
}

# Cria as ACLs para as subnets do TGWT
module "kuber_network_acl_for_tgwt_subnets" {
  providers = {
    aws.provider_2 = aws.provider_2
  }
  source                 = "./network_acl/kuber_tgw_subnets_acl"
  kuber_vpc_id           = module.vpc.vpc_id
  kuber_vpc_tgw_subnet_1 = module.subnet_kuber.kuber_vpc_tgw_subnet_id_1
  kuber_vpc_tgw_subnet_2 = module.subnet_kuber.kuber_vpc_tgw_subnet_id_2
  kuber_vpc_tgw_subnet_3 = module.subnet_kuber.kuber_vpc_tgw_subnet_id_3
}

