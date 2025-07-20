name                = "spacelift-ec2"
region              = "us-east-1"
ami_id              = "ami-0150ccaf51ab55a51"  # Replace with your region's valid AMI
instance_type       = "t2.micro"
#subnet_id           = "subnet-0123456789abcdef0"
#vpc_id              = "vpc-0123456789abcdef0"
key_name            = "spacelift"
associate_public_ip = true

tags = {
  Environment = "dev"
  Owner       = "eswar"
  Project     = "ec2-deployment"
}
