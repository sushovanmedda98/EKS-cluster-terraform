resource "aws_instance" "my-ec2" {
    ami = "ami-04a81a99f5ec58529"
    instance_type = var.instance_type
    subnet_id = aws_subnet.my-subnet.id
    vpc_security_group_ids = [aws_security_group.sg.id]
    key_name = "bitun1"
    associate_public_ip_address = true
    availability_zone = var.avail_zone
    user_data = file("script.sh")
    tags = {
        Name = "${var.env_prefix}-server"
    }
}


