resource "aws_instance" "public_instance" {
  ami           = "ami-0bb84b8ffd87024d8"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = data.aws_key_pair.key.key_name
}

#resource "aws_instance" "mywebserver" {
# ami                                  = "ami-0bb84b8ffd87024d8"
#  instance_type                        = "t2.micro"
#  key_name                             = data.aws_key_pair.key.key_name
#  subnet_id                            = aws_subnet.public_subnet.id
#  vpc_security_group_ids               = [
#      aws_security_group.sg_public_instance.id
#   ]
#}
