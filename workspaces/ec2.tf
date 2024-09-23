resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0bb5c6e23141d9743"]
    instance_type = lookup(var.instance, terraform.workspace)
    tags = {
        Name = "terraform-${terraform.workspace}"
    }
}