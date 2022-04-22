variable "region" {
  description = "The AWS region."
  default = "us-west-2"
}

variable "ship_instance_type" {
  description = "ships - The instance type."
  # default = "c5.9xlarge"
  default = "t3.large"
}


variable "subnet_id" {
  description = "The AWS network id representing the allowed vpc"
  # internal-Subnet-B
  default = "subnet-0dd447dd1e3e8f355"
}

variable "ship_userdata" {
  description = "user data os startup scripts"
  default = ["ship0.sh", "ship1.sh"]
}

variable "ship_name" {
  description = "ship names - DUH!"
  default = ["butzer-mahesh-dev-prototype", "butzer-sship-1"]
}

variable "key_name" {
  description = "The AWS key pair to use for resources."
  #default = "butzer-ws-keypair3"
  #default = "butzer@IGSKMNCNLT01529"
  default = "butzer-keypair-eccoe-1"
}

variable "ami" {
  description = "AMI"
  default = "ami-00be885d550dcee43"
}

variable "security_group_ssh" {
  description = "The AWS security group id"
  # default = "SG-LSDS-SSH-Server"
  default = ["sg-0e93e5d235f5464d8", "sg-0e58a7891ac0d4ef4"]
}

variable "iam_role" {
  description = "The AWS iam role"
  default = "eccoe-developer-ec2-role"
}

