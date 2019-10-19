resource "aws_instance" "linuxUbuntu18-server" {
  ami           = "ami-02df9ea15c1778c9c"
  instance_type = "t2.micro"
  key_name = "my_serverkey"
  security_groups = ["${aws_security_group.allowsshhttp.name}"]
#    vpc_security_group_ids=["sg-021f82b2470b4c378"]
# subnet_id="subnet-06c2d7109fc431483"

}