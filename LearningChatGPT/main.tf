provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-06b21ccaeff8cd686" # A common Amazon Linux AMI
  instance_type = "t2.micro"  # Free-tier eligible instance type
 tags = {
    Name = "MyServerName"  # Replace "MyServerName" with the desired name for your instance
  }

}

