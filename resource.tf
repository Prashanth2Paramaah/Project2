resource "aws_instance" "project-test" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  key_name      = "prashanth-key1"

  tags = {
    Name = "Project-test"
  }
}
output "instance-public-ip" {
  value = aws_instance.project-test.public_ip
}
