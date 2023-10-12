variable "region" {
  default = "us-east-1"

}

variable "zone1" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1  = "ami-00c39f71452c08778"
    us-east-1a = "ami-02f97949d306b597a"
  }
}