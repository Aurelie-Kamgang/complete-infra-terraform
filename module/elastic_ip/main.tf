resource "aws_eip" "lb" {
  vpc      = true
  provisioner "local-exec" {
    command = "echo PUBLIC IP: ${aws_eip.lb.public_ip}  >> ip_ec2.txt"
  }
}
