resource  "aws_subnet" "main" {
    vpc_id =var.vpc_id
    cidr_block = var.subnet_cidr

    tags = {
        Name = var.subnet_name
    }
}

resource "aws_route_table_association" "public_assoc" {
    subnet_id = aws_subnet.main.id
    route_table_id = var.route_table_id
}