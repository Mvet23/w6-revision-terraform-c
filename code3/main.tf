resource "aws_lightsail_instance" "L11" {
  name              = "Dev_server2"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_20_04"
  user_data         = file("setup.sh")
  key_pair_name     = "week2key"
  bundle_id         = "medium_1_0"
  tags = {
    env  = "dev"
    team = "devops"
  }
}