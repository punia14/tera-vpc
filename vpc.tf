resource "aws_vpc" "terra" {
  cidr_block = "100.164.0.0/16"
  tags = {
    Name = "${var.env}"
   }
}

output "vpc_id" {
  description = "The ID of the VPC"
  value = "${aws_vpc.terra.id}"
}