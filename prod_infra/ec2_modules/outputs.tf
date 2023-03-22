output "ec2_ip_address" {
  value = aws_instance.web_server.public_ip
  //value1 = aws_instance.web_server.vpc_security_group_ids
}