resource "aws_lightsail_instance" "serverw6" {
  name              = "server-dev-w6"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  user_data         = file("setup.sh")
  key_pair_name     = "week2key"
  bundle_id         = "nano_3_0"
 
  tags = {
    env  = "dev"
    team = "devops"
  }
}