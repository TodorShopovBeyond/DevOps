resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Project VPC"
  }
}
resource "aws_instance" "task" {
  ami                    = "ami-070a29ffb5198fd2c"
  instance_type          = "t2.micro"
  availability_zone      = "us-west-1a"
  key_name               = "wordpress"
  vpc_security_group_ids = ["sg-04be9d64cc9c06b08"]
  tags = {
    Name = "Wordpress-insance"
  }
}