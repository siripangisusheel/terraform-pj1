# creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami = "ami-0fa49cc9dc8d62c84"
  instance_type = "t2.micro"
  key_name = "tests"
  vpc_security_group_ids = ["${aws_security_group.demosg.id}"]
  subnet_id = "${aws_subnet.public-subnet-1.id}"
  associate_public_ip_address = true
  user_data = "${file("data.sh")}"
  tags = {
   Name = "My Public Instance"
}
}
# creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "demoinstance1" {
  ami = "ami-0fa49cc9dc8d62c84"
  instance_type = "t2.micro"
  key_name = "tests"
  vpc_security_group_ids = ["${aws_security_group.demosg.id}"]
  subnet_id = "${aws_subnet.public-subnet-2.id}"
  associate_public_ip_address = true
  user_data = "${file("data.sh")}"
  tags = {
    Name = "My Public Instance 1"
}
}
