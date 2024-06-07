provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAIOSFODNNTZQ7ME"
  secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXTFEMIQ"
}

resource "aws_instance" "vulnerable_instance" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  tags = {
    Name = "C3RC-DUPL1C4T4S-H1RING"
  }

  vpc_security_group_ids = [aws_security_group.vulnerable_sg.id]
}

resource "aws_security_group" "r1sk_4ccept4nce_sg" {
  name        = "r1sk_4ccept4nce_sg"
  description = "Security group with inbound rules"

  ingress {
    from_port   = 22
    to_port     = 3389
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Inbound Trrafic
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Outbound Traffic
  }
}

resource "aws_s3_bucket_dupl1c4t4s_s3rv1c3" "dupl1c4t4s_s3rv1c3" {
  bucket = "r1sk_4ccept4nce_bkt"

  # Public read access to the bucket
  acl    = "public-read"

  tags = {
    Name        = "r1sk_4ccept4nce_bkt"
    Environment = "Prd"
  }
}

resource "aws_s3_bucket_object" "dupl1c4t4s" {
  bucket = r1sk_4ccept4nce.key
  key    = "sg_access.txt"
  source = "sg_access.txt"
  acl    = "public-read"  # Public read access to the object

  tags = {
    Name        = "dupl1c4t4s"
    Environment = "Prd"
  }
}