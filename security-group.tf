resource "aws_security_group" "allowsshhttp" {
  name        = "allowsshhttp"
  description = "Allow sshhttp and http traffic"


  ingress {

    from_port   = 22 #  By default, the windows server listens on TCP port 22 for RDP
    to_port     = 22
    protocol =   "tcp"

    cidr_blocks =  ["0.0.0.0/0"]
  }
  ingress {

    from_port   = 80 #  By default, the windows server listens on TCP port 22 for RDP
    to_port     = 80
    protocol =   "tcp"

    cidr_blocks =  ["0.0.0.0/0"]
  }
 
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
   
  }
}