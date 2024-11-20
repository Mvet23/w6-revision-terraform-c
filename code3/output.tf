output "my-public_ip" {
  value = aws_lightsail_instance.L11.public_ip_address
}
output "my-private_ip" {
  value = aws_lightsail_instance.L11.private_ip_address
}
output "my-username" {
  value = aws_lightsail_instance.L11.username
  }