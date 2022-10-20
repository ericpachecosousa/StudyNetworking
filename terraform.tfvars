
region = {
  "region_1" = "sa-east-1",
  "region_2" = "us-east-1"
}
internet_traffic_range = "0.0.0.0/0"     # range da internet. Não mudar
vpc_kuber_cidr         = "20.10.24.0/21" # range da vpc kuber. Utilizem um /22 ou maior

#Preencha as informações das subnetes sendo:
# AZ(availability zone), range(address range), name(subnetName)

## Informações das subnets da rede kuber
kuber_vpc_subnet_1 = {
  range = "20.10.24.0/24"
  az    = "us-east-1a"
  name  = "kuber-vpc-workload-subnet-01"
}
kuber_vpc_subnet_2 = {
  range = "20.10.25.0/24"
  az    = "us-east-1b"
  name  = "kuber-vpc-workload-subnet-02"
}
kuber_vpc_subnet_3 = {
  range = "20.10.26.0/24"
  az    = "us-east-1c"
  name  = "kuber-vpc-workload-subnet-03"
}
kuber_vpc_subnet_4 = {
  range = "20.10.27.0/24"
  az    = "us-east-1a"
  name  = "kuber-vpc-workload-subnet-04"
}
kuber_vpc_subnet_5 = {
  range = "20.10.28.0/24"
  az    = "us-east-1b"
  name  = "kuber-vpc-workload-subnet-05"
}
kuber_vpc_subnet_6 = {
  range = "20.10.29.0/24"
  az    = "us-east-1c"
  name  = "kuber-vpc-workload-subnet-06"
}

# Utilize ranges /28 para as redes abaixo kuber_vpc_tgw_subnet_1,kuber_vpc_tgw_subnet_2 e kuber_vpc_tgw_subnet_3
kuber_vpc_tgw_subnet_1 = {
  range = "20.10.31.0/28"
  az    = "us-east-1a"
  name  = "kuber-vpc-tgw-subnet-01"
}
kuber_vpc_tgw_subnet_2 = {
  range = "20.10.31.16/28"
  az    = "us-east-1b"
  name  = "kuber-vpc-tgw-subnet-02"
}
kuber_vpc_tgw_subnet_3 = {
  range = "20.10.31.32/28"
  az    = "us-east-1c"
  name  = "kuber-vpc-tgw-subnet-03"
}
