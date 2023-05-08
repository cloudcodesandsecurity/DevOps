provider "aws" {
  region = "us-east-2"
  #   access_key = ""   No need, becos we are using AWS CLI to prevent us from exposing it in public Repos
  #   secret_key = ""	
}

resource "aws_instance" "intro" {
  ami                    = "ami-03657b56516ab7912"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "dove-key"                   # created manually here
  vpc_security_group_ids = ["sg-0780815f55104be8a"]     # created manually here
  tags = {
    Name    = "Dove-Instance"     
    Project = "Dove"
  }
}
