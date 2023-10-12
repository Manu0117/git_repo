resource "aws_key_pair" "new117" {
key_name = "new117"
public_key = file("new117.pub")

  }

resource "aws_instance" "nic" {
ami = var.ami[var.Region]
instance_type = "t2.micro"
availability_zone = var.Zone1  
key_name = aws_key_pair.new117.key_name
tags = {
    Name = "doveinstance"

}
  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {

    inline = [
      "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }
connection {
  user = var.USER
  private_key = file("new117")
  host = self.public_ip
}
}
