resource "aws_security_group" "this" {
  name        = "main-security-group"
  description = "Main security group for EC2 instance"

    ingress {
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 1337
        to_port     = 1337
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 3035
        to_port     = 3035
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 3035
        to_port     = 3035
        protocol    = "udp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
