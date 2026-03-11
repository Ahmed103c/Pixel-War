# Key Pair
resource "aws_key_pair" "pixelwar" {
  key_name   = "pixelwar-key"
  public_key = file("/home/legen/.ssh/pixelwar.pub")
}

# EC2 Master
resource "aws_instance" "master" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.k3s.id]
  key_name               = aws_key_pair.pixelwar.key_name

  tags = {
    Name = "pixelwar-master"
  }
}

# EC2 Worker
resource "aws_instance" "worker" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.k3s.id]
  key_name               = aws_key_pair.pixelwar.key_name

  tags = {
    Name = "pixelwar-worker"
  }
}

# Elastic IP pour le Master
resource "aws_eip" "master" {
  instance = aws_instance.master.id
  domain   = "vpc"
}