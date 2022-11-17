variable instancetype {
  type        = string
  description = "set aws instance type"
  default     = "t2.nano"
}

variable aws_common_tag {
  type        = map
  description = "Set aws tag"
  default = {
    Name = "ec2-aurelie"
  }
}

variable "AZ" {
  type    = string
  default = "us-east-1b"
}

variable "user" {
  type    = string
  default = "ubuntu"
}

variable "key_ssh" {
  type    = string
  default = "devops-aurelie"
}

variable sg_name {
  type        = string
  description = "set sg name "
  default     = "aurelie-sg"
}
