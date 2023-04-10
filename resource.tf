resource "aws_instance" "project-test" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"

  tags = {
    Name = "Project-test"
  }
}
output "instance-public-ip" {
  value = aws_instance.project-test.public_ip
}
