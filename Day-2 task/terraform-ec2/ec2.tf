resource "aws_instance" "terraform" {
    ami = "ami-0532be01f26a3de55"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow-all.id]

    tags = {
        Name = "Terraform-ec2"
        Terraform = "true"
    }
}

resource "aws_security_group" "allow-all" {
    name = "allow-all"

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow-all"
    }
}