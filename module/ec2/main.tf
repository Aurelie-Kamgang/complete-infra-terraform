data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
}

resource "aws_instance" "myec2" {
  ami             = data.aws_ami.app_ami.id
  instance_type   = var.instancetype
  key_name        = var.key_ssh
  availability_zone = var.AZ
  tags            = var.aws_common_tag
  security_groups = ["${var.sg_name}"]

  provisioner "remote-exec" {
     inline = [
      "sudo apt update -y",
      "sudo apt install -y nginx",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx"
     ]

   connection {
     type = "ssh"
     user = var.user
     private_key = file("./devops-aurelie.pem")
     host = self.public_ip
   }
   }
  root_block_device {
    delete_on_termination = true
  }

}

