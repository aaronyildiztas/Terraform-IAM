resource "aws_instance" "web" {
  ami                         = "ami-047a51fa27710816e"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name = "${aws_key_pair.developer.key_name}"
  tags = {
    Name = "class2"
  }
}
