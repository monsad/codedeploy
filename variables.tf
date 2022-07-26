variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable instance_type {
  description = "EC2 instance type that will be launched"
  default     = "t2.micro"
}

variable ami_type {
  description = "AMI for codedeploy instance"
  default     = "ami-0a6490e32fd6f2303"
}


variable "public_key_path" {
  description = "Path to a public ssh key"
  default     = "~/.ssh/code-deploy-ms.pub"
}

variable "private_key_path" {
  description = "Path to a private ssh key"
  default     = "~/.ssh/code-deploy-ms"
}
