resource "aws_security_group" "sg" {
    vpc_id = module.vpc.vpc_id
    ingress {

        description = "allow inbound traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "outbound traffic from anywhere"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}