resource "aws_lightsail_instance" "L10" {
  name              = "My_server"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  user_data         = file("setup.sh")
  key_pair_name     = "week2key"
  bundle_id         = "nano_3_0"
  tags = {
    env  = "dev"
    team = "devops"
  }
}