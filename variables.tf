variable "ami" {
   type        = string
   description = "Ubuntu AMI ID in Orgeon Region"
   default     = "ami-0604d81f2fd264c7b"
}

variable "instance_type" {
   type        = string
   description = "Instance type"
   default     = "t2.micro"
}

variable "name_tag" {
   type        = string
   description = "Name of the EC2 instance"
   default     = "My EC2 Instance"
}

