resource "aws_instance" "netspi_ec2" {
  ami           = "ami-0ad21ae1d0696ad58"  # ubuntu
  instance_type = "t3.micro"  # Changed from t2.micro to t3.micro
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.allow_ssh_efs.id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y amazon-efs-utils
              mkdir -p /data/test
              mount -t efs ${aws_efs_file_system.netspi_efs.id}:/ /data/test
              echo '${aws_efs_file_system.netspi_efs.id}:/ /data/test efs defaults,_netdev 0 0' >> /etc/fstab
              EOF

  iam_instance_profile = aws_iam_instance_profile.ec2_s3_profile.name

  tags = {
    Name = "NetSPI-EC2"
  }
}