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
	ami = "ami-0557a15b87f6559cf"
	instance_type = "t2.micro"
	tags = {
		Name = "terraformserver_ ${count.index}"
	}
}
