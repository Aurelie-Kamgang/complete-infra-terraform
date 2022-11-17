provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/home/ubuntu/infra-debutant/app/aws_credentials"
}

terraform {
  backend "s3" {
    bucket                  = "terraform-backend-aurelie"
    key                     = "aurelie.tfstate"
    region                  = "us-east-1"
    shared_credentials_file = "/home/ubuntu/infra-debutant/app/aws_credentials"
  }
}

# creation of security groupe
module "sg" {
  source = "../module/security_groupe"
}

# creation of volume
module "ebs" {
  source   = "../module/ebs"
  size_ebs = 5
}

# creation of elastic ip
module "eip" {
  source = "../module/elastic_ip"
}

#creation of ec2 instance
module "ec2" {
  source       = "../module/ec2"
  instancetype = "t2.micro"
  aws_common_tag = {
    Name = "ec2-app-aurelie"
  }
  sg_name = module.sg.output_sg_name
}

# creation of necessary association
resource "aws_eip_association" "eip_assoc" {
  instance_id   = module.ec2.output_ec2_id
  allocation_id = module.eip.output_eip_id
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = module.ebs.output_id_volume
  instance_id = module.ec2.output_ec2_id
}
