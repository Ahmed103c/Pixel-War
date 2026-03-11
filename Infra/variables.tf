variable "aws_region" {
  default = "eu-west-3"  # Paris
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  description = "Ubuntu 24.04 LTS - eu-west-3"
  default     = "ami-045a8ab02aadf4f88"
}