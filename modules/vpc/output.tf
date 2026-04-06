output "vpc_id" {
    description ="ID of the vpc"
    value = aws_vpc.main.id
}

output "route_table_id" {
    value =aws_route_table.public_rt.id
}