# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  profile = "personal-admin"
  region  = "ap-southeast-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "udacity_t2_1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  # This can be moved to variable instead
  subnet_id = "subnet-be2797f7"

  tags = {
    Name = "Udacity T2"
  }
}

resource "aws_instance" "udacity_t2_2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  # This can be moved to variable instead
  subnet_id = "subnet-be2797f7"

  tags = {
    Name = "Udacity T2"
  }
}

resource "aws_instance" "udacity_t2_3" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  # This can be moved to variable instead
  subnet_id = "subnet-a18002c6"

  tags = {
    Name = "Udacity T2"
  }
}

resource "aws_instance" "udacity_t2_4" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  # This can be moved to variable instead
  subnet_id = "subnet-2ce1b86a"

  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# NOTE: These are commented when the project ask to remove the 2 M4 instances
# resource "aws_instance" "udacity_m4_1" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "m4.large"

#   # This can be moved to variable instead
#   subnet_id = "subnet-a18002c6"

#   tags = {
#     Name = "Udacity M4"
#   }
# }

# resource "aws_instance" "udacity_m4_2" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "m4.large"

#   # This can be moved to variable instead
#   subnet_id = "subnet-2ce1b86a"

#   tags = {
#     Name = "Udacity M4"
#   }
# }
