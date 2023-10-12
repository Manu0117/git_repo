variable "Region" {
  default = "us-east-1"

}

variable "Zone1" {
  default = "us-east-1a"
}

variable "ami" {
  type = map
  default = {
    us-east-1  = "ami-00c39f71452c08778"
    us-east-1a = "ami-02f97949d306b597a"
  }
}
variable USER {
    default = "ec2-user"
  
}