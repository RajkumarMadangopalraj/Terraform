resource "aws_instance" "web" {
  ami           = "ami-0e5b6b6a9f3db6db8"
  instance_type = "t3.micro"

  tags = {
    Name = "Webserver"
  }
}   