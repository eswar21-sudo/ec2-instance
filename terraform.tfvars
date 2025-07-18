name                = "my-ec2-instance"
ami_id              = "ami-0abcd1234efgh5678"  # Replace with your region's valid AMI
instance_type       = "t3.micro"
subnet_id           = "subnet-0123456789abcdef0"
vpc_id              = "vpc-0123456789abcdef0"
key_name            = "my-ssh-key"
associate_public_ip = true

tags = {
  Environment = "dev"
  Owner       = "eswar"
  Project     = "ec2-deployment"
}
