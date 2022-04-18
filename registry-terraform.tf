provider "aws" {
  region     = "us-west-2"
}

module "ec2_cluster" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "my-cluster"
  instance_count = 2
  /*
  ami                    = "ami-0d6621c01e8c2de2c"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-4dbfb206"
*/
  ami           = "ami-0892d3c7ee96c0bf7"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0aab07190e12049d5"
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
