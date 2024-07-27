data "aws_eip" "netspi_eip" { #we will call this eip from manual entry, add tag as project:NetSPI_EIP
  tags = {
    Project = "NetSPI_EIP"
  }
}