#VARIABLES
variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}
variable "aws"{
    type = list(string)
    default = ["us-east-2a","us-east-2b","us-east-2c"]
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_cidrs" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}