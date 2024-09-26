variable "vpc_cidr" {
  default = "10.2.0.0/16"
}
variable "common_tags" {
  default = {
    Project = "roboshop"
    Environment = "prod"
    Terraform = "true"
  }
}

variable "vpc_tags" {
  default = {}
}

variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "prod"
}

variable "public_subnets_cidr" {
  default = ["10.2.3.0/24", "10.2.4.0/24"]
}

variable "private_subnets_cidr" {
  default = ["10.2.5.0/24", "10.2.6.0/24"]
}

variable "database_subnets_cidr" {
  default = ["10.2.7.0/24", "10.2.8.0/24"]
}

variable "is_peering_required" {
  default = true
}
