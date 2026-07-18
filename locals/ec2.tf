resource "aws_instance" "terraform" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = locals.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]

    tags = merge (
        var.common_tags,
        {
            Name = "${local.common_name}-local-demo"
        }
    )
}

resource "aws_security_group" "allow_all"{
    name = "allow-all"

    egress {
        from_port        = 0    # from port 0 to, to port 0 means all ports
        to_port          = 0
        protocol         = "-1" # -1 means from all protocols
        cidr_blocks      = ["0.0.0.0/0"]    # internet
    }

    ingress {
        from_port        = 0    # from port 0 to, to port 0 means all ports
        to_port          = 0
        protocol         = "-1" # -1 means from all protocols
        cidr_blocks      = ["0.0.0.0/0"]    # internet
    }

    tags = merge(
      var.common_tags,
      {
        Name = "${local.common_name}-allow-all"
        Purpose = "locals"
      }
    )
}