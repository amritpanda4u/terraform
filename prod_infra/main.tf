provider "aws"{
	region="us-east-1"
	access_key=var.access_key
	secret_key=var.secret_key
}

module "vpc_modules" {
  source = ".//vpc_modules"
}
module "ec2_modules"{
	source=".//ec2_modules"
}

