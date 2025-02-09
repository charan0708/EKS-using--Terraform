variable "cidr" {
  description = "cidr of vpc"
  type = string
  default = "10.0.0.0/16"
}

variable "kubernetes_version" {
  default     = 1.27
  description = "kubernetes version"
}

variable "aws_region" {
  default = "eu-west-1"
  description = "aws region"
}