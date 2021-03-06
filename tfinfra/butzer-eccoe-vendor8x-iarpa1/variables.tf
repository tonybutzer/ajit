variable "region" {
  description = "The AWS region."
  default = "us-west-2"
}

variable "ship_instance_type" {
  description = "ships - The instance type."
  # default = "c5.9xlarge"
  default = "m5.8xlarge"
}

variable "subnet_id" {
  description = "The AWS network id representing the allowed vpc"
  # internal-Subnet-B
  default = "subnet-08f1118dd59133513"
}

variable "ship_userdata" {
  description = "user data os startup scripts"
  default = ["ship0.sh", "ship1.sh"]
}

variable "ship_name" {
  description = "ship names - DUH!"
  default = ["butzer-eccoe-vendor8x-iarpa", "butzer-eccoe-vextra"]
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
  default = "sg-0e93e5d235f5464d8"
}

variable "security_group_web" {
  description = "The AWS security group id"
  default = "sg-0e58a7891ac0d4ef4"
}

variable "iam_role" {
  description = "The AWS iam role"
  default = "eccoe-developer-ec2-role"
}

