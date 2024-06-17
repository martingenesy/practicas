variable "virginia_cidr" {
  description = "CDIR virginia"
  type        = string
}

variable "public_subnet" {
  description = "CDIR public subnet"
  type        = string

}

variable "private_subnet" {
  description = "CDIR private subnet"
  type        = string

}

#variable "subnets" {
#description= "lista de subnet"
#type = list(string) 

#}

variable "sg_ingress_cidr" {
  description = "cdir for ingress traffic"
  type        = string


}