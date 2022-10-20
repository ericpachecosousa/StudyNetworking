output "kuber_vpc_subnet_1_range" {
  value = aws_subnet.kuber_vpc_subnet_1.cidr_block
}
output "kuber_vpc_subnet_1_az" {
  value = aws_subnet.kuber_vpc_subnet_1.availability_zone
}
output "kuber_vpc_subnet_1_id" {
  value = aws_subnet.kuber_vpc_subnet_1.id
}
output "kuber_vpc_subnet_2_range" {
  value = aws_subnet.kuber_vpc_subnet_2.cidr_block
}
output "kuber_vpc_subnet_2_az" {
  value = aws_subnet.kuber_vpc_subnet_2.availability_zone
}
output "kuber_vpc_subnet_2_id" {
  value = aws_subnet.kuber_vpc_subnet_2.id
}
output "kuber_vpc_subnet_3_range" {
  value = aws_subnet.kuber_vpc_subnet_3.cidr_block
}
output "kuber_vpc_subnet_3_az" {
  value = aws_subnet.kuber_vpc_subnet_3.availability_zone
}
output "kuber_vpc_subnet_3_id" {
  value = aws_subnet.kuber_vpc_subnet_3.id
}
# output "kuber_vpc_subnet_4_range" {
#   value = aws_subnet.kuber_vpc_subnet_4.cidr_block
# }
# output "kuber_vpc_subnet_4_az" {
#   value = aws_subnet.kuber_vpc_subnet_4.availability_zone
# }
# output "kuber_vpc_subnet_4_id" {
#   value = aws_subnet.kuber_vpc_subnet_4.id
# }
# output "kuber_vpc_subnet_5_range" {
#   value = aws_subnet.kuber_vpc_subnet_5.cidr_block
# }
# output "kuber_vpc_subnet_5_az" {
#   value = aws_subnet.kuber_vpc_subnet_5.availability_zone
# }
# output "kuber_vpc_subnet_5_id" {
#   value = aws_subnet.kuber_vpc_subnet_5.id
# }
# output "kuber_vpc_subnet_6_range" {
#   value = aws_subnet.kuber_vpc_subnet_6.cidr_block
# }
# output "kuber_vpc_subnet_6_az" {
#   value = aws_subnet.kuber_vpc_subnet_6.availability_zone
# }
# output "kuber_vpc_subnet_6_id" {
#   value = aws_subnet.kuber_vpc_subnet_6.id
# }

output "kuber_vpc_tgw_subnet_id_1" {
  value = aws_subnet.kuber_vpc_tgw_subnet_1.id 
}
output "kuber_vpc_tgw_subnet_id_2" {
  value = aws_subnet.kuber_vpc_tgw_subnet_2.id 
}
output "kuber_vpc_tgw_subnet_id_3" {
  value = aws_subnet.kuber_vpc_tgw_subnet_3.id 
}