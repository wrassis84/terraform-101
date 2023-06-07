output "instance_id" {
description = "ID of the EC2 instance"
value       = aws_instance.server.id
}
output "instance_public_ip" {
description = "Public IP address of the EC2 instance"
value       = aws_instance.server.public_ip
}
output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.server.id
}

output "subnet_id" {
  description = "ID of the VPC subnet"
  value       = aws_subnet.server.id
}
