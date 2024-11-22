output "my-public_ip" {
  value = aws_lightsail_instance.serverw6.public_ip_address
}
output "my-private_ip" {
  value = aws_lightsail_instance.serverw6.private_ip_address
}
output "my-username" {
  value = aws_lightsail_instance.serverw6.username
  }