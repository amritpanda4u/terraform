terraform{
	required_version=">0.12"
}

resource "aws_instance" "web_server"{
	ami=var.ami
	instance_type=var.instance_type
	vpc_security_group_ids = [aws_security_group.SG1.id]
	tags={
		Name="Server-1"
	}
}

resource "aws_security_group" "SG1" {
	name = "WebServer-Security-Group"

	ingress {
	  cidr_blocks = [ "0.0.0.0/0" ]
	  description = "Port for http"
	  from_port = 80
	  protocol = "TCP"
	  to_port = 80
	} 
	
	ingress {
		cidr_blocks = [ "0.0.0.0/0" ]
	  description = "Port for SSH"
	  from_port = 22
	  protocol = "TCP"
	  to_port = 22
	}

	
}
