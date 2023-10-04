output "public-ip" {
    value = aws_instance.ec2-demo.public_ip
}
output "vpc-id" {
       value = aws_vpc.splunk-vpc.id
}
       

output "public-subnet-ids"  {
   value = [aws_subnet.public_subnet2.id, aws_subnet.public_subnet1.id]
}

