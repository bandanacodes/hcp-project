provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0a232144cf20a27a5"
instance_type = "t2.medium"
key_name = "keybandana"
vpc_security_group_ids = ["sg-05170795575d8e334"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat1", "tomcat2", "monitoring server"]
}
