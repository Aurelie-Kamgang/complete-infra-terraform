resource "aws_ebs_volume" "myebs" {
  availability_zone = var.AZ
  size              = var.size_ebs
}
