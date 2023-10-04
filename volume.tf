#Create an EBS volume
resource "aws_ebs_volume" "ec2-demo" {
  availability_zone = "us-east-1a"
  size              = 25 # Change to your desired volume size (in GiB)
  tags = {
    Name = "plunk-volume"
  }
}

# Attach the EBS volume to the EC2 instance
resource "aws_volume_attachment" "example_attachment" {
  device_name = "/dev/sdf" # Change to your desired device name (e.g., /dev/sdf)
  volume_id   = "${aws_ebs_volume.ec2-demo.id}"
  instance_id = "${aws_instance.ec2-demo.id}"
}