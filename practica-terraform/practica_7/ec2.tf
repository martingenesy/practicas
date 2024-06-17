variable "instancias" {
  description = "nombres de las instancias"
  type        = list(string)
  default     = ["apache", "mysql", "jumpserver"]
}





resource "aws_instance" "public_instance" {
  count         = length(var.instancias)
  ami           = "ami-0bb84b8ffd87024d8"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = data.aws_key_pair.key.key_name

  tags = {
    "name" = var.instancias[count.index]
  }
    
      
}
