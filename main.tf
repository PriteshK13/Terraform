#VPC
resource "aws_vpc" "main_vpc" {
    cidr_block = "10.0.0.0/16"
}
#Subnet
resource "aws_subnet" "main_subnet" {
    vpc_id = aws_vpc.main_vpc.vpc_id
    cidr_block ="10.0.1.0/24"
}
#EC2 instance
resource "aws_instance" "web" {
    ami = "ami-05d2d839d4f73aafb"
    #Ubuntu mumbai region
    instance_type = "t2.micro"

    subnet_id = "aws_subnet.main_subnet.vpc_id
    tags {
        Name = "Terraform-Instance"
    }

}