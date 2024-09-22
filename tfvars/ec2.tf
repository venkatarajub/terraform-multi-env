resource "aws_instance" "expense" {
    for_each = var.instances
    ami = var.ami_id
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    tags = merge(
        var.common_tags,
        var.tags,
        {
            Name = each.key
        }
    )
    
}



resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh-${var.environment}"
    description = "allow ssh on port no 22"
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags =  {
        Name = "allow_ssh-${var.environment}"
    }
}