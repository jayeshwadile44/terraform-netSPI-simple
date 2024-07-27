resource "aws_eip_association" "netspi_eip_assoc" {
  instance_id   = aws_instance.netspi_ec2.id
  allocation_id = data.aws_eip.netspi_eip.id
}