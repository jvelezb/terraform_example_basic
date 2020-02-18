provider "aws" {
    region = "eu-west-1"
}

module "vpc" {
  source = "./modules/vpc"
  name   = "${var.name}"
}

resource "aws_instance" "server" {
  ami                    = "${var.ami_id}"
  instance_type          = "t2.small"
  subnet_id              = "${module.vpc.subnet_1b}"
  vpc_security_group_ids = ["${module.vpc.security_group_id}"]

  tags = {
    Name = "${var.name}"
  }
}

output "instance_id" {
  value = "${aws_instance.server.id}"
}

output "instance_ip" {
  value = "${aws_instance.server.private_ip}"
}