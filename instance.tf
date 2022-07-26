resource "aws_instance" "ec2_codedeploy" {
  ami                  = var.ami_type
  instance_type        = var.instance_type
  key_name             = aws_key_pair.codedeploy_key.key_name


  provisioner "remote-exec" {
    script = "./install_codedeploy_agent.sh"

    connection {

      host        = self.public_ip
      agent       = false
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path)
    }
  }
}
