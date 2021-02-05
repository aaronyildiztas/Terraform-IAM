resource "aws_instance" "web" {
  ami           = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
  count = 1

  tags = {
    Name = "class2"
  }
}
