output "s3_bucket_id" {
  value = aws_s3_bucket.netspi_bucket.id
}

output "efs_volume_id" {
  value = aws_efs_file_system.netspi_efs.id
}

output "ec2_instance_id" {
  value = aws_instance.netspi_ec2.id
}

output "security_group_id" {
  value = aws_security_group.allow_ssh_efs.id
}

output "subnet_id" {
  value = aws_subnet.public.id
}