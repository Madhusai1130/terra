resource "aws_instance" "server" {
  count = 4 # create four similar EC2 instances

  ami           = "ami-01bc990364452ab3e"
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${count.index}"
  }
}
