terraform{
	required_providers{
		aws = {
			source = "hashicorp/aws"
			version = "~> 4.59.0"
		}
	}
}

provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "web" {
	count = 2
	ami = var.ami
	instance_type = var.instance_type 
	tags = {
		Name = "terraformserver_ ${count.index}"
	}
}
