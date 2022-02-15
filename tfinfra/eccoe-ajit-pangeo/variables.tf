variable "region" {
  description = "The AWS region."
  default = "us-west-2"
}

variable "ship_instance_type" {
  description = "ships - The instance type."
  # default = "c5.9xlarge"
  default = "t2.small"
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
  default = ["butzer-eccoe-ajit-pangeo", "butzer-sship-1"]
}

variable "key_name" {
  description = "The AWS key pair to use for resources."
  #default = "butzer-ws-keypair3"
  #default = "butzer@IGSKMNCNLT01529"
  #default = "ajit-keypair1"
  default = "butzer-keypair-eccoe-1"
}

variable "ami" {
  description = "AMI"
  default = "ami-00be885d550dcee43"
}

variable "security_group_ssh" {
  description = "The AWS security group id"
  # default = "SG-LSDS-SSH-Server"
  default = "sg-0909310695cde5d54"
}

variable "iam_role" {
  description = "The AWS iam role"
  default = "adfs-eccoe-developer"
}

