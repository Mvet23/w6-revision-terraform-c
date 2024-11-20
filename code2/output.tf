
output "my-ip" {
  value = aws_lightsail_instance.L10.public_ip_address
}
output "my-username" {
  value = aws_lightsail_instance.L10.username
}