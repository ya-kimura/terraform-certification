resource "aws_instance" "dev" {
  count         = 3
  ami           = "ami-026c8acd92718196b"
  instance_type = "t2.micro"
  tags = {
    Name = "dev${count.index}"
  }
}