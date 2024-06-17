resource "aws_s3_bucket" "proveedores" {
  count = 6
  bucket = "bucket-${random_string.sufijo[count.index].id}"
 tags = {
    owner        = "martin"
    Environment = "Dev"
    ofdice = "proveedores"
  }
}
  


  resource "random_string" "sufijo" {
  count = 6
  length  = 8
  special = false
  upper   = false
  numeric = false
}
