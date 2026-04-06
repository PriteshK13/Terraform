resource "aws_subnet" "private" {
    vpc_id = var.vpc_id
    cidr_block = var.private_subnet_cidr

    tags = {
        Name = var.private_subnet_name
    }
}

resource "aws_route_table_association" "private_assoc" {
    subnet_id = aws_subnet.private.id
    route_table_id = aws_subnet.private.id
    route_table_id = var.private_route_table_id
}