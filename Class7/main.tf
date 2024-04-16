provider aws {
  region = "us-east-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0900fe555666598a2"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "mkdir kaizen && touch hello"
  }
}