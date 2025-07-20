resource "aws_security_group" "ec2_sg" {
  name        = "${var.name}-sg"
  description = "Security group for EC2 instance"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all egress"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}

resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = var.associate_public_ip

  key_name = var.key_name

  tags = merge(var.tags, {
    Name = var.name
  })
}
