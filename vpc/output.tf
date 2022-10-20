output "vpc_id" {
  value = aws_vpc.vpc_kuber.id
}
output "vpc_range" {
  value = aws_vpc.vpc_kuber.cidr_block
}
output "vpc_default_route_table_id" {
  value = aws_vpc.vpc_kuber.default_route_table_id
}
