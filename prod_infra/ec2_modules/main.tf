terraform{
	required_version=">0.12"
}

resource "aws_instance" "web_server"{
	ami=var.ami
	instance_type=var.instance_type
	tags={
		Name="S1"
	}
}
