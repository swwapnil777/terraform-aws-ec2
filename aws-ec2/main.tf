

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.60.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region

}

resource "aws_instance" "my-server" {

  ami           = "ami-068e0f1a600cd311c"
  instance_type = "t2.micro"
  tags = {
    Name = "my server"
  }




}
