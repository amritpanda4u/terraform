variable "ami"{
	default="ami-0557a15b87f6559cf"
}

variable "instance_type"{
	default="t2.micro"
}

variable "instance_details"{
type = map
default={
	"ami"="ami-0557a15b87f6559cf"
	"instance_type"="t2.micro"
	}
}
